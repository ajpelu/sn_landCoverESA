# Download data from ftp://geo10.elie.ucl.ac.be/v207/ 

# Loop to download data 
years <- seq(1992, 2015, by=1)

for (i in years){ 
  # URL
  myurl <- paste0('ftp://geo10.elie.ucl.ac.be/v207/ESACCI-LC-L4-LCCS-Map-300m-P1Y-', i, '-v2.0.7.tif')
  
  # Name destination file 
  namefile <- paste0('lcm_',i,'.tif')
  
  # check file and dowload if it does not exist 
  if(!file.exists(paste0(getwd(), '/data_raw/tif_ESA/', namefile))){
     download.file(url = myurl, destfile = paste0(getwd(), '/data_raw/tif_ESA/', namefile))
  }
}





