#fig_encard2 <- Fig()

fig_encard2$split_css$`enCard2-content-word`$remain$height <- NULL
fig_encard2$split_css$`enCard2-content-word-title`$remain$border <- NULL
fig_encard2$split_css$`enCard2-content-word-expl`$remain$`white-space` <- "pre-wrap"
fig_encard2$split_css$`enCard2-content-word-title`$remain$`font-weight` <- "bold"
fig_encard2$split_css$`enCard2-content-word-expl`$remain$`line-height` <- "20px"

fig_encard2$split_css$`enCard2-content-btn`$auto_layout$`justify-content` <- "center"
fig_encard2$split_css$`enCard2-content-btn-lv`$remain$`font-family` <- "fantasy"

fig_encard2$split_css$`enCard2-content-teacher-triangle`$remain$height <- NULL
fig_encard2$split_css$`enCard2-content-teacher-word`$remain$height <- NULL
fig_encard2$split_css$`enCard2-content-teacher-word`$inside_autoLayout$flex <- "auto"

fig_encard2$split_css$`enCard2-background-icon`$remain$position <- "relative"
fig_encard2$split_css$`enCard2-background`$auto_layout$padding <- "0px 0px"
fig_encard2$update_css()
fig_encard2$export("assets/css/encard2")
