
# finding new content translation articles
SELECT page_id, page_title, page_namespace, revision.* 
FROM revision, page 
WHERE rev_page = page_id AND rev_user = 1 AND (page_title="Test-Amir" OR page_title = "Test");

SELECT page_id, page_namespace, page_title, max(ct_rev_id), ct_params, rev_user 
FROM change_tag, revision, page
WHERE ct_tag = 'contenttranslation', rev_id = ct_rev_id, rev_page = page_id
GROUP BY page_id

SELECT page_id, page_namespace, page_title, rev_user, min(rc_timestamp) 
FROM revision, page, recentchanges
WHERE rev_page = page_id AND page_id = rc_cur_id AND rc_namespace = 0
GROUP BY page_id

SELECT page_id, page_namespace, page_title, min(rc_timestamp) 
FROM revision, page, recentchanges
WHERE rev_page = page_id AND page_id = rc_cur_id AND rc_namespace = 0
Group BY page_id

# Using Wikidata database (ha) to make coocurence calculations
USE wikidatawiki_p;
SELECT * FROM wb_terms #as lang1
#LEFT JOIN langlinks as lang2
#ON lang1.ll_from = lang2.ll_from
#WHERE lang1.ll_lang != lang2.ll_lang
WHERE term_entity_id = 42
AND term_entity_type = "item"
AND term_type = "label"
Order BY term_entity_id
#LIMIT 100
;

USE wikidatawiki_p;
SELECT * FROM wb_items_per_site 
#WHERE lang1.ll_lang != lang2.ll_lang
WHERE ips_item_id = 42
AND ips_site_id LIKE '%wiki'
LIMIT 100
;

USE wikidatawiki_p;
SELECT * FROM wb_items_per_site as lang1
LEFT JOIN wb_items_per_site as lang2
ON lang1.ips_item_id = lang2.ips_item_id
WHERE lang1.ips_item_id = 42
AND lang1.ips_site_id < lang2.ips_site_id
AND lang1.ips_site_id LIKE '%wiki'
LIMIT 100
;

USE wikidatawiki_p;
SELECT A.ips_site_id AS lang1, B.ips_site_id AS lang2, COUNT(*) as count FROM
(SELECT ips_site_id, ips_item_id FROM wb_items_per_site WHERE ips_site_id like '%wiki') as A
INNER JOIN
(SELECT ips_site_id, ips_item_id FROM wb_items_per_site WHERE ips_site_id like '%wiki') as B
ON A.ips_item_id = B.ips_item_id
WHERE A.ips_site_id < B.ips_site_id
GROUP BY A.ips_site_id, B.ips_site_id;
;

# I don't remember what this is
SELECT count(DISTINCT(page_id))
FROM enwiki_p.page as p INNER JOIN enwiki_p.revision as r
ON p.page_latest = r.rev_id
WHERE r.rev_deleted = 0
AND p.page_namespace = 0
AND p.page_is_redirect = 0
;

# The basic code for counting coocurances with the tables for every langauge
SELECT COUNT(DISTINCT(page_id))
FROM hewiki_p.pagelinks
INNER JOIN hewiki_p.page ON pl_from = page_id
WHERE page_namespace = 0
AND page_is_redirect = 0;

USE cewiki_p;
SELECT ll_lang, COUNT(*) as total FROM langlinks LEFT JOIN page 
ON page_id = ll_from 
WHERE page_namespace = 0
GROUP BY ll_lang;

USE hewiki_p;
SELECT COUNT(*) FROM langlinks LEFT JOIN page 
ON page_id = ll_from 
WHERE ll_lang = "en"
AND ll_title != ""
#AND page_namespace = 0;

# filtering for the edit summaries to find specifc comments
USE hewiki_p;
SELECT rev_id, rev_page, page_title,rev_comment, rev_user, rev_user_text, rev_timestamp,rev_parent_id FROM revision
JOIN page
ON page_id = rev_page
WHERE page_namespace = 0
AND rev_comment like "%אנגלי%"
#WHERE rev_page = "248"
#GROUP BY rev_page
ORDER BY page_id ASC
#LIMIT 100
;

# First draft to finding the correct revisions
SELECT page_id, page_title, rev_page, rev_id , rev_timestamp, rev_user_text, ll_title
FROM
(SELECT ll_from, ll_title FROM hewiki_p.langlinks
    WHERE ll_lang ='en'
    AND ll_title != "") as helinks
INNER JOIN
(SELECT * From hewiki_p.page 
    WHERE page_namespace = 0
    AND page_len > 1000
    AND page_is_redirect = 0) as page
ON ll_from = page.page_id
Inner Join
(Select rev_page, rev_id , rev_timestamp, rev_user_text From hewiki_p.revision
    WHERE rev_minor_edit = 0
    AND rev_deleted = 0
    AND rev_user NOT LIKE '%Bot'
    AND rev_parent_id = 0
    ) as revision
ON page_id = rev_page
#ORDER BY page_len ASC
LIMIT 100;

# Hebrew-Engslih pages dictionary
SELECT hebrew_id, hebrew_title, en.page_id as english_id, english_title
FROM 
    (SELECT ll_from as hebrew_id, page_title as hebrew_title, REPLACE(ll_title, ' ','_') as english_title
     FROM hewiki_p.langlinks 
     LEFT JOIN hewiki_p.page
     ON page_id = ll_from
     WHERE page_namespace = 0
     AND ll_lang = "en" 
     AND page_is_redirect = 0) as he
    LEFT JOIN enwiki_p.page as en
    ON he.english_title = en.page_title
    WHERE en.page_namespace = 0
;







