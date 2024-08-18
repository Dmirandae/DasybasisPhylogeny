read_tps_with_info <- function(file_path) {
  data <- readLines(file_path)
  
  # Extract relevant information (adjust based on your file format)
  id_lines <- grep("^ID=", data)
  scale_lines <- grep("^SCALE=", data)
  lm_lines <- grep("^LM=", data)
  
  # Extract IDs and scale
  ids <- gsub("ID=", "", data[id_lines])
  scale <- as.numeric(gsub("SCALE=", "", data[scale_lines]))
  
  # Extract landmark data (you can use read.table or other methods)
  # ...
  
  # Create a data frame or list to store the information
  result <- list(
    landmarks = landmarks,
    specimen_ids = ids,
    scale = scale
  )
  
  return(result)
}



library(geomorph)

# Read the TPS file
tps_data <- readland.tps("your_file.tps")

# Extract landmark data
landmarks <- tps_data$landmarks

# Extract specimen IDs
specimen_ids <- tps_data$specimens

# Extract scale information (if present)
# This part might be more complex as scale information is not always consistently included in TPS files.
# You might need to manually extract it based on your file format.

# Example assuming scale is a numeric value after "SCALE="
scale_values <- sapply(strsplit(tps_data$header, " "), function(x) {
  scale_index <- which(x == "SCALE=")
  if (length(scale_index) > 0) {
    as.numeric(x[scale_index + 1])
  } else {
    NA
  }
})
