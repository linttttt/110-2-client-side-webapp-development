enCard2ContentWord <- function(){
  tags$div(class = "enCard2-content-word",
           tags$div(class = "enCard2-content-word-title", "trick"),
           tags$div(class = "enCard2-content-word-pron", "US /trik/       US /trik/"),
           tags$div(class = "enCard2-content-word-expl", "adj. 虛弱的；欺詐的\nn. 戲法；竅門；訣竅；把戲；特技"))
}


tagList(
  enCard2ContentWord(),
  encard2_dependency()
) |> browseTag2()
