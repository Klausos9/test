test <- function(x=""){
        if (x == "") {
                stop("Tell me x value!")
        }
        list(message = paste("hello", x, "! This is", R.Version()$version.string))
}