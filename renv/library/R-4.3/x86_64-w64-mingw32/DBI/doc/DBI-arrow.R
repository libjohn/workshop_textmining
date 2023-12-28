## ----setup, include=FALSE-----------------------------------------------------
library(knitr)
opts_chunk$set(echo = TRUE)
knitr::opts_chunk$set(error = Sys.getenv("IN_PKGDOWN") != "true" || (getRversion() < "3.5"))

knit_print.data.frame <- function(x, ...) {
  print(head(x, 6))
  if (nrow(x) > 6) {
    cat("Showing 6 out of", nrow(x), "rows.\n")
  }
  invisible(x)
}

registerS3method("knit_print", "data.frame", "knit_print.data.frame")

## -----------------------------------------------------------------------------
library(DBI)

con <- dbConnect(RSQLite::SQLite())

data <- data.frame(
  a = 1:3,
  b = 4.5,
  c = "five"
)

dbWriteTable(con, "tbl", data)

## -----------------------------------------------------------------------------
dbReadTableArrow(con, "tbl")
as.data.frame(dbReadTableArrow(con, "tbl"))

## -----------------------------------------------------------------------------
stream <- dbGetQueryArrow(con, "SELECT COUNT(*) FROM tbl WHERE a < 3")
stream
as.data.frame(stream)

## -----------------------------------------------------------------------------
stream <- dbGetQueryArrow(con, "SELECT * FROM tbl WHERE a < 3")
stream
stream$get_next()
stream$get_next()

## -----------------------------------------------------------------------------
in_arrow <- nanoarrow::as_nanoarrow_array(data.frame(a = 1:4))
stream <- dbGetQueryArrow(con, "SELECT $a AS batch, * FROM tbl WHERE a < $a", param = in_arrow)
as.data.frame(stream)

## -----------------------------------------------------------------------------
stream <- dbGetQueryArrow(con, "SELECT * FROM tbl WHERE a < 3")
dbWriteTableArrow(con, "tbl_new", stream)
dbReadTable(con, "tbl_new")

## -----------------------------------------------------------------------------
stream <- dbGetQueryArrow(con, "SELECT * FROM tbl WHERE a < 3")
dbCreateTableArrow(con, "tbl_split", stream)
dbAppendTableArrow(con, "tbl_split", stream)
stream <- dbGetQueryArrow(con, "SELECT * FROM tbl WHERE a >= 3")
dbAppendTableArrow(con, "tbl_split", stream)
dbReadTable(con, "tbl_split")

## -----------------------------------------------------------------------------
dbDisconnect(con)

