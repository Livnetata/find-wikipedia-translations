SELECT page, rev6.rev_id AS rev_id, user_text, time, start_time, max_time, time-start_time AS diff 
FROM
  (SELECT rev3.rev_page AS page, rev4.rev_user_text AS user_text, MAX(rev4.rev_timestamp) AS time, max_time, start_time 
    FROM 
      (SELECT rev1.rev_page AS rev_page, rev1.rev_user_text AS rev_user_text, rev2.rev_user_text AS start_user, MIN(rev1.rev_timestamp) AS max_time, rev2.start_time AS start_time
        FROM 
          (SELECT rev_page, rev_user_text, rev_timestamp FROM hewiki_p.revision
            WHERE rev_deleted = 0
          ) AS rev1
        INNER JOIN 
          (SELECT rev_page, rev_user_text, rev_timestamp AS start_time FROM hewiki_p.revision
            WHERE rev_deleted = 0
            AND LCASE(rev_user) NOT LIKE '%bot%'
            AND rev_parent_id = 0
            #AND rev_page > 56731
            #LIMIT 100
          ) AS rev2
        ON rev1.rev_page = rev2.rev_page
        AND rev1.rev_user_text != rev2.rev_user_text
        #WHERE rev1.rev_deleted = 0
        # AND LCASE(rev1.rev_user) NOT LIKE '%bot%'
        GROUP BY rev1.rev_page
      ) AS rev3
    INNER JOIN 
      (SELECT rev_page, rev_user_text, rev_timestamp FROM hewiki_p.revision) AS rev4
    ON rev3.rev_page = rev4.rev_page
    AND rev3.max_time > rev4.rev_timestamp
    AND rev3.start_user = rev4.rev_user_text
    GROUP BY rev4.rev_page
  ) AS rev5
INNER JOIN 
  (SELECT rev_page, rev_id, rev_timestamp FROM hewiki_p.revision) AS rev6
ON page = rev6.rev_page
AND time = rev6.rev_timestamp
;