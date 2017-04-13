function [Lines] = f_grab_data( filename, optionKeepLines )


% 1 - Open OldSales.txt

% 2 - while the EoF hasn't been reached for "OldSales.txt",
% pull data from file, and store it in an array

% 3 - Repeat steps 1 through 2 but for "NewSales.txt"

clear all;
clc;

% f is the variable associated with the file "OldSales.txt"
f = fopen( filename, "r" );

Lines = {};
if( f == -1 )
  printf( "please make sure %s is in the current directory\r\n", filename );
  
else
  
  names = {}; % This is an array of cell, initially empty
  count = 1; % This is a counter which keeps of salespersons' names
              % as they are added to the array above
  printf( "File opened successfully - proceeding...\r\n" );
  while( !feof( f ) ) % while the EoF hasn't been reached
    current_line = fgets( f ); % get current from file
    if( optionKeepLines == true )
      Lines = [Lines, {current_line}];
    end
    
    array_cells = strsplit( current_line, "\t" ); % split it based on tab
    Current_sales_person = array_cells{ 1 }; % the name is the 1st elments
    printf( "%s\r\n", Current_sales_person ); % just checking
    names( count ) = array_cells( 1 ); % I grow my array of cells
    count = count + 1; % I updated by how many salespersons I've grown "names"
  end
  fclose( f );
  Unique_salespersons = unique( names );
  
  %# Unique Salespersons
  nUnique_salespersons = length( Unique_salespersons );
  
  % printing the exact number of unique salespersons
  printf( "The exact number of unique salesperson is %i\r\n", nUnique_salespersons );
  

end
