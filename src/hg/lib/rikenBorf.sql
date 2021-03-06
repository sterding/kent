# borf.sql was originally generated by the autoSql program, which also 
# generated borf.c and borf.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Parsed output from Victor Solovyev's bestorf program
CREATE TABLE rikenBorf (
    name varchar(255) not null,	# Name of mRNA
    size int not null,	# Size of mRNA
    strand char(1) not null,	# + or - or . in empty case
    feature varchar(255) not null,	# Feature name - Always seems to be CDSo
    cdsStart int not null,	# Start of cds (starting with 0)
    cdsEnd int not null,	# End of cds (non-exclusive)
    score float not null,	# A score of 50 or more is decent
    orfStart int not null,	# Start of orf (not always same as CDS)
    orfEnd int not null,	# Start of orf (not always same as CDS)
    cdsSize int not null,	# Size of cds in bases
    frame char(3) not null,	# Seems to be +1, +2, +3 or -1, -2, -3
    protein longblob not null,	# Predicted protein.  May be empty.
              #Indices
    PRIMARY KEY(name)
);
