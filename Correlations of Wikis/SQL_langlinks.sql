(SELECT 'enwiki' as source, ll_lang as target, COUNT(*) as count FROM enwiki_p.langlinks LEFT JOIN enwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'svwiki' as source, ll_lang as target, COUNT(*) as count FROM svwiki_p.langlinks LEFT JOIN svwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nlwiki' as source, ll_lang as target, COUNT(*) as count FROM nlwiki_p.langlinks LEFT JOIN nlwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'dewiki' as source, ll_lang as target, COUNT(*) as count FROM dewiki_p.langlinks LEFT JOIN dewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'frwiki' as source, ll_lang as target, COUNT(*) as count FROM frwiki_p.langlinks LEFT JOIN frwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'warwiki' as source, ll_lang as target, COUNT(*) as count FROM warwiki_p.langlinks LEFT JOIN warwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cebwiki' as source, ll_lang as target, COUNT(*) as count FROM cebwiki_p.langlinks LEFT JOIN cebwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ruwiki' as source, ll_lang as target, COUNT(*) as count FROM ruwiki_p.langlinks LEFT JOIN ruwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'itwiki' as source, ll_lang as target, COUNT(*) as count FROM itwiki_p.langlinks LEFT JOIN itwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'eswiki' as source, ll_lang as target, COUNT(*) as count FROM eswiki_p.langlinks LEFT JOIN eswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'viwiki' as source, ll_lang as target, COUNT(*) as count FROM viwiki_p.langlinks LEFT JOIN viwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'plwiki' as source, ll_lang as target, COUNT(*) as count FROM plwiki_p.langlinks LEFT JOIN plwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'jawiki' as source, ll_lang as target, COUNT(*) as count FROM jawiki_p.langlinks LEFT JOIN jawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ptwiki' as source, ll_lang as target, COUNT(*) as count FROM ptwiki_p.langlinks LEFT JOIN ptwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'zhwiki' as source, ll_lang as target, COUNT(*) as count FROM zhwiki_p.langlinks LEFT JOIN zhwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ukwiki' as source, ll_lang as target, COUNT(*) as count FROM ukwiki_p.langlinks LEFT JOIN ukwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cawiki' as source, ll_lang as target, COUNT(*) as count FROM cawiki_p.langlinks LEFT JOIN cawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'fawiki' as source, ll_lang as target, COUNT(*) as count FROM fawiki_p.langlinks LEFT JOIN fawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nowiki' as source, ll_lang as target, COUNT(*) as count FROM nowiki_p.langlinks LEFT JOIN nowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'fiwiki' as source, ll_lang as target, COUNT(*) as count FROM fiwiki_p.langlinks LEFT JOIN fiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'idwiki' as source, ll_lang as target, COUNT(*) as count FROM idwiki_p.langlinks LEFT JOIN idwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'arwiki' as source, ll_lang as target, COUNT(*) as count FROM arwiki_p.langlinks LEFT JOIN arwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'srwiki' as source, ll_lang as target, COUNT(*) as count FROM srwiki_p.langlinks LEFT JOIN srwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cswiki' as source, ll_lang as target, COUNT(*) as count FROM cswiki_p.langlinks LEFT JOIN cswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kowiki' as source, ll_lang as target, COUNT(*) as count FROM kowiki_p.langlinks LEFT JOIN kowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'shwiki' as source, ll_lang as target, COUNT(*) as count FROM shwiki_p.langlinks LEFT JOIN shwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'huwiki' as source, ll_lang as target, COUNT(*) as count FROM huwiki_p.langlinks LEFT JOIN huwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mswiki' as source, ll_lang as target, COUNT(*) as count FROM mswiki_p.langlinks LEFT JOIN mswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'rowiki' as source, ll_lang as target, COUNT(*) as count FROM rowiki_p.langlinks LEFT JOIN rowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'trwiki' as source, ll_lang as target, COUNT(*) as count FROM trwiki_p.langlinks LEFT JOIN trwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'minwiki' as source, ll_lang as target, COUNT(*) as count FROM minwiki_p.langlinks LEFT JOIN minwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kkwiki' as source, ll_lang as target, COUNT(*) as count FROM kkwiki_p.langlinks LEFT JOIN kkwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'eowiki' as source, ll_lang as target, COUNT(*) as count FROM eowiki_p.langlinks LEFT JOIN eowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'euwiki' as source, ll_lang as target, COUNT(*) as count FROM euwiki_p.langlinks LEFT JOIN euwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'skwiki' as source, ll_lang as target, COUNT(*) as count FROM skwiki_p.langlinks LEFT JOIN skwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'dawiki' as source, ll_lang as target, COUNT(*) as count FROM dawiki_p.langlinks LEFT JOIN dawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bgwiki' as source, ll_lang as target, COUNT(*) as count FROM bgwiki_p.langlinks LEFT JOIN bgwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ltwiki' as source, ll_lang as target, COUNT(*) as count FROM ltwiki_p.langlinks LEFT JOIN ltwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hewiki' as source, ll_lang as target, COUNT(*) as count FROM hewiki_p.langlinks LEFT JOIN hewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hrwiki' as source, ll_lang as target, COUNT(*) as count FROM hrwiki_p.langlinks LEFT JOIN hrwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'slwiki' as source, ll_lang as target, COUNT(*) as count FROM slwiki_p.langlinks LEFT JOIN slwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hywiki' as source, ll_lang as target, COUNT(*) as count FROM hywiki_p.langlinks LEFT JOIN hywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'etwiki' as source, ll_lang as target, COUNT(*) as count FROM etwiki_p.langlinks LEFT JOIN etwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'uzwiki' as source, ll_lang as target, COUNT(*) as count FROM uzwiki_p.langlinks LEFT JOIN uzwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'vowiki' as source, ll_lang as target, COUNT(*) as count FROM vowiki_p.langlinks LEFT JOIN vowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'glwiki' as source, ll_lang as target, COUNT(*) as count FROM glwiki_p.langlinks LEFT JOIN glwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'simplewiki' as source, ll_lang as target, COUNT(*) as count FROM simplewiki_p.langlinks LEFT JOIN simplewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nnwiki' as source, ll_lang as target, COUNT(*) as count FROM nnwiki_p.langlinks LEFT JOIN nnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hiwiki' as source, ll_lang as target, COUNT(*) as count FROM hiwiki_p.langlinks LEFT JOIN hiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'elwiki' as source, ll_lang as target, COUNT(*) as count FROM elwiki_p.langlinks LEFT JOIN elwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lawiki' as source, ll_lang as target, COUNT(*) as count FROM lawiki_p.langlinks LEFT JOIN lawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'azwiki' as source, ll_lang as target, COUNT(*) as count FROM azwiki_p.langlinks LEFT JOIN azwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'thwiki' as source, ll_lang as target, COUNT(*) as count FROM thwiki_p.langlinks LEFT JOIN thwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ocwiki' as source, ll_lang as target, COUNT(*) as count FROM ocwiki_p.langlinks LEFT JOIN ocwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kawiki' as source, ll_lang as target, COUNT(*) as count FROM kawiki_p.langlinks LEFT JOIN kawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mkwiki' as source, ll_lang as target, COUNT(*) as count FROM mkwiki_p.langlinks LEFT JOIN mkwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bewiki' as source, ll_lang as target, COUNT(*) as count FROM bewiki_p.langlinks LEFT JOIN bewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cewiki' as source, ll_lang as target, COUNT(*) as count FROM cewiki_p.langlinks LEFT JOIN cewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'newwiki' as source, ll_lang as target, COUNT(*) as count FROM newwiki_p.langlinks LEFT JOIN newwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tawiki' as source, ll_lang as target, COUNT(*) as count FROM tawiki_p.langlinks LEFT JOIN tawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ttwiki' as source, ll_lang as target, COUNT(*) as count FROM ttwiki_p.langlinks LEFT JOIN ttwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'urwiki' as source, ll_lang as target, COUNT(*) as count FROM urwiki_p.langlinks LEFT JOIN urwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pmswiki' as source, ll_lang as target, COUNT(*) as count FROM pmswiki_p.langlinks LEFT JOIN pmswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tlwiki' as source, ll_lang as target, COUNT(*) as count FROM tlwiki_p.langlinks LEFT JOIN tlwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cywiki' as source, ll_lang as target, COUNT(*) as count FROM cywiki_p.langlinks LEFT JOIN cywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tewiki' as source, ll_lang as target, COUNT(*) as count FROM tewiki_p.langlinks LEFT JOIN tewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lvwiki' as source, ll_lang as target, COUNT(*) as count FROM lvwiki_p.langlinks LEFT JOIN lvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bswiki' as source, ll_lang as target, COUNT(*) as count FROM bswiki_p.langlinks LEFT JOIN bswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'be_x_oldwiki' as source, ll_lang as target, COUNT(*) as count FROM be_x_oldwiki_p.langlinks LEFT JOIN be_x_oldwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mgwiki' as source, ll_lang as target, COUNT(*) as count FROM mgwiki_p.langlinks LEFT JOIN mgwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'htwiki' as source, ll_lang as target, COUNT(*) as count FROM htwiki_p.langlinks LEFT JOIN htwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'brwiki' as source, ll_lang as target, COUNT(*) as count FROM brwiki_p.langlinks LEFT JOIN brwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'sqwiki' as source, ll_lang as target, COUNT(*) as count FROM sqwiki_p.langlinks LEFT JOIN sqwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'jvwiki' as source, ll_lang as target, COUNT(*) as count FROM jvwiki_p.langlinks LEFT JOIN jvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lbwiki' as source, ll_lang as target, COUNT(*) as count FROM lbwiki_p.langlinks LEFT JOIN lbwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mrwiki' as source, ll_lang as target, COUNT(*) as count FROM mrwiki_p.langlinks LEFT JOIN mrwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'iswiki' as source, ll_lang as target, COUNT(*) as count FROM iswiki_p.langlinks LEFT JOIN iswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mlwiki' as source, ll_lang as target, COUNT(*) as count FROM mlwiki_p.langlinks LEFT JOIN mlwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'zh_yuewiki' as source, ll_lang as target, COUNT(*) as count FROM zh_yuewiki_p.langlinks LEFT JOIN zh_yuewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'afwiki' as source, ll_lang as target, COUNT(*) as count FROM afwiki_p.langlinks LEFT JOIN afwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bnwiki' as source, ll_lang as target, COUNT(*) as count FROM bnwiki_p.langlinks LEFT JOIN bnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bawiki' as source, ll_lang as target, COUNT(*) as count FROM bawiki_p.langlinks LEFT JOIN bawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pnbwiki' as source, ll_lang as target, COUNT(*) as count FROM pnbwiki_p.langlinks LEFT JOIN pnbwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'gawiki' as source, ll_lang as target, COUNT(*) as count FROM gawiki_p.langlinks LEFT JOIN gawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mywiki' as source, ll_lang as target, COUNT(*) as count FROM mywiki_p.langlinks LEFT JOIN mywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lmowiki' as source, ll_lang as target, COUNT(*) as count FROM lmowiki_p.langlinks LEFT JOIN lmowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'fywiki' as source, ll_lang as target, COUNT(*) as count FROM fywiki_p.langlinks LEFT JOIN fywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'yowiki' as source, ll_lang as target, COUNT(*) as count FROM yowiki_p.langlinks LEFT JOIN yowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tgwiki' as source, ll_lang as target, COUNT(*) as count FROM tgwiki_p.langlinks LEFT JOIN tgwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'anwiki' as source, ll_lang as target, COUNT(*) as count FROM anwiki_p.langlinks LEFT JOIN anwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cvwiki' as source, ll_lang as target, COUNT(*) as count FROM cvwiki_p.langlinks LEFT JOIN cvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'scowiki' as source, ll_lang as target, COUNT(*) as count FROM scowiki_p.langlinks LEFT JOIN scowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'swwiki' as source, ll_lang as target, COUNT(*) as count FROM swwiki_p.langlinks LEFT JOIN swwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kywiki' as source, ll_lang as target, COUNT(*) as count FROM kywiki_p.langlinks LEFT JOIN kywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'newiki' as source, ll_lang as target, COUNT(*) as count FROM newiki_p.langlinks LEFT JOIN newiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'iowiki' as source, ll_lang as target, COUNT(*) as count FROM iowiki_p.langlinks LEFT JOIN iowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'guwiki' as source, ll_lang as target, COUNT(*) as count FROM guwiki_p.langlinks LEFT JOIN guwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bpywiki' as source, ll_lang as target, COUNT(*) as count FROM bpywiki_p.langlinks LEFT JOIN bpywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'scnwiki' as source, ll_lang as target, COUNT(*) as count FROM scnwiki_p.langlinks LEFT JOIN scnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ndswiki' as source, ll_lang as target, COUNT(*) as count FROM ndswiki_p.langlinks LEFT JOIN ndswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kuwiki' as source, ll_lang as target, COUNT(*) as count FROM kuwiki_p.langlinks LEFT JOIN kuwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'astwiki' as source, ll_lang as target, COUNT(*) as count FROM astwiki_p.langlinks LEFT JOIN astwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'quwiki' as source, ll_lang as target, COUNT(*) as count FROM quwiki_p.langlinks LEFT JOIN quwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'gdwiki' as source, ll_lang as target, COUNT(*) as count FROM gdwiki_p.langlinks LEFT JOIN gdwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'alswiki' as source, ll_lang as target, COUNT(*) as count FROM alswiki_p.langlinks LEFT JOIN alswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'suwiki' as source, ll_lang as target, COUNT(*) as count FROM suwiki_p.langlinks LEFT JOIN suwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'knwiki' as source, ll_lang as target, COUNT(*) as count FROM knwiki_p.langlinks LEFT JOIN knwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pawiki' as source, ll_lang as target, COUNT(*) as count FROM pawiki_p.langlinks LEFT JOIN pawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'amwiki' as source, ll_lang as target, COUNT(*) as count FROM amwiki_p.langlinks LEFT JOIN amwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ckbwiki' as source, ll_lang as target, COUNT(*) as count FROM ckbwiki_p.langlinks LEFT JOIN ckbwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'iawiki' as source, ll_lang as target, COUNT(*) as count FROM iawiki_p.langlinks LEFT JOIN iawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'napwiki' as source, ll_lang as target, COUNT(*) as count FROM napwiki_p.langlinks LEFT JOIN napwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bugwiki' as source, ll_lang as target, COUNT(*) as count FROM bugwiki_p.langlinks LEFT JOIN bugwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mnwiki' as source, ll_lang as target, COUNT(*) as count FROM mnwiki_p.langlinks LEFT JOIN mnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bat_smgwiki' as source, ll_lang as target, COUNT(*) as count FROM bat_smgwiki_p.langlinks LEFT JOIN bat_smgwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'wawiki' as source, ll_lang as target, COUNT(*) as count FROM wawiki_p.langlinks LEFT JOIN wawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'arzwiki' as source, ll_lang as target, COUNT(*) as count FROM arzwiki_p.langlinks LEFT JOIN arzwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'map_bmswiki' as source, ll_lang as target, COUNT(*) as count FROM map_bmswiki_p.langlinks LEFT JOIN map_bmswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'siwiki' as source, ll_lang as target, COUNT(*) as count FROM siwiki_p.langlinks LEFT JOIN siwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mznwiki' as source, ll_lang as target, COUNT(*) as count FROM mznwiki_p.langlinks LEFT JOIN mznwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'zh_min_nanwiki' as source, ll_lang as target, COUNT(*) as count FROM zh_min_nanwiki_p.langlinks LEFT JOIN zh_min_nanwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'yiwiki' as source, ll_lang as target, COUNT(*) as count FROM yiwiki_p.langlinks LEFT JOIN yiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'fowiki' as source, ll_lang as target, COUNT(*) as count FROM fowiki_p.langlinks LEFT JOIN fowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'sahwiki' as source, ll_lang as target, COUNT(*) as count FROM sahwiki_p.langlinks LEFT JOIN sahwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'barwiki' as source, ll_lang as target, COUNT(*) as count FROM barwiki_p.langlinks LEFT JOIN barwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'vecwiki' as source, ll_lang as target, COUNT(*) as count FROM vecwiki_p.langlinks LEFT JOIN vecwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'sawiki' as source, ll_lang as target, COUNT(*) as count FROM sawiki_p.langlinks LEFT JOIN sawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nahwiki' as source, ll_lang as target, COUNT(*) as count FROM nahwiki_p.langlinks LEFT JOIN nahwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'oswiki' as source, ll_lang as target, COUNT(*) as count FROM oswiki_p.langlinks LEFT JOIN oswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'roa_tarawiki' as source, ll_lang as target, COUNT(*) as count FROM roa_tarawiki_p.langlinks LEFT JOIN roa_tarawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hsbwiki' as source, ll_lang as target, COUNT(*) as count FROM hsbwiki_p.langlinks LEFT JOIN hsbwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'orwiki' as source, ll_lang as target, COUNT(*) as count FROM orwiki_p.langlinks LEFT JOIN orwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'liwiki' as source, ll_lang as target, COUNT(*) as count FROM liwiki_p.langlinks LEFT JOIN liwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pamwiki' as source, ll_lang as target, COUNT(*) as count FROM pamwiki_p.langlinks LEFT JOIN pamwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'sewiki' as source, ll_lang as target, COUNT(*) as count FROM sewiki_p.langlinks LEFT JOIN sewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mrjwiki' as source, ll_lang as target, COUNT(*) as count FROM mrjwiki_p.langlinks LEFT JOIN mrjwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ilowiki' as source, ll_lang as target, COUNT(*) as count FROM ilowiki_p.langlinks LEFT JOIN ilowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'miwiki' as source, ll_lang as target, COUNT(*) as count FROM miwiki_p.langlinks LEFT JOIN miwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cowiki' as source, ll_lang as target, COUNT(*) as count FROM cowiki_p.langlinks LEFT JOIN cowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hifwiki' as source, ll_lang as target, COUNT(*) as count FROM hifwiki_p.langlinks LEFT JOIN hifwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bclwiki' as source, ll_lang as target, COUNT(*) as count FROM bclwiki_p.langlinks LEFT JOIN bclwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mhrwiki' as source, ll_lang as target, COUNT(*) as count FROM mhrwiki_p.langlinks LEFT JOIN mhrwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ganwiki' as source, ll_lang as target, COUNT(*) as count FROM ganwiki_p.langlinks LEFT JOIN ganwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'frrwiki' as source, ll_lang as target, COUNT(*) as count FROM frrwiki_p.langlinks LEFT JOIN frrwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bowiki' as source, ll_lang as target, COUNT(*) as count FROM bowiki_p.langlinks LEFT JOIN bowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ruewiki' as source, ll_lang as target, COUNT(*) as count FROM ruewiki_p.langlinks LEFT JOIN ruewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'glkwiki' as source, ll_lang as target, COUNT(*) as count FROM glkwiki_p.langlinks LEFT JOIN glkwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bhwiki' as source, ll_lang as target, COUNT(*) as count FROM bhwiki_p.langlinks LEFT JOIN bhwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nds_nlwiki' as source, ll_lang as target, COUNT(*) as count FROM nds_nlwiki_p.langlinks LEFT JOIN nds_nlwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'fiu_vrowiki' as source, ll_lang as target, COUNT(*) as count FROM fiu_vrowiki_p.langlinks LEFT JOIN fiu_vrowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pswiki' as source, ll_lang as target, COUNT(*) as count FROM pswiki_p.langlinks LEFT JOIN pswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'vlswiki' as source, ll_lang as target, COUNT(*) as count FROM vlswiki_p.langlinks LEFT JOIN vlswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tkwiki' as source, ll_lang as target, COUNT(*) as count FROM tkwiki_p.langlinks LEFT JOIN tkwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pagwiki' as source, ll_lang as target, COUNT(*) as count FROM pagwiki_p.langlinks LEFT JOIN pagwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'diqwiki' as source, ll_lang as target, COUNT(*) as count FROM diqwiki_p.langlinks LEFT JOIN diqwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'xmfwiki' as source, ll_lang as target, COUNT(*) as count FROM xmfwiki_p.langlinks LEFT JOIN xmfwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'gvwiki' as source, ll_lang as target, COUNT(*) as count FROM gvwiki_p.langlinks LEFT JOIN gvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kmwiki' as source, ll_lang as target, COUNT(*) as count FROM kmwiki_p.langlinks LEFT JOIN kmwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'scwiki' as source, ll_lang as target, COUNT(*) as count FROM scwiki_p.langlinks LEFT JOIN scwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'csbwiki' as source, ll_lang as target, COUNT(*) as count FROM csbwiki_p.langlinks LEFT JOIN csbwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hakwiki' as source, ll_lang as target, COUNT(*) as count FROM hakwiki_p.langlinks LEFT JOIN hakwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kvwiki' as source, ll_lang as target, COUNT(*) as count FROM kvwiki_p.langlinks LEFT JOIN kvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'zeawiki' as source, ll_lang as target, COUNT(*) as count FROM zeawiki_p.langlinks LEFT JOIN zeawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'crhwiki' as source, ll_lang as target, COUNT(*) as count FROM crhwiki_p.langlinks LEFT JOIN crhwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'vepwiki' as source, ll_lang as target, COUNT(*) as count FROM vepwiki_p.langlinks LEFT JOIN vepwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'zh_classicalwiki' as source, ll_lang as target, COUNT(*) as count FROM zh_classicalwiki_p.langlinks LEFT JOIN zh_classicalwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'aywiki' as source, ll_lang as target, COUNT(*) as count FROM aywiki_p.langlinks LEFT JOIN aywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'sowiki' as source, ll_lang as target, COUNT(*) as count FROM sowiki_p.langlinks LEFT JOIN sowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'dvwiki' as source, ll_lang as target, COUNT(*) as count FROM dvwiki_p.langlinks LEFT JOIN dvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nrmwiki' as source, ll_lang as target, COUNT(*) as count FROM nrmwiki_p.langlinks LEFT JOIN nrmwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kwwiki' as source, ll_lang as target, COUNT(*) as count FROM kwwiki_p.langlinks LEFT JOIN kwwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'rmwiki' as source, ll_lang as target, COUNT(*) as count FROM rmwiki_p.langlinks LEFT JOIN rmwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'udmwiki' as source, ll_lang as target, COUNT(*) as count FROM udmwiki_p.langlinks LEFT JOIN udmwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'wuuwiki' as source, ll_lang as target, COUNT(*) as count FROM wuuwiki_p.langlinks LEFT JOIN wuuwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'emlwiki' as source, ll_lang as target, COUNT(*) as count FROM emlwiki_p.langlinks LEFT JOIN emlwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'koiwiki' as source, ll_lang as target, COUNT(*) as count FROM koiwiki_p.langlinks LEFT JOIN koiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ugwiki' as source, ll_lang as target, COUNT(*) as count FROM ugwiki_p.langlinks LEFT JOIN ugwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'stqwiki' as source, ll_lang as target, COUNT(*) as count FROM stqwiki_p.langlinks LEFT JOIN stqwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ladwiki' as source, ll_lang as target, COUNT(*) as count FROM ladwiki_p.langlinks LEFT JOIN ladwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lijwiki' as source, ll_lang as target, COUNT(*) as count FROM lijwiki_p.langlinks LEFT JOIN lijwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'furwiki' as source, ll_lang as target, COUNT(*) as count FROM furwiki_p.langlinks LEFT JOIN furwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'szlwiki' as source, ll_lang as target, COUNT(*) as count FROM szlwiki_p.langlinks LEFT JOIN szlwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mtwiki' as source, ll_lang as target, COUNT(*) as count FROM mtwiki_p.langlinks LEFT JOIN mtwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'aswiki' as source, ll_lang as target, COUNT(*) as count FROM aswiki_p.langlinks LEFT JOIN aswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cbk_zamwiki' as source, ll_lang as target, COUNT(*) as count FROM cbk_zamwiki_p.langlinks LEFT JOIN cbk_zamwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'gnwiki' as source, ll_lang as target, COUNT(*) as count FROM gnwiki_p.langlinks LEFT JOIN gnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pcdwiki' as source, ll_lang as target, COUNT(*) as count FROM pcdwiki_p.langlinks LEFT JOIN pcdwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'piwiki' as source, ll_lang as target, COUNT(*) as count FROM piwiki_p.langlinks LEFT JOIN piwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'gagwiki' as source, ll_lang as target, COUNT(*) as count FROM gagwiki_p.langlinks LEFT JOIN gagwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kshwiki' as source, ll_lang as target, COUNT(*) as count FROM kshwiki_p.langlinks LEFT JOIN kshwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'angwiki' as source, ll_lang as target, COUNT(*) as count FROM angwiki_p.langlinks LEFT JOIN angwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'iewiki' as source, ll_lang as target, COUNT(*) as count FROM iewiki_p.langlinks LEFT JOIN iewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'acewiki' as source, ll_lang as target, COUNT(*) as count FROM acewiki_p.langlinks LEFT JOIN acewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'extwiki' as source, ll_lang as target, COUNT(*) as count FROM extwiki_p.langlinks LEFT JOIN extwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nvwiki' as source, ll_lang as target, COUNT(*) as count FROM nvwiki_p.langlinks LEFT JOIN nvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'frpwiki' as source, ll_lang as target, COUNT(*) as count FROM frpwiki_p.langlinks LEFT JOIN frpwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'dsbwiki' as source, ll_lang as target, COUNT(*) as count FROM dsbwiki_p.langlinks LEFT JOIN dsbwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kabwiki' as source, ll_lang as target, COUNT(*) as count FROM kabwiki_p.langlinks LEFT JOIN kabwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mwlwiki' as source, ll_lang as target, COUNT(*) as count FROM mwlwiki_p.langlinks LEFT JOIN mwlwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'snwiki' as source, ll_lang as target, COUNT(*) as count FROM snwiki_p.langlinks LEFT JOIN snwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lezwiki' as source, ll_lang as target, COUNT(*) as count FROM lezwiki_p.langlinks LEFT JOIN lezwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lnwiki' as source, ll_lang as target, COUNT(*) as count FROM lnwiki_p.langlinks LEFT JOIN lnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pflwiki' as source, ll_lang as target, COUNT(*) as count FROM pflwiki_p.langlinks LEFT JOIN pflwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'krcwiki' as source, ll_lang as target, COUNT(*) as count FROM krcwiki_p.langlinks LEFT JOIN krcwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hawwiki' as source, ll_lang as target, COUNT(*) as count FROM hawwiki_p.langlinks LEFT JOIN hawwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pdcwiki' as source, ll_lang as target, COUNT(*) as count FROM pdcwiki_p.langlinks LEFT JOIN pdcwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'xalwiki' as source, ll_lang as target, COUNT(*) as count FROM xalwiki_p.langlinks LEFT JOIN xalwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'rwwiki' as source, ll_lang as target, COUNT(*) as count FROM rwwiki_p.langlinks LEFT JOIN rwwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'myvwiki' as source, ll_lang as target, COUNT(*) as count FROM myvwiki_p.langlinks LEFT JOIN myvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'novwiki' as source, ll_lang as target, COUNT(*) as count FROM novwiki_p.langlinks LEFT JOIN novwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'towiki' as source, ll_lang as target, COUNT(*) as count FROM towiki_p.langlinks LEFT JOIN towiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'klwiki' as source, ll_lang as target, COUNT(*) as count FROM klwiki_p.langlinks LEFT JOIN klwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'arcwiki' as source, ll_lang as target, COUNT(*) as count FROM arcwiki_p.langlinks LEFT JOIN arcwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cdowiki' as source, ll_lang as target, COUNT(*) as count FROM cdowiki_p.langlinks LEFT JOIN cdowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kaawiki' as source, ll_lang as target, COUNT(*) as count FROM kaawiki_p.langlinks LEFT JOIN kaawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bjnwiki' as source, ll_lang as target, COUNT(*) as count FROM bjnwiki_p.langlinks LEFT JOIN bjnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lowiki' as source, ll_lang as target, COUNT(*) as count FROM lowiki_p.langlinks LEFT JOIN lowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kbdwiki' as source, ll_lang as target, COUNT(*) as count FROM kbdwiki_p.langlinks LEFT JOIN kbdwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'papwiki' as source, ll_lang as target, COUNT(*) as count FROM papwiki_p.langlinks LEFT JOIN papwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hawiki' as source, ll_lang as target, COUNT(*) as count FROM hawiki_p.langlinks LEFT JOIN hawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'avwiki' as source, ll_lang as target, COUNT(*) as count FROM avwiki_p.langlinks LEFT JOIN avwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tywiki' as source, ll_lang as target, COUNT(*) as count FROM tywiki_p.langlinks LEFT JOIN tywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tpiwiki' as source, ll_lang as target, COUNT(*) as count FROM tpiwiki_p.langlinks LEFT JOIN tpiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bxrwiki' as source, ll_lang as target, COUNT(*) as count FROM bxrwiki_p.langlinks LEFT JOIN bxrwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nawiki' as source, ll_lang as target, COUNT(*) as count FROM nawiki_p.langlinks LEFT JOIN nawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mdfwiki' as source, ll_lang as target, COUNT(*) as count FROM mdfwiki_p.langlinks LEFT JOIN mdfwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lbewiki' as source, ll_lang as target, COUNT(*) as count FROM lbewiki_p.langlinks LEFT JOIN lbewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'jbowiki' as source, ll_lang as target, COUNT(*) as count FROM jbowiki_p.langlinks LEFT JOIN jbowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'wowiki' as source, ll_lang as target, COUNT(*) as count FROM wowiki_p.langlinks LEFT JOIN wowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'roa_rupwiki' as source, ll_lang as target, COUNT(*) as count FROM roa_rupwiki_p.langlinks LEFT JOIN roa_rupwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'srnwiki' as source, ll_lang as target, COUNT(*) as count FROM srnwiki_p.langlinks LEFT JOIN srnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'igwiki' as source, ll_lang as target, COUNT(*) as count FROM igwiki_p.langlinks LEFT JOIN igwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tetwiki' as source, ll_lang as target, COUNT(*) as count FROM tetwiki_p.langlinks LEFT JOIN tetwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nsowiki' as source, ll_lang as target, COUNT(*) as count FROM nsowiki_p.langlinks LEFT JOIN nsowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kgwiki' as source, ll_lang as target, COUNT(*) as count FROM kgwiki_p.langlinks LEFT JOIN kgwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tyvwiki' as source, ll_lang as target, COUNT(*) as count FROM tyvwiki_p.langlinks LEFT JOIN tyvwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'abwiki' as source, ll_lang as target, COUNT(*) as count FROM abwiki_p.langlinks LEFT JOIN abwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ltgwiki' as source, ll_lang as target, COUNT(*) as count FROM ltgwiki_p.langlinks LEFT JOIN ltgwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'sdwiki' as source, ll_lang as target, COUNT(*) as count FROM sdwiki_p.langlinks LEFT JOIN sdwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'zuwiki' as source, ll_lang as target, COUNT(*) as count FROM zuwiki_p.langlinks LEFT JOIN zuwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'zawiki' as source, ll_lang as target, COUNT(*) as count FROM zawiki_p.langlinks LEFT JOIN zawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'omwiki' as source, ll_lang as target, COUNT(*) as count FROM omwiki_p.langlinks LEFT JOIN omwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'chywiki' as source, ll_lang as target, COUNT(*) as count FROM chywiki_p.langlinks LEFT JOIN chywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'twwiki' as source, ll_lang as target, COUNT(*) as count FROM twwiki_p.langlinks LEFT JOIN twwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'rmywiki' as source, ll_lang as target, COUNT(*) as count FROM rmywiki_p.langlinks LEFT JOIN rmywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'cuwiki' as source, ll_lang as target, COUNT(*) as count FROM cuwiki_p.langlinks LEFT JOIN cuwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'maiwiki' as source, ll_lang as target, COUNT(*) as count FROM maiwiki_p.langlinks LEFT JOIN maiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'chrwiki' as source, ll_lang as target, COUNT(*) as count FROM chrwiki_p.langlinks LEFT JOIN chrwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tnwiki' as source, ll_lang as target, COUNT(*) as count FROM tnwiki_p.langlinks LEFT JOIN tnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'gotwiki' as source, ll_lang as target, COUNT(*) as count FROM gotwiki_p.langlinks LEFT JOIN gotwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'biwiki' as source, ll_lang as target, COUNT(*) as count FROM biwiki_p.langlinks LEFT JOIN biwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pihwiki' as source, ll_lang as target, COUNT(*) as count FROM pihwiki_p.langlinks LEFT JOIN pihwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'rnwiki' as source, ll_lang as target, COUNT(*) as count FROM rnwiki_p.langlinks LEFT JOIN rnwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'smwiki' as source, ll_lang as target, COUNT(*) as count FROM smwiki_p.langlinks LEFT JOIN smwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'bmwiki' as source, ll_lang as target, COUNT(*) as count FROM bmwiki_p.langlinks LEFT JOIN bmwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'sswiki' as source, ll_lang as target, COUNT(*) as count FROM sswiki_p.langlinks LEFT JOIN sswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mowiki' as source, ll_lang as target, COUNT(*) as count FROM mowiki_p.langlinks LEFT JOIN mowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'iuwiki' as source, ll_lang as target, COUNT(*) as count FROM iuwiki_p.langlinks LEFT JOIN iuwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'xhwiki' as source, ll_lang as target, COUNT(*) as count FROM xhwiki_p.langlinks LEFT JOIN xhwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kiwiki' as source, ll_lang as target, COUNT(*) as count FROM kiwiki_p.langlinks LEFT JOIN kiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'pntwiki' as source, ll_lang as target, COUNT(*) as count FROM pntwiki_p.langlinks LEFT JOIN pntwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'lgwiki' as source, ll_lang as target, COUNT(*) as count FROM lgwiki_p.langlinks LEFT JOIN lgwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tswiki' as source, ll_lang as target, COUNT(*) as count FROM tswiki_p.langlinks LEFT JOIN tswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'eewiki' as source, ll_lang as target, COUNT(*) as count FROM eewiki_p.langlinks LEFT JOIN eewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'akwiki' as source, ll_lang as target, COUNT(*) as count FROM akwiki_p.langlinks LEFT JOIN akwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tiwiki' as source, ll_lang as target, COUNT(*) as count FROM tiwiki_p.langlinks LEFT JOIN tiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'fjwiki' as source, ll_lang as target, COUNT(*) as count FROM fjwiki_p.langlinks LEFT JOIN fjwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kswiki' as source, ll_lang as target, COUNT(*) as count FROM kswiki_p.langlinks LEFT JOIN kswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'sgwiki' as source, ll_lang as target, COUNT(*) as count FROM sgwiki_p.langlinks LEFT JOIN sgwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ffwiki' as source, ll_lang as target, COUNT(*) as count FROM ffwiki_p.langlinks LEFT JOIN ffwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'nywiki' as source, ll_lang as target, COUNT(*) as count FROM nywiki_p.langlinks LEFT JOIN nywiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'stwiki' as source, ll_lang as target, COUNT(*) as count FROM stwiki_p.langlinks LEFT JOIN stwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'vewiki' as source, ll_lang as target, COUNT(*) as count FROM vewiki_p.langlinks LEFT JOIN vewiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'crwiki' as source, ll_lang as target, COUNT(*) as count FROM crwiki_p.langlinks LEFT JOIN crwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'dzwiki' as source, ll_lang as target, COUNT(*) as count FROM dzwiki_p.langlinks LEFT JOIN dzwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ikwiki' as source, ll_lang as target, COUNT(*) as count FROM ikwiki_p.langlinks LEFT JOIN ikwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'tumwiki' as source, ll_lang as target, COUNT(*) as count FROM tumwiki_p.langlinks LEFT JOIN tumwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'chwiki' as source, ll_lang as target, COUNT(*) as count FROM chwiki_p.langlinks LEFT JOIN chwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'ngwiki' as source, ll_lang as target, COUNT(*) as count FROM ngwiki_p.langlinks LEFT JOIN ngwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'iiwiki' as source, ll_lang as target, COUNT(*) as count FROM iiwiki_p.langlinks LEFT JOIN iiwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'chowiki' as source, ll_lang as target, COUNT(*) as count FROM chowiki_p.langlinks LEFT JOIN chowiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'mhwiki' as source, ll_lang as target, COUNT(*) as count FROM mhwiki_p.langlinks LEFT JOIN mhwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'aawiki' as source, ll_lang as target, COUNT(*) as count FROM aawiki_p.langlinks LEFT JOIN aawiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'kjwiki' as source, ll_lang as target, COUNT(*) as count FROM kjwiki_p.langlinks LEFT JOIN kjwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'howiki' as source, ll_lang as target, COUNT(*) as count FROM howiki_p.langlinks LEFT JOIN howiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'muswiki' as source, ll_lang as target, COUNT(*) as count FROM muswiki_p.langlinks LEFT JOIN muswiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'krwiki' as source, ll_lang as target, COUNT(*) as count FROM krwiki_p.langlinks LEFT JOIN krwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	UNION ALL
(SELECT 'hzwiki' as source, ll_lang as target, COUNT(*) as count FROM hzwiki_p.langlinks LEFT JOIN hzwiki_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	;