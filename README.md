# SESAPI_PBT_PMT_evaluation

The SESAPI is tool designed to assess the PBT (Persistent, Bioaccumulative, and Toxic) and PMT (Persistent, Mobile, and Toxic) properties of substances using structural alerts and degradation pathways.

## Requirement and how to use it
You can download all the files [here]().

### Requirement
R and RStudio
anaconda 


## Userguide
The interface is divided into two tabs: PMT/PBT Analysis and Structural Analysis.

Within the PMT/PBT Analysis tab (Figure 1), users can perform targeted predictions for each specific criterion by following these steps:

1.	SMILES Input: Paste the SMILES string of the target compound into the "Enter SMILES" text field.
2.	Predict Toxicity (T): Click the "Predict Toxicity (T)" button to run the chronic toxicity assessment (NOEC) of the three trophic levels (daphnia, algae, fish).
3.	Configure Mobility (M) Inputs: Before assessing mobility, define the environmental parameters in the designated fields:
o	pH: Enter the desired pH value (e.g., 4.5).
o	Soil Texture: Select the soil type (e.g., clay, sand, etc.) from the dropdown menu.
o	Click the "Predict Mobility (M)" button to run the calculation of Koc.
4.	Predict Persistence (P): Click the "Predict Persistence (P)" button to estimate the substance's environmental persistence in soil, water and sediment compartments (DT50).
5.	Bioaccumulation (B): Click the "Bioaccumulation (B)" button to assess the bioaccumulative potential (BCF) of the molecule.
