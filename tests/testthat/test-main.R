box::use(
  shiny[testServer],
  testthat[...],
)
box::use(
  app/main[...],
)

test_that("main server works", {
  testServer(server, {
    session$setInputs(
      name = "Johan Rosa",
      greet = 1
    )

    expect_true(grepl(x = output$greeting, pattern = "Hello Johan Rosa!"))
  })
})

test_that(
  "main is a div", {
    local_edition(3)
    testthat::expect_snapshot(ui('test'))
  }
)