/*****************************************************************************************
*                                                                                        *
* This SAS program will extract the United States Sentencing Commission's Booker Report  *
* 2012 congressional report file and create a SAS dataset.                               *
*                                                                                        *
* Prior to running the program you must update the DAT file location in the FILNAME line *
* to correspond to the location of the file on your computer.                            *
*                                                                                        *
* You must also update the library location in the LIBNAME statement to correspond to    *
* the folder you want the output file to be located.                                     *
*                                                                                        *
*****************************************************************************************/

/* The following line should contain the complete path and name of your raw data file */
FILENAME datafile '/folders/myfolders/bookreport2012.dat' ;

/* The following line should contain the directory in which you wish your SAS file to be stored */
libname library '/folders/myfolders/' ;

/* The following line contains the name (without the extension) for your SAS dataset */
%LET dataset = bookreport2012 ;

DATA library.&dataset ;
INFILE datafile LRECL=82;
INPUT
   ACCAP  1                 AGE  2-3                 AGGDUM  4             
   BOOKER2  5               CAREER  6                CAROFFAP  7           
   CIRCDIST  8-9            IMPACTOL  10             IMPCTCHC  11          
   MITDUM  12               MONCIRC  13-14           MONSEX  15            
   NEWCIT  16               NEWCNVTN  17             NEWEDUC  18           
   NEWRACE  19              OFFTYPE2  20-21          PERIOD  22            
   PRIMARY  23-24           QUARTER  25              SA  26                
   SAFEVALVE  27            SENTIMP  28              TOTCHPTS  29-30       
   WEAPON  31               XCRHISSR  32             GLMIN  33-35          
   FY  36-39                USSCIDN  40-46           SENSPLT0  47-64       
   LOSS_2B  65-76           GDL $ 77-82            ;                       

LABEL
   ACCAP = "Was armed career status applied?"
   AGE = "Age at sentencing"
   CAROFFAP = "Career offender status applied?"
   CIRCDIST = "District code by circuit"
   MONCIRC = "Judicial sentencing district"
   MONSEX = "Gender"
   NEWCIT = "Defendants citizenship status"
   NEWCNVTN = "Plea or trial indicator"
   NEWEDUC = "Aggregation of EDUCATN"
   NEWRACE = "Aggregation of MONRACE"
   OFFTYPE2 = "Aggregation of OFFTYPE (annrep)"
;

LENGTH
   ACCAP 3                  AGE 3                    AGGDUM 3              
   BOOKER2 3                CAREER 3                 CAROFFAP 3            
   CIRCDIST 3               IMPACTOL 3               IMPCTCHC 3            
   MITDUM 3                 MONCIRC 3                MONSEX 3              
   NEWCIT 3                 NEWCNVTN 3               NEWEDUC 3             
   NEWRACE 3                OFFTYPE2 3               PERIOD 3              
   PRIMARY 3                QUARTER 3                SA 3                  
   SAFEVALVE 3              SENTIMP 3                TOTCHPTS 3            
   WEAPON 3                 XCRHISSR 3               GLMIN 4               
   FY 4                     USSCIDN 6 ;

         

RUN ;
