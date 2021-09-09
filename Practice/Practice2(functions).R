## Playing around  some functions

#Lets draft a budget for firm X

revenue<- function(sales, dividends, grants, reinvestment){    #firm X revenue is a fnx of ()
  
  rev<- sum(sales, dividends, grants, reinvestment)    #the sum gives the total revenue
  
  return(rev)
  
}

revenue(800,500,200,400)           #revenue is in thousands (ooo) of GH$


expenditure<- function(salpaymnt,utility,fueling,internet,rent ){       #expenditure is a fnx of ()
  
  expnd<- sum(salpaymnt,utility,fueling,internet,rent )        #the sum gives the total expenditure
  
  return(expnd)
  
}

expenditure(1200,100,400,600,500)     #expenditure is in thousands of GH$



profit<- function(revenue, expenditure){
  
  prof<- revenue-expenditure
  
  return(prof)
}

#profit(revenue,expenditure)

profit(1900,2800)


 ##combining functions with control structures
profit<- -900
if  (profit > 0) {
  "Firm X makes profit"
  
}else{
  
  "firm X makes a loss"
}










  