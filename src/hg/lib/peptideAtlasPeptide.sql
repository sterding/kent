# peptideAtlasPeptide.sql was originally generated by the autoSql program, which also 
# generated peptideAtlasPeptide.c and peptideAtlasPeptide.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#PeptideAtlas peptide description
CREATE TABLE peptideAtlasPeptide (
    accession varchar(255) not null,	# Accession
    sequence varchar(255) not null,	# Amino acid sequence
    sampleCount int not null,	# Number of samples where this peptide was observed
    hydrophobicity float not null,	# Hydrophobicity metric
    proteotypicScore float not null,	# Metric of suitability of this peptide for protein identification
              #Indices
    PRIMARY KEY(accession)
);
