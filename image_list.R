require(stringr)
require(glue)

f1<-function(x){
  y <- list.files(glue("docs/assets/{x}"),"*.jpg")
  glue("https://sigrid-paintings.s3.amazonaws.com/assets/{x}/{y}",x=x,y=y)
}

f2<-function(x){
  glue("[Download Image]({f1(x)})")
}

f3<-function(x){
  glue('<img src="{f1(x)}" width="300px" />')
}

f4<-function(x){
  str_flatten(str_c(f3(x),"\n\n",f2(x),"\n\n<hr>\n"),collapse="\n\n")
}

