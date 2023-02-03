function [M_recovery] = DLP(Wdr, Wdd, Wrr,alpha1,alpha2,K)


Wrd = Wdr';

[dn,dr] = size(Wdr);
P_TMat = Wdr;

row_no = find(sum(P_TMat, 2) == 0);
if isempty(row_no) == 0
    P_TMat_new1 = KNN_diseaseS(P_TMat, Wdd, K);          %KNN Preprocessing
    P_TMat_new = P_TMat_new1 + P_TMat;
else
    P_TMat_new =P_TMat;
end
T1 = [Wrr; P_TMat_new];
[t1, t2] = size(T1);
trIndex1 = double(T1 ~= 0);
[W1] = LSR( T1,alpha1);
M_ResultMat1 = W1((t1-dn+1):t1, 1:dr);

col_no = find(sum(P_TMat, 1) == 0);
if isempty(col_no) == 0
    P_TMat_new2 = KNN_drugS(P_TMat, Wrr, K);             %KNN Preprocessing
    P_TMat_new = P_TMat_new2 + P_TMat;
else
    P_TMat_new = P_TMat;
end
T2 = [P_TMat_new, Wdd];
[t_1, t_2] = size(T2);
trIndex2 = double(T2 ~= 0);
[W2] = LSR(T2',alpha2);
W2=W2';
M_ResultMat2 = W2(1:dn, 1:dr);

M_recovery = (M_ResultMat1 + M_ResultMat2) / 2;    



end
