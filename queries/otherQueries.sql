
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

# Using Wikidata database (he) to make coocurence calculations
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

# Finding talk pages ids of the study set
SELECT * 
FROM hewiki_p.page
WHERE page_namespace = 1
AND page_title in ( "טום_לרר",
"היינריך_בל",
"החלקת_שיער",
"גמברו_רוסו",
"גדר_הארנבים_האוסטרלית",
"איווקו",
"איגנוסטיות",
"אנרגיה_הידרואלקטרית",
"דו-סוכר",
"יהודה_פרל",
"שואב_אבק",
"בנפיקה_ליסבון",
"זוג_שזור",
"רשת_הכבישים_הטרנס-אפריקאית",
"צ'יטי_צ'יטי_בנג_בנג",
"זיכרון_נוהלי",
"מלחמת_גאליה",
"ג'ון_שרימפטון",
"צינור_הנפט_הטרנס-ערבי",
"2001_בארצות_הברית",
"האיש_הזקן_מהוי",
"דה_הבילנד_טייגר_מות'",
"גשם_של_פלאפל_2",
"ציביליזציות_גוועות",
"מחנאות",
"ממלכת_פולין_(1916-1918)",
"כנסיית_הזיכרון_על_שם_הקייזר_וילהלם",
"רעו",
"מועדון_כדורגל_פרנקפורט",
"האלה_האם",
"ריינהולד_מק",
"סקאומורפיזם&direction=next",
"קרנליאן",
"אלימיה",
"אפגני_(מטבע)",
"אינדוקציה_לאחור",
"תעשיות_הברזל_בפלקלינגן",
"בוב_סינקלר",
"קצ'קמט",
"ייבוש_בריסוס",
"פיליפ_מקסס",
"סילס_מרנר",
"Misagh-2",
"רולאן_גארוס",
"אנטוניו_חוסה_דה_סוקרה",
"אדוארד_לימונוב",
"היסטוריה_של_רפובליקת_מולדובה",
"פרפרים_בבטן",
"בוש_(להקה)",
"קריאת_מערכת",
"קריאת_מערכת",
"סבליאבה",
"ויקטור_איוואנוב",
"אלכס_ריידר",
"אנטולי_ריבקוב",
"ראש_ממשלת_טורקיה",
"התרסקות",
"דינה_פרוניצ'בה",
"ננואלקטרוניקה",
"החצים_האדומים",
"חניבעל_מונומאכוס",
"אנטוניו_לופס_גררו",
"אוניברסיטת_מיאמי",
"המוזיאון_לאמנות_מודרנית",
"מחוזות_ורמונט",
"הדגל_הנוצרי",
"ירבעם_השני",
"Going_Under",
"רופי_המפרץ_הפרסי",
"Peace_in_the_Valley",
"נוירוג'נסיס",
"דטרמיננטת_דודונה",
"גבריאל_ריסר",
"חגיגת",
"Component_video",
"כבישה",
"StreetDance_3D",
"I'm_Yours",
"אליזבת_הרטמן",
"קרב_ינקאו_(1645)",
"1285",
"ויידמה",
"קונסטנטין_נובוסלוב",
"אמי_נתר",
"מספרי_לוקאס",
"דרבי_(עיר)",
"נמל_החלל_קייפ_קנוורל",
"חיים_סולובייצ'יק_(היסטוריון)",
"ג'ירולמו_סבונרולה",
"שותי",
"פטר_קארלסון_(שחקן_הוקי_קרח)",
"העצב_המצדיד",
"דניס_ריצ'י",
"דוכלורואתאן",
"לנבל",
"ג'ים_היינס_(סופר)",
"השושלת_המרינית",
"תחרת_סלילים",
"H&M",
"ניו_יורק_איילנדרס"
)
;

# Finding the edit summaries for the study set
SELECT rev_id, rev1.rev_page, rev_timestamp, rev_comment
FROM 
    (SELECT rev_page, rev_timestamp AS max_time 
     FROM hewiki_p.revision 
     WHERE rev_id IN (
        1375915,
        178722,
        13966928,
        8573836,
        11552613,
        11479375,
        13387750,
        845546,
        332564,
        12124736,
        754266,
        355161,
        102216,
        14331336,
        5680702,
        12059037,
        14873946,
        15049772,
        3687981,
        9979812,
        7624560,
        13421599,
        13380242,
        14868836,
        1449503,
        762964,
        3665077,
        589607,
        2263096,
        1880916,
        2460888,
        13341609,
        3274092,
        15682292,
        490691,
        7930197,
        15643822,
        13717617,
        7078869,
        7816636,
        13486057,
        5802447,
        3001934,
        1488581,
        2650487,
        13518820,
        3345065,
        4168044,
        698827,
        1069299,
        1069299,
        15661908,
        10268474,
        10767724,
        12216499,
        3829210,
        1218617,
        12282366,
        16023648,
        15839569,
        17257949,
        6435708,
        6253754,
        811147,
        17312099,
        15497782,
        27618,
        10814153,
        3480330,
        6704870,
        13314860,
        10139706,
        10432961,
        162734,
        1861606,
        11364964,
        12078476,
        10394726,
        12498833,
        5143263,
        4226248,
        14909647,
        9416303,
        2074499,
        2067728,
        4324764,
        11002158,
        5253299,
        629475,
        3221670,
        9325334,
        13110716,
        11351740,
        1676293,
        2623767,
        6375504,
        14362059,
        6699168,
        8486714,
        3483141,
        17127835
        )) AS rev1
LEFT JOIN hewiki_p.revision AS rev2
ON rev1.rev_page = rev2.rev_page
AND rev2.rev_timestamp <= max_time
;


# Connecting between Hebrew redirect table to the target page.
SELECT redirect_id, redirect_title, page.page_id AS target_id, rd_title AS target_title FROM
(SELECT rd_from AS redirect_id, page_title as redirect_title, rd_title 
FROM hewiki_p.redirect 
LEFT JOIN hewiki_p.page 
ON redirect.rd_from = page.page_id
WHERE page_namespace = 0
AND rd_namespace = 0) as redirect
LEFT JOIN hewiki_p.page
ON redirect.rd_title = page_title
WHERE page_namespace = 0
;

# Connecting between English redirect table to the target page.
SELECT redirect_id, redirect_title, page.page_id AS target_id, rd_title AS target_title FROM
(SELECT rd_from AS redirect_id, page_title as redirect_title, rd_title 
FROM enwiki_p.redirect 
LEFT JOIN enwiki_p.page 
ON redirect.rd_from = page.page_id
WHERE page_namespace = 0
AND rd_namespace = 0) as redirect
LEFT JOIN enwiki_p.page
ON redirect.rd_title = page_title
WHERE page_namespace = 0
;







