# Cleaning an ordering co-ocurrence matrix of languages for wikipedia

library(ggplot2)
library(RColorBrewer)
setwd("~/My School/Wikipedia Project")
dataLang <- read.csv("lang_counts.csv")
dataLang <- subset(dataLang, sourceWiki != "hz" & targetWiki != "hz")
dataLang <- subset(dataLang, targetWiki != "zh-cn" & targetWiki != "zh-tw" & targetWiki != "yue" & targetWiki != "tokipona")
summary(dataLang)
dataLang$prec <- (dataLang$count/dataLang$total)*100
dataLang$prec[dataLang$prec > 100] <- 100
langTotals <-unique(subset(dataLang[c("sourceWiki","language","total")],total > 50000))
#keepLang <- as.list(langTotals$sourceWiki)
dataLangTop <- dataLang[dataLang$targetWiki %in% langTotals$sourceWiki, ]
dataLangTop <- dataLangTop[dataLangTop$sourceWiki %in% langTotals$sourceWiki, ]
dataLangTop$sourceWiki <- with(dataLangTop, reorder(sourceWiki, -total))
dataLangTop$targetWiki <- with(dataLangTop, reorder(targetWiki, total))
dataLangTop <- dataLangTop[order(-dataLangTop$total),]

(p <- ggplot(dataLangTop, aes(x = sourceWiki, y = targetWiki, fill = prec)) + geom_tile(colour = "white")
# scale_fill_gradient(pallete = "YlOrRd")
+ scale_fill_gradient(low = "lightgoldenrod1",high = "red4", name = "Precentage")
+ theme(axis.text.x = element_text(angle = 90, hjust = 0.8, vjust = 0), axis.text.y = element_text(hjust = 0.8, vjust = 0)))

ggsave("Langlinks Heatmap.pdf", width = 10, height = 8, dpi = 150)
