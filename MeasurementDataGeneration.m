function [MeaswithNoise] = MeasurementDataGeneration (TruePos,sigma)
%calculte row and clumn TruPos
[row,column]=size(TruePos);



#ıt will add white gaussion noise on trupos data 
for i=1:column
MeaswithNoise(:,i)=sigma*randn(2,1) + TruePos(:,i);
end



endfunction
