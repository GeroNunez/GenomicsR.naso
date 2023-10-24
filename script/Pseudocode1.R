# Ubicar los achivos con los que se va a trabajar

setwd("C:/Users/User/Desktop/Genomics.R.naso/data/RhynchonycterisNaso-molecular/GenCOI")

# Lee dos de las secuencias

Sequence1= readLines("sequence.fasta")
Sequence2= readLines("sequence_1.fasta")

Sequence1
Sequence2

# Eliminar la primera linea y unir el resto en una sola

S1= paste(Sequence1[-1], collapse = "")
S1

S2= paste(Sequence2[-1], collapse = "")
S2



# Crear un loop para hacer lo mismo con todas las secuencias
    # Ubicar los achivos con los que se va a trabajar
    # Crear una lista de todos los archivos
    # Crear un vector en el que se va a alijar todas las secuencias

setwd("C:/Users/User/Desktop/Genomics.R.naso/data/RhynchonycterisNaso-molecular/GenCOI")

sequences = list.files(pattern = "sequence", full.names = TRUE)

SequencesR.naso = list()

for (i in sequences) 
  {
  secuencias = readLines(i)
  secuencias = secuencias[-1]  
  secuencias = paste(secuencias, collapse = "") 
  SequencesR.naso[[i]] = secuencias
  }

SequencesR.naso







# Descargar paquete que lea formato Fata 

install.packages("ape")
library(ape)

# Leer todos los archivos con "ape"

setwd("C:/Users/User/Desktop/Genomics.R.naso/data/RhynchonycterisNaso-molecular/GenCOI")

archivos = list.files(pattern = "sequence", full.names = TRUE)

SequencesR.naso2 = list()

for (x in archivos) 
{
  contenido = readLines(x)
  Sequences = sub(".FASTA$", "", basename(x))
  SequencesR.naso2= c(SequencesR.naso2, Sequences)
}

SequencesR.naso2

