
# Before Upgrading base R save your packages info 
# Save current R packages and their versions to an Object called ip

ip <- installed.packages()
ip

# Save the object as a .rds file somewhere preferable in Data folder

saveRDS(ip, "Data/CurrentPackages.rds")

# After updating base R, load the file and reinstall your packages!!

ip <- readRDS("Data/CurrentPackates.rds")

install.packages(ip[, 1])