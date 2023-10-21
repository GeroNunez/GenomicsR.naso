# Descargar el paquete ape para leer documentos fasta
# Lee archivos en formato *.fasta

install.packages("ape")

# Ubicar los achivos con os que se va a trabajar

setwd("C:/Users/User/Desktop/Genomics.R.naso/data/RhynchonycterisNaso-molecular/GenCOI")

# Nombrar dos de las secuencias

R.naso1= read.FASTA("sequence.fasta", type = "DNA")
R.naso2= read.FASTA("sequence_1.fasta", type = "DNA")

R.naso1
R.naso2


#Crear un loop para subir todos los archivos en forma de objeto
# Ubicar los achivos con os que se va a trabajar

setwd("C:/Users/User/Desktop/Genomics.R.naso/data/RhynchonycterisNaso-molecular/GenCOI")

archivos = list.files(pattern = "sequence", full.names = TRUE)

SequencesR.naso = c()
R.naso= c()

vectores = list(SequencesR.naso) 

for (i in archivos) 
  {
  contenido = readLines(i)
  Sequences = sub(".FASTA$", "", basename(i))
  vectores[[Sequences]] = contenido
  SequencesR.naso= c(SequencesR.naso, Sequences)
  }

SequencesR.naso







