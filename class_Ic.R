# 1. Check Cholesterol level (using if) 
cholesterol <- 230

if (cholesterol > 240){
  print("High Cholesterol")
}

# 2. Blood Pressure Status (using if...else)
Systolic_bp <- 130

if (Systolic_bp < 120){
  print("Blood Pressure is normal")
}else {
print("Blood pressure is high")
}

# 3. Automating Data Type Conversion with for loop
metadata <- read.csv(file.choose())
metadata_processed <- metadata
str(metadata_processed)
factor_cols <- c("height", "gender")

for (col in factor_cols) {
  metadata_processed[[col]] <- as.factor(metadata_processed[[col]])
}
str(metadata_processed)


patient_inf_processed <- patient_unfo 
str(patient_inf_processed)
factor_cols2<- c("gender", "diagnosis", "smoker")
for (col in factor_cols2) {
  patient_inf_processed[[col]] <- as.factor(patient_inf_processed[[col]])
}
str(patient_inf_processed)

# 4. Converting Factors to Numeric Codes
binary_cols <- c("smoker")  
for (col in binary_cols) {
  patient_inf_processed[[col]] <- ifelse(patient_inf_processed[[col]] == "Yes", 1,
                        ifelse(patient_inf_processed[[col]] == "No", 0, NA))
}
str(patient_inf_processed)
















