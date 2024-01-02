#' Create english card
#'
#' @param keyword 
#' @param pronun 
#' @param explain 
#' @param wordLevel
#' @param teacherWords 
#' @param dependency 
#' @param ... 
#'
#' @return
#' @export
#'
#' @examples none.
ui_encard2 <- function(keyword="trick",
                       pronun="US /trik/       US /trik/",
                       explain="adj. 虛弱的；欺詐的\nn. 戲法；竅門；訣竅；把戲；特技",
                       wordLevel="A2 初級",
                       teacherWords="前往VoiceTube 聽 Leila 老師如何應用單字",
                       dependency=NULL, ...){
  tagList(tag_encard2(keyword, pronun, explain, wordLevel, teacherWords, ...), encard2_dependency(), dependency)
}


# helper ------------------------------------------------------------------



tag_encard2 <-function(keyword, pronun, explain, wordLevel, teacherWords, ...){
  tags$div(class = "enCard2", ...,
           tags$div(class = "enCard2-background",
                    enCard2BackgroundIcon()),
           tags$div(class = "enCard2-content",
                    enCard2ContentWord(keyword, pronun, explain),
                    tags$div(class = "enCard2-content-btn",
                             tags$div(class = "enCard2-content-btn-lv", wordLevel)),
                    enCard2ContentTeacher(teacherWords)))
}

enCard2ContentTeacher <- function(teacherWords){
  tags$div(class = "enCard2-content-teacher",
           tags$div(class = "enCard2-content-teacher-icon",
                    tags$img(src = "/lib/icon-1/img-teacher.svg")),
           tags$div(class = "enCard2-content-teacher-word", teacherWords),
           tags$div(class = "enCard2-content-teacher-triangle",
                    tags$img(src = "/lib/icon-1/img-triangle.svg"))
  )
}
enCard2BackgroundIcon <- function(){
  tags$div(class = "enCard2-background-icon",
           tags$div(class = "enCard2-background-icon-sound",
                    tags$img(src = "/lib/icon-1/img-sound.svg")),
           tags$div(class = "enCard2-background-icon-heart",
                    tags$img(src = "/lib/icon-1/img-heart.svg")))
}
enCard2ContentWord <- function(keyword, pronun, explain){
  tags$div(class = "enCard2-content-word",
           tags$div(class = "enCard2-content-word-title", keyword),
           tags$div(class = "enCard2-content-word-pron", pronun),
           tags$div(class = "enCard2-content-word-expl", explain))
}

encard2_dependency <- function(){
  tagList(
    htmltools::htmlDependency(
      name="encard2",
      version="1.0.0",
      src=c(file=normalizePath("./assets/css")),
      style="encard2.css",
      all_files = F),
    htmltools::htmlDependency(
      name = "icon",
      version = 1,
      src = c(file = normalizePath("./assets/icon")),
      attachment = "",
      all_files = T)
  )
}




#ui_encard2() |> browseTag2()