tag_enCard <-function(titleWord, explanation, wordLevel, ...){
  tags$div(class = "enCard", ...,
           tags$div(class = "enCard-background",
                    tags$div(class = "enCard-background-icon",
                             tags$div(class = "enCard-background-icon-sound",
                                      tags$img(class = "icon-sound",
                                               src = "lib/icon-1/img-sound.svg")),
                             tags$div(class = "enCard-background-icon-heart",
                                      tags$img(class = "icon-heart",
                                               src = "lib/icon-1/img-heart.svg")))),
           tags$div(class = "enCard-content",
                    tags$div(class = "enCard-content-word",
                             tags$div(class = "enCard-content-word-title",
                                      titleWord),
                             tags$div(class = "enCard-content-word-expl",
                                      explanation)),
                    tags$div(class = "enCard-content-lv",
                             tags$div(class = "enCard-content-lv-A2",
                                      wordLevel)),
                    tags$div(class = "enCard-content-teacher",
                             tags$div(class = "enCard-content-teacher-icon",
                                      tags$img(class = "icon-teacher",
                                               src = "lib/icon-1/img-teacher1.svg")),
                             tags$div(class = "enCard-content-teacher-word",
                                      "前往VoiceTube 聽 Leila 老師如何應用單字"),
                             tags$div(class = "enCard-content-teacher-triange",
                                      tags$img(class = "icon-tringle",
                                               src = "lib/icon-1/img-triangle.svg")))))
}
enCard_dependency <- function(){
  htmltools::htmlDependency(
    name="enCard",
    version="1.0.0",
    src=c(file=normalizePath(".")),
    style="enCard.css",
    all_files = F
  )}
ui_enCard <- function(titleWord, explanation, wordLevel, dependency=NULL, ...){
  tagList(tag_enCard(titleWord, explanation, wordLevel, ...), enCard_dependency(), dependency)
}
icon_dependency <- function(){
  htmltools::htmlDependency(
    name="icon",
    version="1",
    src=c(file=normalizePath("./temp")),
    attachment = "icon",
    all_files = T
  )
}
ui_enCard("prank","n. 惡作劇\nv. 對…胡鬧", "C1 高級",
          icon_dependency(), style = "width: 500px; height: 300px;"
) |> browseTag2()
