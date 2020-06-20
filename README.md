# Ecology Plant Competition Analysis
BIOL Ecology 2300 data and statistical analysis on plant competition. Plant biomass between two species were compared and analyzed to quantify inter-/intra-specific competition at varying plant densities.  

@author Benjamin Ahn

### Technologies
R Studio 3.4.4 with tidyverse  
Experimental tools and techniques related to plant-based experiments

### Launch
R scripts can be viewed in R Studio. Plots can be viewed using standard image (JPG, PNG, etc) readers

### Table of Contents
* Purpose
* Experimental Design
* Data Visualizations
* Statistical Analysis

### Purpose
In the field of agriculture, plant competition dynamics are the underlying principles in crop rotations, intercropping, biological pest control, and other adaptive strategies. Understanding competition dynamics and whether intra- or inter-specific competition is stronger, can shape future agricultural techniques.

### Experimental Design
In this experiment, the effects of intra- and inter-specific competition between Triticum aestivum (wheat) and Raphanus sativus (radish) were analyzed. Radish and wheat sprouts were planted at varying densities, and after five weeks, wheat bio-masses were compared. 

To test for intra- and inter-specific competition, multiple experimental groups were used. The control group consisted of two wheat seedlings. Experimental groups to simulate intra-specific competition included groups of four wheat seedlings and six wheat seedlings. Experimental groups to simulate inter-specific competition included one wheat/one radish, two wheat/two radish, three wheat/three radish, two wheat/four radish, and four wheat/two radish seedlings. Each experimental group had four replicates, with a total of 32 experimental groups. Each experimental group used germinated wheat and radish seeds that were planted at one-inch depth in 200mL of loosely packed normal soil. Each experimental group was randomly placed in a eight-by-four grid and received consistent watering and a natural light cycle for five weeks. The seedlings were then uprooted, massed with the root and stem, and recorded. 

### Data Visualizations
Plots represent changes in plant biomass according to different plant densities. Box plots and their associated points were displayed to show multi-modal distributions and n-values.

### Statistical Analysis
Statistical significance was determined using an ANOVA test and Tukey HSD test with a critical value of 0.05 in the main R script. Data was analyzed to determine which plant densities caused greater changes in plant biomass, and which plant species was more successful in out-competing the other under specific circumstances.

### Credits
@author Benjamin Ahn  
@version 1.0  
