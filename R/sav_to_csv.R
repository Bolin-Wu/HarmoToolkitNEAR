

#' Title
#'
#' @param data_folder_name
#' @param db_name
#'
#' @return
#' @export
#'
#' @examples
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
