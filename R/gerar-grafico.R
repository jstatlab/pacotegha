#' Gerar grafico
#'
#' @return Sem retorno
#' @export
#'
gerar_grafico <- function() {
  tmp <- tempfile(fileext = ".jpg")
  numero <- sample(1:1000, 1)
  utils::download.file(
    #"https://sentencedict.com/wordimage/68.jpg",
    #"https://sentencedict.com/wordimage/116.jpg",
    paste0("https://picsum.photos/200/300?random=", numero),
    tmp,
    quiet = TRUE
  )
  tmp |>
    jpeg::readJPEG() |>
    grDevices::as.raster() |>
    graphics::plot()
}
