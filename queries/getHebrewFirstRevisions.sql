SELECT rev_page, page_title,rev_comment, rev_user, rev_user_text FROM hewiki_p.revision
JOIN hewiki_p.page
ON page_id = rev_page
WHERE page_namespace = 0
AND page_is_redirect = 0
AND rev_deleted = 0
AND rev_parent_id = 0
ORDER BY page_id ASC
;