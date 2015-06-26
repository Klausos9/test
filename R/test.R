test <- function(input){
        newdata <- if (is.character(input) && file.exists(input)) {
                read.csv(input)
        }
        else {
                as.data.frame(input)
        }
        stopifnot("x" %in% names(newdata))
        newdata$x <- as.numeric(newdata$age)
        newdata$tv <- sqrt(newdata$x)
        return(newdata)
}