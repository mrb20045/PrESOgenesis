

===============================================================================================
=       ============        ===      =====    =================================================
=  ====  ===========  ========  ====  ===  ==  ================================================
=  ====  ===========  ========  ====  ==  ====  ===============================================
=  ====  ==  =   ===  =========  =======  ====  ===   ====   ===  = ====   ====   ===  ===   ==
=       ===    =  ==      =======  =====  ====  ==  =  ==  =  ==     ==  =  ==  =  ======  =  =
=  ========  =======  =============  ===  ====  ===    ==     ==  =  ==     ===  ====  ===  ===
=  ========  =======  ========  ====  ==  ====  =====  ==  =====  =  ==  =======  ===  ====  ==
=  ========  =======  ========  ====  ===  ==  ===  =  ==  =  ==  =  ==  =  ==  =  ==  ==  =  =
=  ========  =======        ===      =====    =====   ====   ===  =  ===   ====   ===  ===   ==
===============================================================================================
=	 										      =
=	                          Fertility Protein Predictor by:                 	      =
=	 										      =			
=	 		       	   Mohammad Reza Bakhtiarizadeh                   	      = 
=	 			          Maryam Rahimi                           	      =
=	      		                       	     					      =
=	 										      = 
=	  			      University of Tehran${bold} 		              =
=	 										      =
=	 			   Contact: mrbakhtiari@ut.ac.ir   			      =
=	 										      =
=	         Usage:  /path/to/PrESOgenesis  options  /path/to/sequences.fasta	      =
=	 										      =
===============================================================================================


1) Introduction
	     
	     PrOSEgenesis is a  Support Vector Machine-based classifier  to predict the  
	     
	     spermatogenesis/embryogenesis/oogenesis  related  proteins  based on  1920  
	     
	     meaningful protein sequence features. It takes protein/DNA FASTA sequences 
	     
	     as  input,  and  generate  output  about  the potential of a protein to be 
	     
	     involved  in spermatogenesis/embryogenesis/oogenesis. PrOSEgenesis depends 
	     
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
	     	     
	     		$ /full/path/to/PrOSEgenesis    /full/path/to/Candidates.fa
	     


5) Output

	The results will be stored in PrOSEgenesis_resultss.txt. An example  of PrOSEgenesis  
	
	output is  presented here. The score represents a protein's probability of belonging 
	
	to the  spermatogenesis/embryogenesis/oogenesis. PrOSEgenesis applied  a probability  
	
	score  >0.5 to designate putative related protein.  
	
	
	
	

                                                         ############################   
                                                         #  PrESOgenesis Results    #  
                                                         #                          #
                                                         #    19/08/2017 16:16:03   #
                                                         ############################ 



Total number of processed sequences: 7 


______________________________________________________________________________________________________________________________________________________

  Protein_ID	                  Fertility (Score)	Type    	Embryogenesis_Score	Oogenesis_Score	 Spermatogenesis_Score  
______________________________________________________________________________________________________________________________________________________
tr|E3M642|E3M642_CAERE 		No (0.26)		_		_			_		_ 
______________________________________________________________________________________________________________________________________________________
tr|H2VGR2|H2VGR2_CAEJA 		No (0.42)		_		_			_		_ 
______________________________________________________________________________________________________________________________________________________
tr|B4R5E9|B4R5E9_DROSI 		Yes (0.65)		Oogenesis		0.68			0.94		0.72 
______________________________________________________________________________________________________________________________________________________
tr|G2J611|G2J611_DROME 		Yes (0.69)		Oogenesis		0.76			0.99		0.74 
______________________________________________________________________________________________________________________________________________________
tr|A0A0J9S1Y5|A0A0J9S1Y5_DROSI 	Yes (0.80)		Oogenesis		0.73			0.94		0.36 
______________________________________________________________________________________________________________________________________________________
tr|A0A0M5JA66|A0A0M5JA66_DROBS 	Yes (0.85)		Oogenesis		0.77			0.94		0.43 
______________________________________________________________________________________________________________________________________________________
tr|A0A0M4EYE9|A0A0M4EYE9_DROBS 	No (0.38)		_		_			_		_ 
______________________________________________________________________________________________________________________________________________________


			Summary of the Resuts
_____________________________________________________________
Title		Score>0.5	Score>0.75	Score>0.90
_____________________________________________________________
Fertiliy	4		2		0
Embryogenesis	4		2		0
Oogenesis	4		4		4
Spermatogenesis	2		0		0
_____________________________________________________________


