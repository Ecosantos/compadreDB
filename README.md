#### Hi dears, 

My name is Gabriel and I'm working with COMADRE Database to my PhD project. I new in Github, demographic analysis and I'm loving this.
I fork Com(p)adreDB to my own Github to start and follow commits from Owen Jones and Rob Salguero-Gomez. Of course I will need few new codes to perform the analysis of my project and will upload im my forked CompadreDB repository and to organize I will put all together in ["My Commits"](https://github.com/Ecosantos/compadreDB/tree/master/My%20commits) to you know what they are original contributions.

The official README of COMPADREDB follow below. Any questions specific about ["My Commits"](https://github.com/Ecosantos/compadreDB/tree/master/My%20commits) mail me ssantos.gabriel@gmail.com. 

Of course, visite https://github.com/jonesor/compadreDB will be the best way to learn more about COMADRE and COMPADRE.

Thanks

-------
#### Original README Below



com(p)adreDB
==========

This repository contains code for the COMPADRE Plant Matrix Database and COMADRE Animal Matrix Database.
It will evolve into an R package but will initially contain scripts for interacting with the COMPADRE and COMADRE databases which are released as structured R list objects.

The data can be downloaded from www.compadre-db.org, or www.comadre-db.org.
Follow news at our blog https://compadredb.wordpress.com, and our Twitter accounts @compadreDB @comadreDB.


The structure of the compadre and comadre data objects
-----------------------------------------
    compadre/comadre +-- metadata {dataframe with ca 60 columns and one row one for each set of matrices (mat A, matU, matF, matC)
             |
             +-- matrixClass {list with one entry for each set of matrices. Each entry is a data frame with 3 columns: MatrixClassOrganized, MatrixClassAuthor, MatrixClassNumber.}
             |
             |-- mat {list with one entry for each row of metadata}
             |     |
             |     +-- matA {matrix}
             |     +-- matU {matrix}
             |     +-- matF {matrix}
             |     \-- matC {matrix}
             |
              \-- version {a vector with version information}


