# Descargar el paquete ape para leer documentos fasta
# Lee archivos en formato *.fasta

install.packages("ape")
library("ape")

# Ubicar los achivos con os que se va a trabajar

setwd("C:/Users/User/Desktop/Genomics.R.naso/data/RhynchonycterisNaso-molecular/GenCOI")

# Nombrar dos de las secuencias

R.naso1= read.FASTA("sequence.fasta", type = "DNA")
R.naso2= read.FASTA("sequence_1.fasta", type = "DNA")

R.naso1
R.naso2

# Fusionar todas las lineas en una sola para que sean visibles en la consola

R.naso1.1= readLines("sequence.fasta")
R.naso1.2= paste(R.naso1.1 [1:12],collapse = "")
R.naso1.2


R.naso2.1= readLines("sequence_1.fasta")
R.naso2.2= paste(R.naso2.1 [1:12],collapse = "")
R.naso2.2

# Loop para que lo que se hizo con 2 secuencias se haga con todas

setwd("C:/Users/User/Desktop/Genomics.R.naso/data/RhynchonycterisNaso-molecular/GenCOI")




#Crear un loop para subir todos los archivos en forma de objeto
# Ubicar los achivos con os que se va a trabajar

setwd("C:/Users/User/Desktop/Genomics.R.naso/data/RhynchonycterisNaso-molecular/GenCOI")

archivos = list.files(pattern = "sequence", full.names = TRUE)

SequencesR.naso = c()
R.naso= c()

objetos= list(SequencesR.naso) 

for (i in archivos) 
  {
  contenido = readLines(i)
  Sequences = sub(".FASTA$", "", basename(i))
  objetos[[Sequences]] = contenido
  SequencesR.naso= c(SequencesR.naso, Sequences)
  }

SequencesR.naso







