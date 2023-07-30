#' Creates a basic framework for your new R project
#'
#' @description
#' Creates the following subdirectories by default if not already present
#' in the working directory of the newly created R project.
#'
#' * data - to store all the data for your project.
#' * R - to store all your R scripts and Rmarkdowns.
#' * results - to store the results of your project.
#'
#' @param ... A character vector which contains PATHS to the desired
#' subdirectories and files beyond the basic structure created.
#' @param returnList Logical value to indicate if a list containing the
#' directory names in the root folder of the directory is to be returned.
#' (default = FALSE)
#' @param docs Logical value to indicate if a docs subdirectory is required for
#' gh-pages website deployment. (default = FALSE)
#'
#' @return Status messages and a list containing the directory names in the
#' topmost level if `returnList` is TRUE.
#' @export
#'
#' @examples
#' createFramework(returnList = TRUE, docs = TRUE)

createFramework <- function(..., returnList = FALSE, docs = FALSE) {

    print("Please Wait!")

    if(!dir.exists("data")) dir.create("data") # Creates a data subdirectory

    if(!dir.exists("R")) dir.create("R") # Creates an R subdirectory for code

    if(!dir.exists("results")) dir.create("results") # For results

    if(docs) dir.create("docs") # For gh-pages website

    dir.create(path = "...") # Creates any other desired subdirectories or files wanted
    # by the user

    print("Your framework is ready")

    # Returning a list of directory names in the root directory of the project
    if(returnList) dir()
}
