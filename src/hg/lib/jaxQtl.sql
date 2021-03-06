# jaxQtl.sql was originally generated by the autoSql program, which also 
# generated jaxQtl.c and jaxQtl.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Quantitative Trait Loci from Jackson Lab / Mouse Genome Informatics
CREATE TABLE jaxQtl (
    chrom varchar(255) not null,	# Human chromosome or FPC contig
    chromStart int unsigned not null,	# Start position in chromosome
    chromEnd int unsigned not null,	# End position in chromosome
    name varchar(255) not null,	# Name of item
    score int unsigned not null,	# Score from 0-1000 (bed6 compat.)
    strand char(1) not null,	# + or - (bed6 compat.)
    marker varchar(255) not null,	# MIT SSLP Marker w/highest correlation
    mgiID varchar(255) not null,	# MGI ID
    description varchar(255) not null,	# MGI description
    cMscore float not null,	# cM position of marker associated with peak LOD score
              #Indices
    PRIMARY KEY(name)
);
