require(magrittr)
require(stringr)
require(glue)
require(tibble)
require(dplyr)
require(tidyr)
require(purrr)

R"--(

|image|image|image|image|
|-----|----|----|----|
|{img1}|{img2}|{img3}|{img4}|
|{lnk1}|{lnk2}|{lnk3}|{lnk4}|
||

)--"

f0<-function(x){
  y <- list.files(glue("docs/assets/{x}"),"*.jpg")
  glue("../assets/{x}/{y}",x=x,y=y)
}


f1<-function(x){
  y <- list.files(glue("docs/assets/{x}"),"*.jpg")
  glue("https://sigrid-paintings.s3.amazonaws.com/assets/{x}/{y}",x=x,y=y)
}

f2<-function(x){
  glue("[Download]({f1(x)})")
}

f3<-function(x){
  glue('<img src="{f0(x)}" width="300px" />')
}

f4<-function(x,n=4){
  b <-
  tibble(image=f3(x),link=f2(x)) %>%
  mutate(i=seq_along(image)) %>%
  mutate(row=(i-1) %/% n) %>%
  mutate(col=(i-1) %% n) %>%
  pivot_longer(c(image,link)) %>%
  pivot_wider(id_cols=c(row,name),names_from=col,names_prefix = "col_") %>%
  mutate(across(starts_with("col_"),\(x)replace_na(x,""))) %>%
  select(starts_with("col_")) %>%
  as.list() %>%
  list_transpose() %>%
  map_chr(\(x)str_c("| ",str_flatten(x,collapse=" | ")," |")) %>%
  str_flatten(collapse="\n")

  str_c("|",str_flatten(rep("image",n),"|"),"|") %>%
  c(str_c("|",str_flatten(rep("---",n),"|"),"|")) %>%
  c(b) %>%
  str_flatten("\n")
}

x<-f4("collage4",10)


