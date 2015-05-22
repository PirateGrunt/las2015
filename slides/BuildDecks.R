library(rmarkdown)

outDirs <- c("handouts", "word", "html", "beamer", "pdf")
lapply(outDirs, function(x) {
  dirName <- paste0("./workshop/", x, "/")
  if(!file.exists(dirName)) dir.create(dirName)
})

slides <- c("Introduction"
            , "Basics"
            , "Visualization"
            , "Vectors"
            , "Packages"
            , "BasicProgramming"
            , "Data"
            , "LossReserving"
            , "Simulation"
            , "LossDistributions"
            , "AdvancedVisualization"
            , "AdvancedModeling"
            , "Close")

rmdSlides <- paste0("./workshop/", slides, ".Rmd")
pdfSlides <- gsub(".Rmd", ".pdf", rmdSlides)
htmlSlides <- gsub(".Rmd", ".html", rmdSlides)
htmlSlides <- paste0("./workshop/html/", slides, ".html")
wordSlides <- gsub(".Rmd", ".docx", rmdSlides)
wordSlides <- gsub(".Rmd", ".R", rSlides)

lapply(rmdSlides, render
       , output_format=slidy_presentation()
       , output_dir="./html"
       , envir = new.env())
if(file.exists("./inst/workshop/html.zip")) unlink("./inst/workshop/html.zip")
zip("./inst/slides/slides.zip", rmdSlides, flags = "-j9X")

lapply(rmdSlides, purl)