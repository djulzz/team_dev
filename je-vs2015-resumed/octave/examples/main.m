clear all;
clc;


newSalesperson = "Julien Esposito";
newAmount = 28000;
usedSalesperson = "Julien Esposito";
usedAmount = 5000;
bothAtEof = "N";
HIGH_NAME = "ZZZZZ";

newSales = fopen( "newSales.dat", "r" );
while( feof( newSales )
fprintf( newSales, "The new sales amount is $%.2f\r\n", newAmount );
fclose( newSales );
%      InputFile usedSales
%      OutputFile allsales

%a = fopen( "a.txt", "w" );
%b = fopen( "b.txt", "w" ); 
%c = fopen( "c.txt", "w" ); 
%
%[a, b, c]
%
% fclose( a );
% fclose( b );
% fclose( c );