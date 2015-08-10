Article Translation Metrics
===========================
#### Data Analysis scripts to identify translated articles in Wikipedia.
The aim of this set of scripts is take a Wikipedia language and to assess the the fraction of pages from that langauge that were created by translating another, given, language.

### Using The Scripts
The Wikipedia data that is used here is from two avilable data structures, with different design. 
* To run the MySQL Scripts, you need to work with the SQL Tables avilable through tool labs (using ssh.).
* To run the python scripts, you first need to have python 3 (I know, it's stupid... I might transfer everything into python 3 eventually) to upload the data. The data is from the dumps. You need to download the dump...-meta-history.xml.bz2 files (the one that includes the revision text). No need to unzip it, the program iterates over the zipped file. 
* To run the translation functions, you need to use python.

### Folder List
A. Coreelations of Wikis
includes all of the scripts and results of the pre-task to calculate the similarity between every two languages in Wikipediam by calculating the corellations between the pages. A result in the form of a corellation matrix for the Wikis above 50,000 articles was created using R. 
All results and scripts are included.

B. Queries
includes all the MySQL queries used to build the page lists: Hebrew candidates, English revisions, and other more basic scripts.

C. WikiTranslations
includes the functions that calculate the similarity metrics between the langauges. It also includes other functions that find charictaristics for starting the page as a translation.

D. Results
includes current (really basic) results.

E. DumpParser
the goal here is twofold:
It includes functions that read the dumps and extract the revision text for the WikiTranslations functions.
Second, it creates a "smart" compressor of the revisions to be used later. The compressor is taken linear edits by the same editor and turns it into one edit.

### Notes
The project is still ongoing so important functions and scripts are still in the programing (or planned) stage. 

### Required dependencies
+ [MediaWiki Utilities](https://github.com/halfak/Mediawiki-Utilities.) python 3 package by Aaron Halfaker.
+ Python, Python 3.
+ MySQL.
+ R.

