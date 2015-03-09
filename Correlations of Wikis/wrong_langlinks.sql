(SELECT DISTINCT 'enwiki' as source, page_id, page_title, ll_lang, ll_title FROM enwiki_p.langlinks LEFT JOIN enwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'svwiki' as source, page_id, page_title, ll_lang, ll_title FROM svwiki_p.langlinks LEFT JOIN svwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nlwiki' as source, page_id, page_title, ll_lang, ll_title FROM nlwiki_p.langlinks LEFT JOIN nlwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'dewiki' as source, page_id, page_title, ll_lang, ll_title FROM dewiki_p.langlinks LEFT JOIN dewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'frwiki' as source, page_id, page_title, ll_lang, ll_title FROM frwiki_p.langlinks LEFT JOIN frwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'warwiki' as source, page_id, page_title, ll_lang, ll_title FROM warwiki_p.langlinks LEFT JOIN warwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cebwiki' as source, page_id, page_title, ll_lang, ll_title FROM cebwiki_p.langlinks LEFT JOIN cebwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ruwiki' as source, page_id, page_title, ll_lang, ll_title FROM ruwiki_p.langlinks LEFT JOIN ruwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'itwiki' as source, page_id, page_title, ll_lang, ll_title FROM itwiki_p.langlinks LEFT JOIN itwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'eswiki' as source, page_id, page_title, ll_lang, ll_title FROM eswiki_p.langlinks LEFT JOIN eswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'viwiki' as source, page_id, page_title, ll_lang, ll_title FROM viwiki_p.langlinks LEFT JOIN viwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'plwiki' as source, page_id, page_title, ll_lang, ll_title FROM plwiki_p.langlinks LEFT JOIN plwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'jawiki' as source, page_id, page_title, ll_lang, ll_title FROM jawiki_p.langlinks LEFT JOIN jawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ptwiki' as source, page_id, page_title, ll_lang, ll_title FROM ptwiki_p.langlinks LEFT JOIN ptwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'zhwiki' as source, page_id, page_title, ll_lang, ll_title FROM zhwiki_p.langlinks LEFT JOIN zhwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ukwiki' as source, page_id, page_title, ll_lang, ll_title FROM ukwiki_p.langlinks LEFT JOIN ukwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cawiki' as source, page_id, page_title, ll_lang, ll_title FROM cawiki_p.langlinks LEFT JOIN cawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'fawiki' as source, page_id, page_title, ll_lang, ll_title FROM fawiki_p.langlinks LEFT JOIN fawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nowiki' as source, page_id, page_title, ll_lang, ll_title FROM nowiki_p.langlinks LEFT JOIN nowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'fiwiki' as source, page_id, page_title, ll_lang, ll_title FROM fiwiki_p.langlinks LEFT JOIN fiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'idwiki' as source, page_id, page_title, ll_lang, ll_title FROM idwiki_p.langlinks LEFT JOIN idwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'arwiki' as source, page_id, page_title, ll_lang, ll_title FROM arwiki_p.langlinks LEFT JOIN arwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'srwiki' as source, page_id, page_title, ll_lang, ll_title FROM srwiki_p.langlinks LEFT JOIN srwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cswiki' as source, page_id, page_title, ll_lang, ll_title FROM cswiki_p.langlinks LEFT JOIN cswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kowiki' as source, page_id, page_title, ll_lang, ll_title FROM kowiki_p.langlinks LEFT JOIN kowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'shwiki' as source, page_id, page_title, ll_lang, ll_title FROM shwiki_p.langlinks LEFT JOIN shwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'huwiki' as source, page_id, page_title, ll_lang, ll_title FROM huwiki_p.langlinks LEFT JOIN huwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mswiki' as source, page_id, page_title, ll_lang, ll_title FROM mswiki_p.langlinks LEFT JOIN mswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'rowiki' as source, page_id, page_title, ll_lang, ll_title FROM rowiki_p.langlinks LEFT JOIN rowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'trwiki' as source, page_id, page_title, ll_lang, ll_title FROM trwiki_p.langlinks LEFT JOIN trwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'minwiki' as source, page_id, page_title, ll_lang, ll_title FROM minwiki_p.langlinks LEFT JOIN minwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kkwiki' as source, page_id, page_title, ll_lang, ll_title FROM kkwiki_p.langlinks LEFT JOIN kkwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'eowiki' as source, page_id, page_title, ll_lang, ll_title FROM eowiki_p.langlinks LEFT JOIN eowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'euwiki' as source, page_id, page_title, ll_lang, ll_title FROM euwiki_p.langlinks LEFT JOIN euwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'skwiki' as source, page_id, page_title, ll_lang, ll_title FROM skwiki_p.langlinks LEFT JOIN skwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'dawiki' as source, page_id, page_title, ll_lang, ll_title FROM dawiki_p.langlinks LEFT JOIN dawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bgwiki' as source, page_id, page_title, ll_lang, ll_title FROM bgwiki_p.langlinks LEFT JOIN bgwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ltwiki' as source, page_id, page_title, ll_lang, ll_title FROM ltwiki_p.langlinks LEFT JOIN ltwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hewiki' as source, page_id, page_title, ll_lang, ll_title FROM hewiki_p.langlinks LEFT JOIN hewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hrwiki' as source, page_id, page_title, ll_lang, ll_title FROM hrwiki_p.langlinks LEFT JOIN hrwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'slwiki' as source, page_id, page_title, ll_lang, ll_title FROM slwiki_p.langlinks LEFT JOIN slwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hywiki' as source, page_id, page_title, ll_lang, ll_title FROM hywiki_p.langlinks LEFT JOIN hywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'etwiki' as source, page_id, page_title, ll_lang, ll_title FROM etwiki_p.langlinks LEFT JOIN etwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'uzwiki' as source, page_id, page_title, ll_lang, ll_title FROM uzwiki_p.langlinks LEFT JOIN uzwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'vowiki' as source, page_id, page_title, ll_lang, ll_title FROM vowiki_p.langlinks LEFT JOIN vowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'glwiki' as source, page_id, page_title, ll_lang, ll_title FROM glwiki_p.langlinks LEFT JOIN glwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'simplewiki' as source, page_id, page_title, ll_lang, ll_title FROM simplewiki_p.langlinks LEFT JOIN simplewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nnwiki' as source, page_id, page_title, ll_lang, ll_title FROM nnwiki_p.langlinks LEFT JOIN nnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hiwiki' as source, page_id, page_title, ll_lang, ll_title FROM hiwiki_p.langlinks LEFT JOIN hiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'elwiki' as source, page_id, page_title, ll_lang, ll_title FROM elwiki_p.langlinks LEFT JOIN elwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lawiki' as source, page_id, page_title, ll_lang, ll_title FROM lawiki_p.langlinks LEFT JOIN lawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'azwiki' as source, page_id, page_title, ll_lang, ll_title FROM azwiki_p.langlinks LEFT JOIN azwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'thwiki' as source, page_id, page_title, ll_lang, ll_title FROM thwiki_p.langlinks LEFT JOIN thwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ocwiki' as source, page_id, page_title, ll_lang, ll_title FROM ocwiki_p.langlinks LEFT JOIN ocwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kawiki' as source, page_id, page_title, ll_lang, ll_title FROM kawiki_p.langlinks LEFT JOIN kawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mkwiki' as source, page_id, page_title, ll_lang, ll_title FROM mkwiki_p.langlinks LEFT JOIN mkwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bewiki' as source, page_id, page_title, ll_lang, ll_title FROM bewiki_p.langlinks LEFT JOIN bewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cewiki' as source, page_id, page_title, ll_lang, ll_title FROM cewiki_p.langlinks LEFT JOIN cewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'newwiki' as source, page_id, page_title, ll_lang, ll_title FROM newwiki_p.langlinks LEFT JOIN newwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tawiki' as source, page_id, page_title, ll_lang, ll_title FROM tawiki_p.langlinks LEFT JOIN tawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ttwiki' as source, page_id, page_title, ll_lang, ll_title FROM ttwiki_p.langlinks LEFT JOIN ttwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'urwiki' as source, page_id, page_title, ll_lang, ll_title FROM urwiki_p.langlinks LEFT JOIN urwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pmswiki' as source, page_id, page_title, ll_lang, ll_title FROM pmswiki_p.langlinks LEFT JOIN pmswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tlwiki' as source, page_id, page_title, ll_lang, ll_title FROM tlwiki_p.langlinks LEFT JOIN tlwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cywiki' as source, page_id, page_title, ll_lang, ll_title FROM cywiki_p.langlinks LEFT JOIN cywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tewiki' as source, page_id, page_title, ll_lang, ll_title FROM tewiki_p.langlinks LEFT JOIN tewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lvwiki' as source, page_id, page_title, ll_lang, ll_title FROM lvwiki_p.langlinks LEFT JOIN lvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bswiki' as source, page_id, page_title, ll_lang, ll_title FROM bswiki_p.langlinks LEFT JOIN bswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'be-x-oldwiki' as source, page_id, page_title, ll_lang, ll_title FROM be_x_oldwiki_p.langlinks LEFT JOIN be_x_oldwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mgwiki' as source, page_id, page_title, ll_lang, ll_title FROM mgwiki_p.langlinks LEFT JOIN mgwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'htwiki' as source, page_id, page_title, ll_lang, ll_title FROM htwiki_p.langlinks LEFT JOIN htwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'brwiki' as source, page_id, page_title, ll_lang, ll_title FROM brwiki_p.langlinks LEFT JOIN brwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'sqwiki' as source, page_id, page_title, ll_lang, ll_title FROM sqwiki_p.langlinks LEFT JOIN sqwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'jvwiki' as source, page_id, page_title, ll_lang, ll_title FROM jvwiki_p.langlinks LEFT JOIN jvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lbwiki' as source, page_id, page_title, ll_lang, ll_title FROM lbwiki_p.langlinks LEFT JOIN lbwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mrwiki' as source, page_id, page_title, ll_lang, ll_title FROM mrwiki_p.langlinks LEFT JOIN mrwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'iswiki' as source, page_id, page_title, ll_lang, ll_title FROM iswiki_p.langlinks LEFT JOIN iswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mlwiki' as source, page_id, page_title, ll_lang, ll_title FROM mlwiki_p.langlinks LEFT JOIN mlwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'zh-yuewiki' as source, page_id, page_title, ll_lang, ll_title FROM zh_yuewiki_p.langlinks LEFT JOIN zh_yuewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'afwiki' as source, page_id, page_title, ll_lang, ll_title FROM afwiki_p.langlinks LEFT JOIN afwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bnwiki' as source, page_id, page_title, ll_lang, ll_title FROM bnwiki_p.langlinks LEFT JOIN bnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bawiki' as source, page_id, page_title, ll_lang, ll_title FROM bawiki_p.langlinks LEFT JOIN bawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pnbwiki' as source, page_id, page_title, ll_lang, ll_title FROM pnbwiki_p.langlinks LEFT JOIN pnbwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'gawiki' as source, page_id, page_title, ll_lang, ll_title FROM gawiki_p.langlinks LEFT JOIN gawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mywiki' as source, page_id, page_title, ll_lang, ll_title FROM mywiki_p.langlinks LEFT JOIN mywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lmowiki' as source, page_id, page_title, ll_lang, ll_title FROM lmowiki_p.langlinks LEFT JOIN lmowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'fywiki' as source, page_id, page_title, ll_lang, ll_title FROM fywiki_p.langlinks LEFT JOIN fywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'yowiki' as source, page_id, page_title, ll_lang, ll_title FROM yowiki_p.langlinks LEFT JOIN yowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tgwiki' as source, page_id, page_title, ll_lang, ll_title FROM tgwiki_p.langlinks LEFT JOIN tgwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'anwiki' as source, page_id, page_title, ll_lang, ll_title FROM anwiki_p.langlinks LEFT JOIN anwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cvwiki' as source, page_id, page_title, ll_lang, ll_title FROM cvwiki_p.langlinks LEFT JOIN cvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'scowiki' as source, page_id, page_title, ll_lang, ll_title FROM scowiki_p.langlinks LEFT JOIN scowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'swwiki' as source, page_id, page_title, ll_lang, ll_title FROM swwiki_p.langlinks LEFT JOIN swwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kywiki' as source, page_id, page_title, ll_lang, ll_title FROM kywiki_p.langlinks LEFT JOIN kywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'newiki' as source, page_id, page_title, ll_lang, ll_title FROM newiki_p.langlinks LEFT JOIN newiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'iowiki' as source, page_id, page_title, ll_lang, ll_title FROM iowiki_p.langlinks LEFT JOIN iowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'guwiki' as source, page_id, page_title, ll_lang, ll_title FROM guwiki_p.langlinks LEFT JOIN guwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bpywiki' as source, page_id, page_title, ll_lang, ll_title FROM bpywiki_p.langlinks LEFT JOIN bpywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'scnwiki' as source, page_id, page_title, ll_lang, ll_title FROM scnwiki_p.langlinks LEFT JOIN scnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ndswiki' as source, page_id, page_title, ll_lang, ll_title FROM ndswiki_p.langlinks LEFT JOIN ndswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kuwiki' as source, page_id, page_title, ll_lang, ll_title FROM kuwiki_p.langlinks LEFT JOIN kuwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'astwiki' as source, page_id, page_title, ll_lang, ll_title FROM astwiki_p.langlinks LEFT JOIN astwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'quwiki' as source, page_id, page_title, ll_lang, ll_title FROM quwiki_p.langlinks LEFT JOIN quwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'gdwiki' as source, page_id, page_title, ll_lang, ll_title FROM gdwiki_p.langlinks LEFT JOIN gdwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'alswiki' as source, page_id, page_title, ll_lang, ll_title FROM alswiki_p.langlinks LEFT JOIN alswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'suwiki' as source, page_id, page_title, ll_lang, ll_title FROM suwiki_p.langlinks LEFT JOIN suwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'knwiki' as source, page_id, page_title, ll_lang, ll_title FROM knwiki_p.langlinks LEFT JOIN knwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pawiki' as source, page_id, page_title, ll_lang, ll_title FROM pawiki_p.langlinks LEFT JOIN pawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'amwiki' as source, page_id, page_title, ll_lang, ll_title FROM amwiki_p.langlinks LEFT JOIN amwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ckbwiki' as source, page_id, page_title, ll_lang, ll_title FROM ckbwiki_p.langlinks LEFT JOIN ckbwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'iawiki' as source, page_id, page_title, ll_lang, ll_title FROM iawiki_p.langlinks LEFT JOIN iawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'napwiki' as source, page_id, page_title, ll_lang, ll_title FROM napwiki_p.langlinks LEFT JOIN napwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bugwiki' as source, page_id, page_title, ll_lang, ll_title FROM bugwiki_p.langlinks LEFT JOIN bugwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mnwiki' as source, page_id, page_title, ll_lang, ll_title FROM mnwiki_p.langlinks LEFT JOIN mnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bat-smgwiki' as source, page_id, page_title, ll_lang, ll_title FROM bat_smgwiki_p.langlinks LEFT JOIN bat_smgwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'wawiki' as source, page_id, page_title, ll_lang, ll_title FROM wawiki_p.langlinks LEFT JOIN wawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'arzwiki' as source, page_id, page_title, ll_lang, ll_title FROM arzwiki_p.langlinks LEFT JOIN arzwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'map-bmswiki' as source, page_id, page_title, ll_lang, ll_title FROM map_bmswiki_p.langlinks LEFT JOIN map_bmswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'siwiki' as source, page_id, page_title, ll_lang, ll_title FROM siwiki_p.langlinks LEFT JOIN siwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mznwiki' as source, page_id, page_title, ll_lang, ll_title FROM mznwiki_p.langlinks LEFT JOIN mznwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'zh-min-nanwiki' as source, page_id, page_title, ll_lang, ll_title FROM zh_min_nanwiki_p.langlinks LEFT JOIN zh_min_nanwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'yiwiki' as source, page_id, page_title, ll_lang, ll_title FROM yiwiki_p.langlinks LEFT JOIN yiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'fowiki' as source, page_id, page_title, ll_lang, ll_title FROM fowiki_p.langlinks LEFT JOIN fowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'sahwiki' as source, page_id, page_title, ll_lang, ll_title FROM sahwiki_p.langlinks LEFT JOIN sahwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'barwiki' as source, page_id, page_title, ll_lang, ll_title FROM barwiki_p.langlinks LEFT JOIN barwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'vecwiki' as source, page_id, page_title, ll_lang, ll_title FROM vecwiki_p.langlinks LEFT JOIN vecwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'sawiki' as source, page_id, page_title, ll_lang, ll_title FROM sawiki_p.langlinks LEFT JOIN sawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nahwiki' as source, page_id, page_title, ll_lang, ll_title FROM nahwiki_p.langlinks LEFT JOIN nahwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'oswiki' as source, page_id, page_title, ll_lang, ll_title FROM oswiki_p.langlinks LEFT JOIN oswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'roa-tarawiki' as source, page_id, page_title, ll_lang, ll_title FROM roa_tarawiki_p.langlinks LEFT JOIN roa_tarawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hsbwiki' as source, page_id, page_title, ll_lang, ll_title FROM hsbwiki_p.langlinks LEFT JOIN hsbwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'orwiki' as source, page_id, page_title, ll_lang, ll_title FROM orwiki_p.langlinks LEFT JOIN orwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'liwiki' as source, page_id, page_title, ll_lang, ll_title FROM liwiki_p.langlinks LEFT JOIN liwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pamwiki' as source, page_id, page_title, ll_lang, ll_title FROM pamwiki_p.langlinks LEFT JOIN pamwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'sewiki' as source, page_id, page_title, ll_lang, ll_title FROM sewiki_p.langlinks LEFT JOIN sewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mrjwiki' as source, page_id, page_title, ll_lang, ll_title FROM mrjwiki_p.langlinks LEFT JOIN mrjwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ilowiki' as source, page_id, page_title, ll_lang, ll_title FROM ilowiki_p.langlinks LEFT JOIN ilowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'miwiki' as source, page_id, page_title, ll_lang, ll_title FROM miwiki_p.langlinks LEFT JOIN miwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cowiki' as source, page_id, page_title, ll_lang, ll_title FROM cowiki_p.langlinks LEFT JOIN cowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hifwiki' as source, page_id, page_title, ll_lang, ll_title FROM hifwiki_p.langlinks LEFT JOIN hifwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bclwiki' as source, page_id, page_title, ll_lang, ll_title FROM bclwiki_p.langlinks LEFT JOIN bclwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mhrwiki' as source, page_id, page_title, ll_lang, ll_title FROM mhrwiki_p.langlinks LEFT JOIN mhrwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ganwiki' as source, page_id, page_title, ll_lang, ll_title FROM ganwiki_p.langlinks LEFT JOIN ganwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'frrwiki' as source, page_id, page_title, ll_lang, ll_title FROM frrwiki_p.langlinks LEFT JOIN frrwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bowiki' as source, page_id, page_title, ll_lang, ll_title FROM bowiki_p.langlinks LEFT JOIN bowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ruewiki' as source, page_id, page_title, ll_lang, ll_title FROM ruewiki_p.langlinks LEFT JOIN ruewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'glkwiki' as source, page_id, page_title, ll_lang, ll_title FROM glkwiki_p.langlinks LEFT JOIN glkwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bhwiki' as source, page_id, page_title, ll_lang, ll_title FROM bhwiki_p.langlinks LEFT JOIN bhwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nds-nlwiki' as source, page_id, page_title, ll_lang, ll_title FROM nds_nlwiki_p.langlinks LEFT JOIN nds_nlwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'fiu-vrowiki' as source, page_id, page_title, ll_lang, ll_title FROM fiu_vrowiki_p.langlinks LEFT JOIN fiu_vrowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pswiki' as source, page_id, page_title, ll_lang, ll_title FROM pswiki_p.langlinks LEFT JOIN pswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'vlswiki' as source, page_id, page_title, ll_lang, ll_title FROM vlswiki_p.langlinks LEFT JOIN vlswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tkwiki' as source, page_id, page_title, ll_lang, ll_title FROM tkwiki_p.langlinks LEFT JOIN tkwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pagwiki' as source, page_id, page_title, ll_lang, ll_title FROM pagwiki_p.langlinks LEFT JOIN pagwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'diqwiki' as source, page_id, page_title, ll_lang, ll_title FROM diqwiki_p.langlinks LEFT JOIN diqwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'xmfwiki' as source, page_id, page_title, ll_lang, ll_title FROM xmfwiki_p.langlinks LEFT JOIN xmfwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'gvwiki' as source, page_id, page_title, ll_lang, ll_title FROM gvwiki_p.langlinks LEFT JOIN gvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kmwiki' as source, page_id, page_title, ll_lang, ll_title FROM kmwiki_p.langlinks LEFT JOIN kmwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'scwiki' as source, page_id, page_title, ll_lang, ll_title FROM scwiki_p.langlinks LEFT JOIN scwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'csbwiki' as source, page_id, page_title, ll_lang, ll_title FROM csbwiki_p.langlinks LEFT JOIN csbwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hakwiki' as source, page_id, page_title, ll_lang, ll_title FROM hakwiki_p.langlinks LEFT JOIN hakwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kvwiki' as source, page_id, page_title, ll_lang, ll_title FROM kvwiki_p.langlinks LEFT JOIN kvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'zeawiki' as source, page_id, page_title, ll_lang, ll_title FROM zeawiki_p.langlinks LEFT JOIN zeawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'crhwiki' as source, page_id, page_title, ll_lang, ll_title FROM crhwiki_p.langlinks LEFT JOIN crhwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'vepwiki' as source, page_id, page_title, ll_lang, ll_title FROM vepwiki_p.langlinks LEFT JOIN vepwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'zh-classicalwiki' as source, page_id, page_title, ll_lang, ll_title FROM zh_classicalwiki_p.langlinks LEFT JOIN zh_classicalwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'aywiki' as source, page_id, page_title, ll_lang, ll_title FROM aywiki_p.langlinks LEFT JOIN aywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'sowiki' as source, page_id, page_title, ll_lang, ll_title FROM sowiki_p.langlinks LEFT JOIN sowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'dvwiki' as source, page_id, page_title, ll_lang, ll_title FROM dvwiki_p.langlinks LEFT JOIN dvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nrmwiki' as source, page_id, page_title, ll_lang, ll_title FROM nrmwiki_p.langlinks LEFT JOIN nrmwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kwwiki' as source, page_id, page_title, ll_lang, ll_title FROM kwwiki_p.langlinks LEFT JOIN kwwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'rmwiki' as source, page_id, page_title, ll_lang, ll_title FROM rmwiki_p.langlinks LEFT JOIN rmwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'udmwiki' as source, page_id, page_title, ll_lang, ll_title FROM udmwiki_p.langlinks LEFT JOIN udmwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'wuuwiki' as source, page_id, page_title, ll_lang, ll_title FROM wuuwiki_p.langlinks LEFT JOIN wuuwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'emlwiki' as source, page_id, page_title, ll_lang, ll_title FROM emlwiki_p.langlinks LEFT JOIN emlwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'koiwiki' as source, page_id, page_title, ll_lang, ll_title FROM koiwiki_p.langlinks LEFT JOIN koiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ugwiki' as source, page_id, page_title, ll_lang, ll_title FROM ugwiki_p.langlinks LEFT JOIN ugwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'stqwiki' as source, page_id, page_title, ll_lang, ll_title FROM stqwiki_p.langlinks LEFT JOIN stqwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ladwiki' as source, page_id, page_title, ll_lang, ll_title FROM ladwiki_p.langlinks LEFT JOIN ladwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lijwiki' as source, page_id, page_title, ll_lang, ll_title FROM lijwiki_p.langlinks LEFT JOIN lijwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'furwiki' as source, page_id, page_title, ll_lang, ll_title FROM furwiki_p.langlinks LEFT JOIN furwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'szlwiki' as source, page_id, page_title, ll_lang, ll_title FROM szlwiki_p.langlinks LEFT JOIN szlwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mtwiki' as source, page_id, page_title, ll_lang, ll_title FROM mtwiki_p.langlinks LEFT JOIN mtwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'aswiki' as source, page_id, page_title, ll_lang, ll_title FROM aswiki_p.langlinks LEFT JOIN aswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cbk-zamwiki' as source, page_id, page_title, ll_lang, ll_title FROM cbk_zamwiki_p.langlinks LEFT JOIN cbk_zamwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'gnwiki' as source, page_id, page_title, ll_lang, ll_title FROM gnwiki_p.langlinks LEFT JOIN gnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pcdwiki' as source, page_id, page_title, ll_lang, ll_title FROM pcdwiki_p.langlinks LEFT JOIN pcdwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'piwiki' as source, page_id, page_title, ll_lang, ll_title FROM piwiki_p.langlinks LEFT JOIN piwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'gagwiki' as source, page_id, page_title, ll_lang, ll_title FROM gagwiki_p.langlinks LEFT JOIN gagwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kshwiki' as source, page_id, page_title, ll_lang, ll_title FROM kshwiki_p.langlinks LEFT JOIN kshwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'angwiki' as source, page_id, page_title, ll_lang, ll_title FROM angwiki_p.langlinks LEFT JOIN angwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'iewiki' as source, page_id, page_title, ll_lang, ll_title FROM iewiki_p.langlinks LEFT JOIN iewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'acewiki' as source, page_id, page_title, ll_lang, ll_title FROM acewiki_p.langlinks LEFT JOIN acewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'extwiki' as source, page_id, page_title, ll_lang, ll_title FROM extwiki_p.langlinks LEFT JOIN extwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nvwiki' as source, page_id, page_title, ll_lang, ll_title FROM nvwiki_p.langlinks LEFT JOIN nvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'frpwiki' as source, page_id, page_title, ll_lang, ll_title FROM frpwiki_p.langlinks LEFT JOIN frpwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'dsbwiki' as source, page_id, page_title, ll_lang, ll_title FROM dsbwiki_p.langlinks LEFT JOIN dsbwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kabwiki' as source, page_id, page_title, ll_lang, ll_title FROM kabwiki_p.langlinks LEFT JOIN kabwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mwlwiki' as source, page_id, page_title, ll_lang, ll_title FROM mwlwiki_p.langlinks LEFT JOIN mwlwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'snwiki' as source, page_id, page_title, ll_lang, ll_title FROM snwiki_p.langlinks LEFT JOIN snwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lezwiki' as source, page_id, page_title, ll_lang, ll_title FROM lezwiki_p.langlinks LEFT JOIN lezwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lnwiki' as source, page_id, page_title, ll_lang, ll_title FROM lnwiki_p.langlinks LEFT JOIN lnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pflwiki' as source, page_id, page_title, ll_lang, ll_title FROM pflwiki_p.langlinks LEFT JOIN pflwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'krcwiki' as source, page_id, page_title, ll_lang, ll_title FROM krcwiki_p.langlinks LEFT JOIN krcwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hawwiki' as source, page_id, page_title, ll_lang, ll_title FROM hawwiki_p.langlinks LEFT JOIN hawwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pdcwiki' as source, page_id, page_title, ll_lang, ll_title FROM pdcwiki_p.langlinks LEFT JOIN pdcwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'xalwiki' as source, page_id, page_title, ll_lang, ll_title FROM xalwiki_p.langlinks LEFT JOIN xalwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'rwwiki' as source, page_id, page_title, ll_lang, ll_title FROM rwwiki_p.langlinks LEFT JOIN rwwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'myvwiki' as source, page_id, page_title, ll_lang, ll_title FROM myvwiki_p.langlinks LEFT JOIN myvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'novwiki' as source, page_id, page_title, ll_lang, ll_title FROM novwiki_p.langlinks LEFT JOIN novwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'towiki' as source, page_id, page_title, ll_lang, ll_title FROM towiki_p.langlinks LEFT JOIN towiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'klwiki' as source, page_id, page_title, ll_lang, ll_title FROM klwiki_p.langlinks LEFT JOIN klwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'arcwiki' as source, page_id, page_title, ll_lang, ll_title FROM arcwiki_p.langlinks LEFT JOIN arcwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cdowiki' as source, page_id, page_title, ll_lang, ll_title FROM cdowiki_p.langlinks LEFT JOIN cdowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kaawiki' as source, page_id, page_title, ll_lang, ll_title FROM kaawiki_p.langlinks LEFT JOIN kaawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bjnwiki' as source, page_id, page_title, ll_lang, ll_title FROM bjnwiki_p.langlinks LEFT JOIN bjnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lowiki' as source, page_id, page_title, ll_lang, ll_title FROM lowiki_p.langlinks LEFT JOIN lowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kbdwiki' as source, page_id, page_title, ll_lang, ll_title FROM kbdwiki_p.langlinks LEFT JOIN kbdwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'papwiki' as source, page_id, page_title, ll_lang, ll_title FROM papwiki_p.langlinks LEFT JOIN papwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hawiki' as source, page_id, page_title, ll_lang, ll_title FROM hawiki_p.langlinks LEFT JOIN hawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'avwiki' as source, page_id, page_title, ll_lang, ll_title FROM avwiki_p.langlinks LEFT JOIN avwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tywiki' as source, page_id, page_title, ll_lang, ll_title FROM tywiki_p.langlinks LEFT JOIN tywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tpiwiki' as source, page_id, page_title, ll_lang, ll_title FROM tpiwiki_p.langlinks LEFT JOIN tpiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bxrwiki' as source, page_id, page_title, ll_lang, ll_title FROM bxrwiki_p.langlinks LEFT JOIN bxrwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nawiki' as source, page_id, page_title, ll_lang, ll_title FROM nawiki_p.langlinks LEFT JOIN nawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mdfwiki' as source, page_id, page_title, ll_lang, ll_title FROM mdfwiki_p.langlinks LEFT JOIN mdfwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lbewiki' as source, page_id, page_title, ll_lang, ll_title FROM lbewiki_p.langlinks LEFT JOIN lbewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'jbowiki' as source, page_id, page_title, ll_lang, ll_title FROM jbowiki_p.langlinks LEFT JOIN jbowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'wowiki' as source, page_id, page_title, ll_lang, ll_title FROM wowiki_p.langlinks LEFT JOIN wowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'roa-rupwiki' as source, page_id, page_title, ll_lang, ll_title FROM roa_rupwiki_p.langlinks LEFT JOIN roa_rupwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'srnwiki' as source, page_id, page_title, ll_lang, ll_title FROM srnwiki_p.langlinks LEFT JOIN srnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'igwiki' as source, page_id, page_title, ll_lang, ll_title FROM igwiki_p.langlinks LEFT JOIN igwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tetwiki' as source, page_id, page_title, ll_lang, ll_title FROM tetwiki_p.langlinks LEFT JOIN tetwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nsowiki' as source, page_id, page_title, ll_lang, ll_title FROM nsowiki_p.langlinks LEFT JOIN nsowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kgwiki' as source, page_id, page_title, ll_lang, ll_title FROM kgwiki_p.langlinks LEFT JOIN kgwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tyvwiki' as source, page_id, page_title, ll_lang, ll_title FROM tyvwiki_p.langlinks LEFT JOIN tyvwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'abwiki' as source, page_id, page_title, ll_lang, ll_title FROM abwiki_p.langlinks LEFT JOIN abwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ltgwiki' as source, page_id, page_title, ll_lang, ll_title FROM ltgwiki_p.langlinks LEFT JOIN ltgwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'sdwiki' as source, page_id, page_title, ll_lang, ll_title FROM sdwiki_p.langlinks LEFT JOIN sdwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'zuwiki' as source, page_id, page_title, ll_lang, ll_title FROM zuwiki_p.langlinks LEFT JOIN zuwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'zawiki' as source, page_id, page_title, ll_lang, ll_title FROM zawiki_p.langlinks LEFT JOIN zawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'omwiki' as source, page_id, page_title, ll_lang, ll_title FROM omwiki_p.langlinks LEFT JOIN omwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'chywiki' as source, page_id, page_title, ll_lang, ll_title FROM chywiki_p.langlinks LEFT JOIN chywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'twwiki' as source, page_id, page_title, ll_lang, ll_title FROM twwiki_p.langlinks LEFT JOIN twwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'rmywiki' as source, page_id, page_title, ll_lang, ll_title FROM rmywiki_p.langlinks LEFT JOIN rmywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'cuwiki' as source, page_id, page_title, ll_lang, ll_title FROM cuwiki_p.langlinks LEFT JOIN cuwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'maiwiki' as source, page_id, page_title, ll_lang, ll_title FROM maiwiki_p.langlinks LEFT JOIN maiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'chrwiki' as source, page_id, page_title, ll_lang, ll_title FROM chrwiki_p.langlinks LEFT JOIN chrwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tnwiki' as source, page_id, page_title, ll_lang, ll_title FROM tnwiki_p.langlinks LEFT JOIN tnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'gotwiki' as source, page_id, page_title, ll_lang, ll_title FROM gotwiki_p.langlinks LEFT JOIN gotwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'biwiki' as source, page_id, page_title, ll_lang, ll_title FROM biwiki_p.langlinks LEFT JOIN biwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pihwiki' as source, page_id, page_title, ll_lang, ll_title FROM pihwiki_p.langlinks LEFT JOIN pihwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'rnwiki' as source, page_id, page_title, ll_lang, ll_title FROM rnwiki_p.langlinks LEFT JOIN rnwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'smwiki' as source, page_id, page_title, ll_lang, ll_title FROM smwiki_p.langlinks LEFT JOIN smwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'bmwiki' as source, page_id, page_title, ll_lang, ll_title FROM bmwiki_p.langlinks LEFT JOIN bmwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'sswiki' as source, page_id, page_title, ll_lang, ll_title FROM sswiki_p.langlinks LEFT JOIN sswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mowiki' as source, page_id, page_title, ll_lang, ll_title FROM mowiki_p.langlinks LEFT JOIN mowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'iuwiki' as source, page_id, page_title, ll_lang, ll_title FROM iuwiki_p.langlinks LEFT JOIN iuwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'xhwiki' as source, page_id, page_title, ll_lang, ll_title FROM xhwiki_p.langlinks LEFT JOIN xhwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kiwiki' as source, page_id, page_title, ll_lang, ll_title FROM kiwiki_p.langlinks LEFT JOIN kiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'pntwiki' as source, page_id, page_title, ll_lang, ll_title FROM pntwiki_p.langlinks LEFT JOIN pntwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'lgwiki' as source, page_id, page_title, ll_lang, ll_title FROM lgwiki_p.langlinks LEFT JOIN lgwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tswiki' as source, page_id, page_title, ll_lang, ll_title FROM tswiki_p.langlinks LEFT JOIN tswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'eewiki' as source, page_id, page_title, ll_lang, ll_title FROM eewiki_p.langlinks LEFT JOIN eewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'akwiki' as source, page_id, page_title, ll_lang, ll_title FROM akwiki_p.langlinks LEFT JOIN akwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tiwiki' as source, page_id, page_title, ll_lang, ll_title FROM tiwiki_p.langlinks LEFT JOIN tiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'fjwiki' as source, page_id, page_title, ll_lang, ll_title FROM fjwiki_p.langlinks LEFT JOIN fjwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kswiki' as source, page_id, page_title, ll_lang, ll_title FROM kswiki_p.langlinks LEFT JOIN kswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'sgwiki' as source, page_id, page_title, ll_lang, ll_title FROM sgwiki_p.langlinks LEFT JOIN sgwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ffwiki' as source, page_id, page_title, ll_lang, ll_title FROM ffwiki_p.langlinks LEFT JOIN ffwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'nywiki' as source, page_id, page_title, ll_lang, ll_title FROM nywiki_p.langlinks LEFT JOIN nywiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'stwiki' as source, page_id, page_title, ll_lang, ll_title FROM stwiki_p.langlinks LEFT JOIN stwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'vewiki' as source, page_id, page_title, ll_lang, ll_title FROM vewiki_p.langlinks LEFT JOIN vewiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'crwiki' as source, page_id, page_title, ll_lang, ll_title FROM crwiki_p.langlinks LEFT JOIN crwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'dzwiki' as source, page_id, page_title, ll_lang, ll_title FROM dzwiki_p.langlinks LEFT JOIN dzwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ikwiki' as source, page_id, page_title, ll_lang, ll_title FROM ikwiki_p.langlinks LEFT JOIN ikwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'tumwiki' as source, page_id, page_title, ll_lang, ll_title FROM tumwiki_p.langlinks LEFT JOIN tumwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'chwiki' as source, page_id, page_title, ll_lang, ll_title FROM chwiki_p.langlinks LEFT JOIN chwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'ngwiki' as source, page_id, page_title, ll_lang, ll_title FROM ngwiki_p.langlinks LEFT JOIN ngwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'iiwiki' as source, page_id, page_title, ll_lang, ll_title FROM iiwiki_p.langlinks LEFT JOIN iiwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'chowiki' as source, page_id, page_title, ll_lang, ll_title FROM chowiki_p.langlinks LEFT JOIN chowiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'mhwiki' as source, page_id, page_title, ll_lang, ll_title FROM mhwiki_p.langlinks LEFT JOIN mhwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'aawiki' as source, page_id, page_title, ll_lang, ll_title FROM aawiki_p.langlinks LEFT JOIN aawiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'kjwiki' as source, page_id, page_title, ll_lang, ll_title FROM kjwiki_p.langlinks LEFT JOIN kjwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'howiki' as source, page_id, page_title, ll_lang, ll_title FROM howiki_p.langlinks LEFT JOIN howiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'muswiki' as source, page_id, page_title, ll_lang, ll_title FROM muswiki_p.langlinks LEFT JOIN muswiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'krwiki' as source, page_id, page_title, ll_lang, ll_title FROM krwiki_p.langlinks LEFT JOIN krwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	UNION ALL
(SELECT DISTINCT 'hzwiki' as source, page_id, page_title, ll_lang, ll_title FROM hzwiki_p.langlinks LEFT JOIN hzwiki_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	;