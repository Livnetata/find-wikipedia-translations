def sql_query_langlinks(current_wiki):
	return """(SELECT '%s' as source, ll_lang as target, COUNT(*) as count FROM %s_p.langlinks LEFT JOIN %s_p.page
	ON page_id = ll_from
	WHERE page_namespace = 0
	GROUP BY ll_lang)
	""" % (current_wiki, current_wiki.replace("-", "_") + "wiki", current_wiki.replace("-", "_") + "wiki")

def sql_find_wrong_links(current_wiki):
	return """(SELECT DISTINCT '%s' as source, page_id, page_title, ll_lang, ll_title FROM %s_p.langlinks LEFT JOIN %s_p.page
	ON page_id = ll_from 
	WHERE page_namespace = 0
	AND (ll_lang = "tokipona" OR ll_lang = "yue" OR ll_lang = "zh-cn" OR ll_lang = "zh-tw"))
	""" % (current_wiki, current_wiki.replace("-", "_"), current_wiki.replace("-", "_"))

lang_list = ["en", "sv", "nl", "de", "fr", "war", "ceb", "ru", "it", "es", "vi", "pl", "ja", "pt", "zh", "uk", "ca", "fa", "no", "fi", "id", "ar", "sr", "cs", "ko", "sh", "hu", "ms", "ro", "tr", "min", "kk", "eo", "eu", "sk", "da", "bg", "lt", "he", "hr", "sl", "hy", "et", "uz", "vo","gl", "simple", "nn", "hi", "el", "la", "az", "th", "oc", "ka", "mk", "be", "ce", "new", "ta", "tt", "ur", "pms", "tl", "cy", "te", "lv", "bs", "be-x-old", "mg", "ht", "br", "sq", "jv", "lb", "mr", "is", "ml", "zh-yue", "af", "bn", "ba", "pnb", "ga", "my", "lmo", "fy", "yo", "tg", "an","cv", "sco", "sw", "ky", "ne", "io", "gu", "bpy", "scn", "nds", "ku", "ast", "qu", "gd", "als", "su", "kn", "pa", "am", "ckb", "ia", "nap", "bug", "mn", "bat-smg", "wa", "arz", "map-bms", "si", "mzn", "zh-min-nan", "yi", "fo", "sah", "bar", "vec", "sa", "nah", "os", "roa-tara", "hsb", "or", "li", "pam", "se","mrj", "ilo", "mi", "co", "hif", "bcl", "mhr", "gan", "frr", "bo", "rue", "glk", "bh", "nds-nl", "fiu-vro", "ps", "vls", "tk", "pag", "diq", "xmf", "gv", "km", "sc", "csb", "hak", "kv", "zea", "crh", "vep", "zh-classical", "ay", "so", "dv", "nrm", "kw", "rm", "udm", "wuu", "eml", "koi", "ug", "stq", "lad", "lij","fur", "szl", "mt", "as", "cbk-zam", "gn", "pcd", "pi", "gag", "ksh", "ang", "ie", "ace", "ext", "nv", "frp", "dsb", "kab", "mwl", "sn", "lez", "ln", "pfl", "krc", "haw", "pdc", "xal", "rw", "myv", "nov", "to", "kl", "arc", "cdo", "kaa", "bjn", "lo", "kbd", "pap", "ha", "av", "ty", "tpi", "bxr", "na","mdf", "lbe", "jbo", "wo", "roa-rup", "srn", "ig", "tet", "nso", "kg", "tyv", "ab", "ltg", "sd", "zu", "za", "om", "chy", "tw", "rmy", "cu", "mai", "chr", "tn", "got", "bi", "pih", "rn", "sm", "bm", "ss", "mo", "iu", "xh", "ki", "pnt", "lg", "ts", "ee", "ak", "ti", "fj", "ks", "sg", "ff","ny", "st", "ve", "cr", "dz", "ik", "tum", "ch", "ng", "ii", "cho", "mh", "aa", "kj", "ho", "mus", "kr", "hz"]
#lang_query=[sql_query_langlinks(lang) for lang in lang_list]
#query_all = "UNION ALL\n".join(lang_query)
#query_all = query_all + ";"
#sql_file = open("SQL_langlinks.sql","w")
#sql_file.write(query_all)
#sql_file.close()
#print sql_query_langlinks("he")

lang_query=[sql_find_wrong_links(lang + "wiki") for lang in lang_list]
query_all = "UNION ALL\n".join(lang_query)
query_all = query_all + ";"
print query_all
#print sql_find_wrong_links("su" + "wiki")




