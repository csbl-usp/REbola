#' Preprocess Pheno Data from Geneva Cohort
#'
#' \code{preprocess_pheno_geneva} returns a preprocessd data.frame from raw data Pheno_Geneva.csv
#' @export
#' @param pheno data.frame
#' @param print_schema boolean
#' @import tidyverse
#' @import stringr
#'
preprocess_pheno_geneva <- function(pheno=pheno, print_schema=FALSE){
  # require('tidyverse')
  # require('stringr')
  #--> TODO
  # !!! Need to either encode to M-Male/F-Female as character, or transform this into FACTOR
  # for now I'll put as factor

  # Library.Batch & Volunteer.ID: need to be encoded as character, otherwise either numeric or factor type would attribute
  # order/magnitude to the sequenctial numbers

  # Missing Values
  # schema = list('numeric' = c('Dose','Group.Day','Age','Mapped.Reads','Sampling.Day','On.Target'),'character' = c('Sample','Gender','Library.Batch','Volunteer.ID'),'float' = c('Viremia','Fever'),'factor' = c('Treatment','Artrithis','Chills','Myalgia','OBJ.Fever','Pain','Subj.Fever','Viremia.D1'))
  # if(print_schema) print(schema)
  #
  # # Numeric Vars
  # pheno$Dose = sapply(gsub('x','*',gsub('Placebo','0',pheno$Dose)), function(x) eval(parse(text=x)))
  # pheno = pheno %>% mutate( Dose = as.numeric(gsub(',','.',Dose)),
  #                           Group.Day = as.numeric(gsub('X','',Group.Day)),
  #                           Age = as.numeric(Age),
  #                           Mapped.Reads = as.numeric(Mapped.Reads),
  #                           Sampling.Day = as.numeric(Sampling.Day),
  #                           On.Target = as.numeric(gsub(',','.',On.Target))
  # )
  #
  # # Character Vars
  # pheno <- pheno %>% mutate(
  #   Gender = as.factor(Gender),
  #   Sample = paste0('S',Sample),
  #   Library.Batch = as.character(Library.Batch),
  #   Volunteer.ID = as.character(Volunteer.ID)
  # )
  #
  # # Float Vars
  # pheno <- pheno %>% mutate(  Fever = as.numeric(gsub(',','.',Fever)),
  #                             Viremia = as.numeric(gsub(',','.',Viremia)))
  #
  # # Factor Variables
  # factor_vars = schema[['factor']]
  # pheno[,factor_vars] = lapply(pheno[,factor_vars], as.factor)
  #
  # pheno = pheno %>% setNames(tolower(gsub("\\.","_",names(.)))) %>% rename(sample_id = sample)
  # return(pheno)
  print('In construction')
}
