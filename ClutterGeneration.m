function [ClutterData] = ClutterGeneration (MeaswithNoise)
[m,n] = size(MeaswithNoise);


%clutter sayısı poisson dağılımı ile belirleniyor
%lambdayi ben sabit aldım 20 diye
lamda=20;


k=1;
for i=1:n
ClutterNumber=poissrnd(lamda);

%randn foksıyonu ile normal dagılım ile rastgele degerler uretılıyor
ClutterVector=randn((size(MeaswithNoise,1)),ClutterNumber);
TempClutterPosision=MeaswithNoise(:,i)+(15*ClutterVector);


ClutterData{k} = TempClutterPosision;
k=k+1;
end



endfunction
