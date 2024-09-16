# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the World Population dataset (replace 'your_dataset.csv' with the actual file path)
world_population_data <- read.csv("\\Users\\ideep\\Desktop\\rdataset.csv)
world_population_data



# Data exploration
head(world_population_data)  # View the first few rows of the dataset
str(world_population_data)   # Inspect the structure of the dataset

# Data Visualization

# 1. Population Density
ggplot(world_population_data, aes(x = Country, y = Population_Density)) +
  geom_bar(stat = "identity") +
  labs(title = "Population Density by Country",
       x = "Country",
       y = "Population Density")

# 2. Age Distribution (example - you may need to adjust columns accordingly)
ggplot(world_population_data, aes(x = Age_Group, y = Population)) +
  geom_bar(stat = "identity") +
  labs(title = "Age Distribution by Country",
       x = "Age Group",
       y = "Population")

# 3. Gender Balance (example - you may need to adjust columns accordingly)
ggplot(world_population_data, aes(x = Country, y = Male_Population, fill = "Male")) +
  geom_bar(stat = "identity") +
  geom_bar(aes(x = Country, y = Female_Population, fill = "Female")) +
  labs(title = "Gender Balance by Country",
       x = "Country",
       y = "Population") +
  scale_fill_manual(values = c("Male" = "blue", "Female" = "pink"))

# 4. Ethnic and Racial Diversity (example - you may need to adjust columns accordingly)
ggplot(world_population_data, aes(x = Ethnicity, y = Population)) +
  geom_bar(stat = "identity") +
  labs(title = "Ethnic and Racial Diversity",
       x = "Ethnicity",
       y = "Population")

# 5. Population Growth Rates (example - you may need to adjust columns accordingly)
ggplot(world_population_data, aes(x = Year, y = Growth_Rate)) +
  geom_line() +
  labs(title = "Population Growth Rate Over Time",
       x = "Year",
       y = "Growth Rate")

# 6. Education and Literacy (example - you may need to adjust columns accordingly)
ggplot(world_population_data, aes(x = Country, y = Literacy_Rate)) +
  geom_bar(stat = "identity") +
  labs(title = "Literacy Rate by Country",
       x = "Country",
       y = "Literacy Rate")
