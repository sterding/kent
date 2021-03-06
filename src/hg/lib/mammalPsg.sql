# mammalPsg.sql was originally generated by the autoSql program, which also 
# generated mammalPsg.c and mammalPsg.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Browser extensible data (12 fields) plus the information on mammalian positive selection.
CREATE TABLE mammalPsg (
    chrom varchar(255) not null,	# Chromosome (or contig, scaffold, etc.)
    chromStart int unsigned not null,	# Start position in chromosome
    chromEnd int unsigned not null,	# End position in chromosome
    name varchar(255) not null,	# Name of item
    score int unsigned not null,	# 400 for P<0.05 on any test; 700 fdr significant under any test; 1000 fdr significant under test A
    strand char(1) not null,	# + or -
    thickStart int unsigned not null,	# Start of where display should be thick (start codon)
    thickEnd int unsigned not null,	# End of where display should be thick (stop codon)
    reserved int unsigned not null,	# Used as itemRgb as of 2004-11-22
    blockCount int not null,	# Number of blocks
    blockSizes longblob not null,	# Comma separated list of block sizes
    chromStarts longblob not null,	# Start positions relative to chromStart
    lrtAllPValue float not null,	# A: LRT P-value  on all branches
    lrtAllIsFdr tinyint unsigned not null,	# A: true if FDR significant
    lrtPrimateBrPValue float not null,	# B: LRT P-value  on branch leading to primates
    lrtPrimateBrIsFdr tinyint unsigned not null,	# B: true if FDR significant
    lrtPrimateClPValue float not null,	# C: LRT P-value  on primate clade
    lrtPrimateClIsFdr tinyint unsigned not null,	# C: true if FDR significant
    lrtRodentBrPValue float not null,	# D: LRT P-value  on branch leading to rodents
    lrtRodentBrIsFdr tinyint unsigned not null,	# D: true if FDR significant
    lrtRodentClPValue float not null,	# E: LRT P-value  on rodent clade
    lrtRodentClIsFdr tinyint unsigned not null,	# E: true if FDR significant
    lrtHumanPValue float not null,	# F: LRT P-value  on human lineage
    lrtHumanIsFdr tinyint unsigned not null,	# F: true if FDR significant
    lrtChimpPValue float not null,	# G: LRT P-value  on chimp lineage
    lrtChimpIsFdr tinyint unsigned not null,	# G: true if FDR significant
    lrtHominidPValue float not null,	# H: LRT P-value  on branch leading to hominids
    lrtHominidIsFdr tinyint unsigned not null,	# H: true if FDR significant
    lrtMacaquePValue float not null,	# I: LRT P-value  on human lineage
    lrtMacaqueIsFdr tinyint unsigned not null,	# I: true if FDR significant
    bestHist int unsigned not null,	# Most likely history (Bayesian analysis)
    bestHistPP float not null,	# Probability of the most likely history
    nextBestHist int unsigned not null,	# 2nd most likely history (Bayesian analysis)
    nextBestHistPP float not null,	# Probability of the 2nd most likely history
              #Indices
    PRIMARY KEY(name)
);
