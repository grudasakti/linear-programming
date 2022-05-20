#memanggil library lpSolve
library(lpSolve)

#tentukan koefisien variabel keputusan
Keputusan <- c(6, 10)

#buat constraint matrix/kendala
A <- matrix(c(1,1,
              20,40), nrow=2, byrow=TRUE)

B <- c(12,400)

#arah constraint
arah <- c("<=", "<=")

#penggunaan fungsi lp
optimal <- lp(direction = "max", 
              objective.in = Keputusan,
              const.mat = A,
              const.dir = arah,
              const.rhs = B,
              all.int = T)

#melihat hasil dari fungsi
str(optimal)

#mengambil nilai optimal
solusiterbaik <- optimal$solution

#melihat isi variabel solusiterbaik
solusiterbaik

#pemberian nama
names(solusiterbaik) <- c("Ikan Nila", "Ikan Patin")

#melihat hasil dari pemberian nama
print(solusiterbaik)

#mencari pendapatan maksimal yang diperoleh
print(paste("Pendapatan maksimal yang diperoleh: ", optimal$objval, sep = ""))