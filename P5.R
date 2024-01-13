library(afex)

values=c(85,86,88,75,78,94,98,79,71,80,91,92,93,85,87,84,82,88,95,96,79,78,88,94,92,85,83,85,82,81)
groups=c(rep("Group1",10),rep("Group2",10),rep("Group3",10))
df=data.frame(groups,values)
a=aov(values~groups,data=df)
a
summary(a)
#Conclusion: since p value (0.114) is not less than α = 0.05, we do not reject H0.


heights=c(180,183,172,178,169,179,178,180,185,181,180,179,164,173,180,178,170,183,180,175,181,183, 176,167)
countries=c(rep("Country (US)",8),rep("Country (UK)",8),rep("Country (India)",8))
df=data.frame(countries,heights)
a=aov(heights~countries,data=df)
a
summary(a)

#Conclusion: since p value (0.974) is not less than α = 0.05, we do not reject H0.


dosage=c(210,240,270,270,300,210,240,240,270,270,180,210,210,210,240)
groups=c(rep("Group 1, 0mg",5),rep("Group 2, 50mg",5),rep("Group 3, 100mg",5))
df=data.frame(groups,dosage)
a=aov(dosage~groups,data=df)
a
summary(a)

#Conclusion: Since p value (0.0424) is less than α = 0.05, we reject H0 and accept H1: dosage level does not have a significant effect on cholesterol level


sample=c(7.5,7.4,7.3,7.6,7.4,7.0,7.2,7.0,7.2,7.1,7.1,6.7,6.9,6.8,6.9)
method=c(rep("M1",5),rep("M2",5),rep("M3",5))
analyst=c(1,2,3,4,5,1,2,3,4,5,1,2,3,4,5)
a=aov(sample~method+analyst)
a
summary(a)
#Conclusion: Since p values (9.09e-05,0.889) are not less than α = 0.05, we do not reject H0.


experiment=c(1.963,2.958,2.956,2.948,2.953,2.941,2.996,2.964,2.945,2.960,2.961,2.940,2.675,2.955,2.963,2.953,2.261,2.931,2.970,2.241,2.975,2.950,2.949,2.930,2.979,2.950,2.958,2.951,2.955,2.937)
determination=c(rep("1",6),rep("2",6),rep("3",6),rep("4",6),rep("5",6))
analyst=c(1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6,1,2,3,4,5,6)
a=aov(experiment~determination+analyst)
a
summary(a)
