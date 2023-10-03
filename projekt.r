baza <- read.csv("real_for_all_NS_2000_2021.csv")
baza$MBV <- NULL
baza$MNT <- NULL
baza$MKT <- NULL
baza$PRBR <- NULL
baza$PRTR <- NULL
baza$LOK <- NULL
baza$PAD <- NULL
baza$VLZ <- NULL


attach(baza)
str(baza)
fivenum(VLZ)

###grafovi

barplot(tapply( PRBR, list(MSC), mean))
barplot(tapply( PRBR, list(RBD), mean))


barplot(tapply( PRTR, list(MSC), mean))
barplot(tapply( PRTR, list(RBD), mean))

barplot(tapply( PRAM, list(MSC), mean))
barplot(tapply( PRAM, list(RBD), mean))

####################

plot(SBV,PRTR)
boxplot(PRTR,RA)


plot(VLZ, PRTR)
plot(VLZ, PRBR)
plot(VLZ, PRAM)

cor.test(VLZ, PRTR)
cor.test(VLZ, PRBR)
cor.test(VLZ, PRAM)

cor.test(ATT, PRTR)
cor.test(ATT, PRBR)
cor.test(ATT, PRAM)

plot(PAD, PRTR)
plot(PAD, PRBR)
plot(PAD, PRAM)

cor.test(PAD, PRTR)
cor.test(PAD, PRBR)
cor.test(PAD, PRAM)

plot(SRT, PRTR)
plot(SRT, PRBR)
plot(SRT, PRAM)
cor.test(SRT,PRTR)
cor.test(SRT,PRBR)
cor.test(SRT,PRAM)


plot(SBV[MSC == 3 | MSC == 4],PRBR[MSC == 3 | MSC == 4])
boxplot(PRBR[MSC == 3 | MSC == 4],RA[MSC == 3 | MSC == 4])

####
t.test(PRAM[RA == 1], PRAM[RA == 0], alt = 'l')
t.test(PRTR[RA == 1], PRTR[RA == 0], alt = 'l')
t.test(PRBR[RA == 1], PRBR[RA == 0], alt = 'l')

