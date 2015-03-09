SELECT hepage_id, hepage_title, herev_id, he_timestamp, enpage_id, enpage_title, revision2.rev_id AS enrev_id, max_en_timestamp AS en_timestamp 
FROM
  (SELECT hepage_id, hepage_title, herev_id, he_timestamp, enpage_id, enpage_title, MAX(enrev_timestamp) AS max_en_timestamp 
    FROM
      (SELECT page_id AS hepage_id, page_title AS hepage_title, rev_id AS herev_id, rev_timestamp AS he_timestamp, ll_title
        FROM
          (SELECT ll_from, REPLACE(ll_title, ' ','_') AS ll_title FROM hewiki_p.langlinks
            WHERE ll_lang ='en'
            AND ll_title != ""
          ) AS helang
        INNER JOIN
          (SELECT page_id, page_title FROM hewiki_p.page 
            WHERE page_namespace = 0
            AND page_len > 1000
            AND page_is_redirect = 0
          ) AS hepage
        ON ll_from = page_id
        INNER JOIN
          (SELECT rev_page, rev_id, rev_timestamp FROM hewiki_p.revision
            WHERE rev_minor_edit = 0
            AND rev_deleted = 0
    		    AND LCASE(rev_user) NOT LIKE '%bot%'
            AND rev_parent_id = 0
          ) AS herevision
        ON page_id = rev_page
      ) AS he_articles
    INNER JOIN
      (SELECT page_id AS enpage_id, page_title AS enpage_title, rev_timestamp AS enrev_timestamp 
        FROM enwiki_p.page
        INNER JOIN enwiki_p.revision
        ON page_id = rev_page
        WHERE page_namespace = 0
        AND rev_deleted = 0
      ) AS en_articles
    ON ll_title = enpage_title
    AND he_timestamp > enrev_timestamp
    GROUP BY enpage_id
  ) AS filtered
INNER JOIN enwiki_p.revision AS revision2
ON filtered.enpage_id = revision2.rev_page
AND filtered.max_en_timestamp = revision2.rev_timestamp
;