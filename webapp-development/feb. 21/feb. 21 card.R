tag_ui <-function(){
  tags$div(class = "card",
           tags$div(class = "card-background",
                    tags$div(class = "card-background-icons",
                             tags$div(class = "card-background-icons-1",
                                      tags$img(src = "img-icon1.svg")),
                             tags$div(class = "card-background-icons-2",
                                      tags$img(src = "img-icon2.svg")))),
           tags$div(class = "card-content",
                    tags$div(class = "card-content-word",
                             tags$div(class = "card-content-word-title",
                                      "Trick"),
                             tags$div(class = "card-content-word-pronun",
                                      "US /tr<U+026A>k/       US /tr<U+026A>k/"),
                             tags$div(class = "card-content-word-explain",
                                      "adj. 虛弱的；欺詐的
n. 戲法；竅門；訣竅；把戲；特技")),
                    tags$div(class = "card-content-btn",
                             tags$div(class = "card-content-btn-level",
                                      "A2 初級")),
                    tags$div(class = "card-content-teacher",
                             tags$div(class = "card-content-teacher-img",
                                      tags$img(src = "img-teacher.svg")),
                             tags$div(class = "card-content-teacher-word",
                                      "前往VoiceTube 聽 Leila 老師如何應用單字"))))
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
