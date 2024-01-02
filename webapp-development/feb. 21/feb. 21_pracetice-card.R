tag_ui <-function(){
  tags$div(class = "englishCard")
}
tag_dependency <- function(){
  htmltools::htmlDependency(
    name="encard",
    version="1.0.0",
    src=c(file=normalizePath(".")),
    style="encard.css",
    all_files = F
  )}
ui <- function(){
  tagList(tag_ui(), tag_dependency())
}
ui() |> browseTag2()
