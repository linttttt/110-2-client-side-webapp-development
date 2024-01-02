tag_ui <-function(){
  tags$div(class = "Frame",
           tags$div(class = "Frame-Rectangle"),
           tags$div(class = "Frame-Polygon"),
           tags$div(class = "Frame-Ellipse"))
}
tag_dependency <- function(){
  htmltools::htmlDependency(
    name="card",
    version="1.0.0",
    src=c(file=normalizePath(".")),
    style="card.css",
    all_files = F
  )}
ui <- function(){
  tagList(tag_ui(), tag_dependency())
}
ui() |> browseTag2()
