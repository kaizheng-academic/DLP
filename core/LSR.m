function [Matrix] = LO_OLO2(R_Omega,alpha)


temp=R_Omega;
W =(1/alpha*eye(size(temp'*temp))+temp' * temp)\temp' * temp;
Matrix =  temp*W;

end
