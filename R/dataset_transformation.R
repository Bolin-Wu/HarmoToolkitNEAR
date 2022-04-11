# transform SPSS to csv
library('haven')
library('tidyverse')
# create a folder to store the transformed csv format files
# db_name = 'SNAc-B' # edit the data base folder name
# dir.create(path = paste0('original_data/',db_name,'/csv_format'))



#### ------------------------- transformation function ----------------------###
# data_folder_name = 'original_data' on my conmuter
sav_to_csv = function(data_folder_name, db_name){
  tb_name = list.files(path =(paste0(data_folder_name, '/',db_name)),pattern = "\\.sav$")
  # create a folder to store the transformed csv format files
  dir.create(path = paste0(data_folder_name,'/',db_name,'/csv_format'))

  for (i in 1:length(tb_name)) {
    data = read_sav(paste0(data_folder_name,'/',db_name,'/',tb_name[i]))
    # get rid of .sav extension when writing the csv file
    clean_name = tools::file_path_sans_ext(tb_name)
    write.csv(data, file = paste0(data_folder_name,'/',db_name,'/csv_format/',clean_name[i],'.csv'),row.names=FALSE)
  }

}

#### ------------------------examinatio function --------------------------###

check_output = function(data_folder_name, db_name, tb_name){
  # tb_name = list.files(path =(paste0(data_folder_name, '/',db_name)),pattern = "\\.sav$")
  # clean_name = tools::file_path_sans_ext(tb_name)
  # data = read_csv(paste0(data_folder_name,'/',db_name,'/',tb_name[i]))
  read_csv(file = paste0(data_folder_name,'/',db_name,'/csv_format/',tb_name,'.csv'))
}

### ----------------------------- Function definition finish ------------------###

# SNAC-N
sav_to_csv(data_folder_name = 'original_data', db_name = 'SNAC-N')
check_output(data_folder_name = 'original_data', db_name = 'SNAC-N', tb_name = 'FASI_Nordanstig')

# GENDER
sav_to_csv(data_folder_name = 'original_data', db_name = 'GENDER')
check_output(data_folder_name = 'original_data', db_name = 'GENDER', tb_name = 'Gender data request_20210225')

# KP fas 6
sav_to_csv(data_folder_name = 'original_data', db_name = 'KP fas 6')

# OCTO-TWIN
sav_to_csv(data_folder_name = 'original_data', db_name = 'OCTO-TWIN')

# SNAc-B
sav_to_csv(data_folder_name = 'original_data', db_name = 'SNAc-B')
check_output(data_folder_name = 'original_data', db_name = 'SNAc-B', tb_name = 'SNAC_B_Death_Disability_20210521')

# SNAc-K
sav_to_csv(data_folder_name = 'original_data', db_name = 'SNAC-K')
check_output(data_folder_name = 'original_data', db_name = 'SNAC-K', tb_name = 'SNAC_B_Death_Disability_20210521')


#### --------------------- LEGO playground ------------------------####
#
## SNACK-K
# for (i in 1:5) {
#   prefix = paste0("SNAC-K wave",i)
#   postfix = paste(prefix,"data.sav")
#   SNAC_K_data <- read_sav(paste0("original_data/SNAC-K",postfix))
#   # transform to csv
#   write.csv(SNAC_K_data, file = paste0("original_data/SNAC-K/kdate.csv"),row.names=FALSE)
#   # print(postfix)
# }

# # GENDER
# getwd()
# GENDER_csv_data <- read_sav('original_data/GENDER/Gender data request_20210225b.sav')
# # transform to csv
# write.csv(GENDER_csv_data, file = paste0("original_data/GENDER/GENDERb_csv.csv"),row.names=FALSE)
#
# # KP
# db_name = 'OCTO-TWIN'
# tb_name = 'NEAR_Disability_before_death_OCTO-TWIN'
# data <- read_sav(paste0('original_data/',db_name,'/',tb_name,'.sav'))
# # transform to csv
# write.csv(data, file = paste0('original_data/',db_name,'/csv_format/',tb_name,'.csv'),row.names=FALSE)
#
# # check if the data are read corrected by read_csv
# data
#
#
# # SNAC-B
# db_name = 'SNAc-B'
# tb_name = list.files(path =(paste0('original_data/',db_name)),pattern = "\\.sav$")
# for (i in 1:length(tb_name)) {
#   data = read_sav(paste0('original_data/',db_name,'/',tb_name[i]))
#   # get rid of .sav extension when writing the csv file
#   clean_name = tools::file_path_sans_ext(tb_name)
#   write.csv(data, file = paste0('original_data/',db_name,'/csv_format/',clean_name[i],'.csv'),row.names=FALSE)
# }
#

