# Server paths for calcs anywhere you have the TCGA data


TCGA_PATH <- paste("TCGA/",as.character(which.cancer.type),"/",sep="")
COSMIC_PATH <- "data/cosmic.RData"
GDSC2_SCREEN_PATH <- "data/GDSC2_fitted_dose_response_17Jul19.xlsx"
#ftp://ftp.sanger.ac.uk/pub/project/cancerrxgene/releases/current_release/GDSC2_fitted_dose_response_17Jul19.xlsx
GDSC1_SCREEN_PATH <- "data/GDSC1_fitted_dose_response_17Jul19.xlsx"
#ftp://ftp.sanger.ac.uk/pub/project/cancerrxgene/releases/current_release/GDSC1_fitted_dose_response_17Jul19.xlsx
DRUG_INFO_PATH <- "data/screened_compounds_rel_8.0.csv"
METH_MANIFEST_PATH <- "data/HumanMethylation450_15017482_v1-2.csv"
#ftp://webdata2:webdata2@ussd-ftp.illumina.com/downloads/ProductFiles/HumanMethylation450/HumanMethylation450_15017482_v1-2.csv
SCREEN_MY_PATH <- "metadata/GDSC_create_drugs_AUC_2/response_MY_ID_"
GDSC_METH_PATH <- "GDSC/"
METH_BETA_PATH <- "metadata/GDSC_methylation/"
BEM_PATH <- "data/CellLines_Mo_BEMs/"
PATH_GEX_GDSC <- "data/Cell_line_RMA_proc_basalExp.txt"
#http://www.cancerrxgene.org/gdsc1000//Data/preprocessed/Cell_line_RMA_proc_basalExp.txt.zip.
