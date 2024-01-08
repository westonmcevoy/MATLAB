 clc
 clear
 Vdd = 3.3;
 R = 30000;
 R_NTC = 5774
 R_new = [(R*1); (R*2); (R*3); (R*4); (R*5); (R*6); (R*7); (R*8); (R*9); (R*10); (R*11);]
 for R = R_new
    I = Vdd./(R+R_NTC)
 end