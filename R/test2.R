test2 <- function (input) 
{
        newdata <- if (is.character(input) && file.exists(input)) {
                read.csv(input)
        }
        else {
                as.data.frame(input)
        }
        stopifnot("age" %in% names(newdata))
        stopifnot("marital" %in% names(newdata))
        newdata$age <- as.numeric(newdata$age)
        newdata$tv <- as.vector(predict.gam(tv_model, newdata = newdata))
        return(newdata)
}