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

fn<-function(x){
  list.files(glue("docs/assets/{x}"),"*.jpg") %>%
  str_extract("^[a-zA-Z0-9_]+")
}

f0<-function(x){
  y <- list.files(glue("docs/assets/{x}"),"*.jpg")
  glue("../assets/{x}/{y}",x=x,y=y)
}


f1<-function(x){
  y <- list.files(glue("docs/assets/{x}"),"*.jpg")
  glue("https://sigrid-paintings.s3.amazonaws.com/assets/{x}/{y}",x=x,y=y)
}

f2<-function(x){
  glue("[{fn(x)}]({f1(x)})")
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

f5<-function(x,n=4){
  cat(glue("## {x}\n\n\n"),file=glue("docs/pages/ff_{x}.md"),append = FALSE)
  cat(f4(x,n),file=glue("docs/pages/ff_{x}.md"),append = TRUE)
  cat("\n\n",file=glue("docs/pages/ff_{x}.md"),append = TRUE)
}

f5("collage5",10)
f5("collage4",10)
f5("images",4)
f5("images_introduction",2)
f5("images_thankyou",2)
f5("images_trasquera",5)
f5("invite",2)
