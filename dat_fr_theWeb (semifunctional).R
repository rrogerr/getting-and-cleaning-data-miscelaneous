library(XML)

url <- "http://scholar.google.com/citations?user=HI-I6C0AAAAJ&hl=en"

#con <- url(url)

# htmlcode <- readLines(con)
# close(con)
# htmlcode

html <- htmlTreeParse(url, useInternalNodes = T)
xpathSApply(html, "//title", xmlValue)
# xpathSApply(html, "//td[@id='col-citedby']", xmlValue)
# above returns empty list

library(httr)
# html2=GET(url)# another way to get html with the same url defined above
# content2 = content(html2,as="text")#struct content as text
# parsedHtml = htmlParse(content2,asText = TRUE)#it should be the same as using XML package
# xpathSApply(parsedHtml,"//title",xmlValue)
# xpathSApply(parsedHtml,"//td[@id='col-citedby']",xmlValue)#invalid again

# accessing websites with passwords
pg1 = GET("http://httpbin.org/basic-auth/user/passwd") #get login page
pg1

pg2 = GET("http://httpbin.org/basic-auth/user/passwd", authenticate("user", "passwd"))
pg2

names(pg2)
