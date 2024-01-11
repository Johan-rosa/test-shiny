library(shinytest2)

test_that("{shinytest2} recording: greeting-input-btn-output", {
  app <- AppDriver$new(
      name = "greeting-input-btn-output",
      seed = 123,
      height = 854, 
      width = 1520
    )
  app$set_inputs(`app-name` = "Johan Rosa")
  app$click("app-greet")
  app$expect_values()
})

