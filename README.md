# PrESOgenesis



1) Introduction
	     
	     PrESOgenesis is a  Support Vector Machine-based classifier  to predict the  
	     
	     spermatogenesis/embryogenesis/oogenesis  related  proteins  based on  1920  
	     
	     meaningful protein sequence features. It takes protein/DNA FASTA sequences 
	     
	     as  input,  and  generate  output  about  the potential of a protein to be 
	     
	     involved  in spermatogenesis/embryogenesis/oogenesis. PrESOgenesis depends 
	     
	     on  two programs (libsvm and protr  package in R) and can be run on Linux. 
	     
	     Also,  it  use  TransDecoder  software  to convert the DNA sequences (mRNA 
	     
	     transcripts that converted to DNA) to protein.   
	     
	    
	     


2) Pre-requisite
             
             It just need R software to be installed in your system.



3) Install dependencies
            
             Drag install.sh file to terminal for automatic installing all of the  
             
             dependencies. This will build and install the libsvm and TransDecoder
             
             software and protr package.
             
	     
	     		$ gzip -dc PrOSEgenesis.tar.gz | tar x 
	     
	     		$ cd PrOSEgenesis
	     
	    		$ chmod 777  /full/path/to/install.sh
	    		
	    		$ /full/path/to/install.sh
			
	       
	     
	     
4) Run PrOSEgenesis	     
	     	     
	     		$ /full/path/to/PrESOgenesis    /full/path/to/Candidates.fa
	     


5) Output

		The results will be stored in PrESOgenesis_resultss.txt. The score represents a 
	
		protein's probability of belonging to the  spermatogenesis/embryogenesis/oogenesis. 
	
		PrESOgenesis applied  a probability  score  >0.5 to designate putative related protein.  
	
	
	
