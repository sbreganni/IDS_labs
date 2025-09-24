# Add a new script that creates a summary table of the words spoken by Species and Film 
# and saves it to the outputs/tables/ folder? 
# You can use the dplyr package to create the summary table and the write_tsv() function to save it as a .tsv file. 
# Don't forget to source your new script in the Makefile.R script.

## import clean data
lotr_dat <- read_tsv("./session-03-automation/lotr_project/data/processed/lotr_clean.tsv")

sofia_summary_table <- lotr_dat |>
  group_by(Species, Film)|>
  summarise(
    Characters = n(),
    Words = sum(Words),
    .groups = "drop"
  )

# save summary table
write_tsv(summary_table, "./session-03-automation/lotr_project/outputs/tables/sofia_summary_table.tsv")
