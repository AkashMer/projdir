createFramework <- function(..., docs = FALSE) {

    if(!dir.exists("data")) dir.create("data") # Creates a data subdirectory

    if(!dir.exists("R")) dir.create("R") # Creates an R subdirectory for code

    if(!dir.exists("results")) dir.create("results") # For results

    if(docs) dir.create("docs") # For gh-pages website

    dir.create(...) # Creates any other desired subdirectories or files wanted
    # by the user
}
