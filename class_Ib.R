# Creating subfolders

dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")

# patient_info inspection
patient_info <- read.csv(file.choose())
View(patient_info)
str(patient_info)

# patient_info cleaning
# convert gender, diagnosis, smoler into factor
patient_info$gender_fac <- as.factor(patient_info$gender)
patient_info$diagnosis_fac <- as.factor(patient_info$diagnosis)
patient_info$smoker_fac <- as.factor(patient_info$smoker)
str(patient_info)

# Create a new variable for smoking status as a binary factor
patient_info$smoker_binary <- ifelse(patient_info$smoker_fac == "Yes", 1, 0)
patient_info$smoker_binary <- as.factor(patient_info$smoker_binary)
str(patient_info)

# Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv
write.csv(patient_info, file = "clean_data/patient_info_clean.csv")

# Save your R script in your script folder with name "class_Ib"


# Upload "class_Ib" R script into your GitHub repository



