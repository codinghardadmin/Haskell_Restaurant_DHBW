-- anzahl :: (Int,Int,Int) -> String -> Int
-- anzahl (year,month,day) article = filter (\((a,b,c),(d,e),f) -> a == year && b == month && c == day) (buchungen)

erstes (x:_) = x
filterGetArtikelnummer (id,_,_,_,_) = id
filterArticleName a = filterGetArtikelnummer(erstes (filter (\(_,article,category,_,_) -> article == a || category == a) (artikel)))


-- anzahl :: (Int,Int,Int) -> String -> Int
anzahl (y,m,d) a = length (filterArticleDate (y,m,d))
  where
    filterArticleDate (y,m,d) = filter (\((year,month,day),(_,_),_) -> year == y && month == m && day == d && a == filterArticleName (a)) (buchungen)
     

-- umsatz :: (Int,Int,Int) -> String -> Float
-- gewinn :: (Int,Int,Int) -> String -> Float
-- topAnzahl :: (Int,Int) -> (String,Int)
-- flopAnzahl :: (Int,Int) -> (String,Int)
-- topUmsatz :: (Int,Int) -> (String,Float)
-- flopUmsatz :: (Int,Int) -> (String,Float)
-- topGewinn :: (Int,Int) -> (String,Float)
-- flopGewinn :: (Int,Int) -> (String,Float)