#!/usr/bin/env Rscript


args = commandArgs(trailingOnly=TRUE)

protr_dir <-	args[1]


if(!is.element('protr', installed.packages()[,1]))
  {install.packages(protr_dir, repos=NULL)
}else {print("protr library already installed")}