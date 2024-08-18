library(geomorph)

# Function to apply Procrustes rotation to multiple TPS files
apply_procrustes <- function(file_paths) {
  # Read TPS files
  data <- lapply(file_paths, readland.tps)
  
  # Perform Generalized Procrustes Analysis (GPA)
  gpa <- gpagen(data)
  
  # Extract Procrustes coordinates
  coords <- gpa$coords
  
  # Optional: Perform PCA on Procrustes coordinates
  # pca <- prcomp(coords)
  
  return(gpa)
}

# Example usage
file_paths <- c("file1.tps", "file2.tps", "file3.tps")
result <- apply_procrustes(file_paths)
