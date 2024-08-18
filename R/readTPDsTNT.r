library(geomorph)

# Function to create TNT input from TPS files
tps_to_tnt <- function(file_paths, output_file) {
  # Read TPS files
  data <- lapply(file_paths, readland.tps)
  
  # Extract landmark data and specimen IDs
  landmarks <- lapply(data, function(x) x$landmarks)
  specimens <- lapply(data, function(x) x$specimens)
  
  # Convert landmarks to a matrix
  landmarks_matrix <- do.call(rbind, landmarks)
  
  # Create TNT-compatible data frame
  tnt_data <- data.frame(specimen = unlist(specimens), landmarks_matrix)
  
  # Write data to a file in TNT format
  write.table(tnt_data, output_file, sep = "\t", quote = FALSE, row.names = FALSE)
}

# Example usage
file_paths <- c("file1.tps", "file2.tps", "file3.tps")
output_file <- "tnt_data.txt"
tps_to_tnt(file_paths, output_file)
