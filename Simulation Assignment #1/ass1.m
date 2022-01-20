%Assignment 1 Rami Wail Shoula
% phase A

num1=[1];
den1=[2 0.5];

num2=[10];
den2=[1 1];

[numA, denA]=series(num1,den1,num2,den2);
printsys(numA,denA)

%phase B

num3=[0.1];
den3=[1];

[numB,denB]=feedback(numA,denA,num3,den3);
printsys(numB,denB)

%phase C

num4=[540];
den4=[1];

[numC,denC]=series(numB,denB,num4,den4);
printsys(numC,denC)

%closed loop

[numD,denD]=cloop(numC,denC,-1);
printsys(numD,denD)
