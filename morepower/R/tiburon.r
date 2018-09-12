intake <- function(brand){
  if (brand=="AEM" | brand=="aem"){
    return (10)
  } else if(brand=="K&N" | brand=="k&n"){
    return (12)
  }
  else{
    return (4)
  }
}

#' Title
#'
#' @param brand
#' @param diameter
#'
#' @return
#' @export
#'
#' @examples
headers <- function(brand, diameter){
  if (brand=="dc-sports" | brand=="DC-Sports" | brand=="DC Sports" & diameter==2.5){
    return (15)
  } else if(brand=="dc-sports" | brand=="DC-Sports" | brand=="DC Sports" & diameter==2.25){
    return (12)
  }
  else{
    return (8)
  }
}

exhaust <- function(brand, diameter){
  if (brand=="dc-sports" | brand=="DC-Sports" | brand=="DC Sports" & diameter==2.5){
    return (10)
  } else if(brand=="Borla" | brand=="borla" & diameter==2.25){
    return (8)
  }
  else{
    return (5)
  }
}

bbtb <- function(){

}

supercharger <- function(){

}

turbocharger <- function(){

}
