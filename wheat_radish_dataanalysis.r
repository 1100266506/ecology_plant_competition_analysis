#plant competition data, Ecology Lab 
# @author Benjamin Ahn 03_31_2020
# @version 1.0

#import data
library(dplyr);
library(ggplot2);
experimental_data <- read.csv(file.choose(new = FALSE));

#split into groups
intraspecific <- experimental_data[1:12,];
interspecific <- experimental_data[c(5:13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43),];

intraspecific.lm <- lm(intraspecific$BiomassPerPlant ~ intraspecific$Treatment);
interspecific.lm <- lm(interspecific$BiomassPerPlant ~ interspecific$Treatment);

#statistical tests
intraspecific.aov <- aov(intraspecific.lm);
TukeyHSD(intraspecific.aov);
interspecific.aov <- aov(interspecific.lm);
TukeyHSD(interspecific.aov);

#boxplots
treatment_biomass <- select(experimental_data, "Treatment", "BiomassPerPlant");
treatment_biomass$Treatment <- factor(treatment_biomass$Treatment, levels = c("2W", "4W", "2W2R", "6W", "3W3R", "4W2R", "2W4R"));
treatment_biomass$BiomassPerPlant <- as.numeric(as.character(treatment_biomass$BiomassPerPlant));
plotmain <- ggplot(treatment_biomass, aes(x = Treatment, y = BiomassPerPlant)) + geom_boxplot() +
  labs(x="Experimental Groups", 
       y = "Biomass Per Plant");
plotmain_points <- plotmain +  geom_jitter(shape=16, position=position_jitter(0.2));

treatment_biomass_intra <- select(intraspecific, "Treatment", "BiomassPerPlant");
treatment_biomass_intra$BiomassPerPlant <- as.numeric(as.character(treatment_biomass_intra$BiomassPerPlant));
plot_intra <- ggplot(treatment_biomass_intra, aes(x = Treatment, y = BiomassPerPlant)) + geom_boxplot() + 
  labs(x = "Experimental Groups",
       y = "Biomass Per Plant");
plot_intra_points <- plot_intra + geom_jitter(shape=16, position=position_jitter(0.2));

treatment_biomass_inter <- select(interspecific, "Treatment", "BiomassPerPlant");
treatment_biomass_inter$Treatment <- factor(treatment_biomass_inter$Treatment, levels = c("4W", "2W2R", "6W", "3W3R", "4W2R", "2W4R"));
treatment_biomass_inter$BiomassPerPlant <- as.numeric(as.character(treatment_biomass_inter$BiomassPerPlant));
plot_inter <- ggplot(treatment_biomass_inter, aes(x = Treatment, y = BiomassPerPlant)) + geom_boxplot() + 
  labs(x = "Experimental Groups",
       y = "Biomass Per Plant");
plot_inter_points <- plot_inter + geom_jitter(shape=16, position=position_jitter(0.2));

end