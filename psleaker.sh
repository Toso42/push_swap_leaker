#!/bin/bash

# DEFINE PUSH_SWAP AND CHECKER EXECUTABLES HERE #
PS="../push_swap"
CH="../checker_Mac"

######
PRE="leaks --atExit -- "
ARG1=""
ARG2="0"
ARG3="foo"
ARG4="0 0"
ARG5="0 1 2 3 4 5"
ARG6="5 4 3 2 1 0"
ARG7="0 99999999999999999999"
ARG8="0 -99999999999999999999"
ARG9="1 2 3 bar"
ARG10="1 3 5 7"
ARG11="2 4 6 8"
echo "                        ..:^~!!!!!!~~^:..                                       
                      :^~!!~~~~~~~~~~!!!~~:.                                    
                    :~!~~~~~~~~~~~~!777~~~!!^.                                  
                  .!7~~~~~~~~~~~~~~~!J!7~~~~!!.                                 
                  PG?~~~~~~~~~~~~~~~7#GB!~~~~~!.         ..........             
                .^Y?~~~~~~~~~~~~~~~~~!?!~~~~~~~!.   .:^^~~!!!!!!!!~~^:.         
               .!!~~~~!~~~!~~~~~~!!!777!!!!~~!7J^.^~!!!~~~~~~~~~~~~~~!!~:.      
               .7?5P5J7!!!!!!77?JYPGGGGPJ??????J?~~~~~~~~~~~~~~~~~~~~~~~!!^     
                .~7PBBGGGPPPPGGGBBBBBBBBG5???????7~~~~~~~~~~~~~~~~~~~~~~~~!~.   
           ......  .!PBGGGGGGGGGGGGGGGGBGBY??????J?7!!!!!!!!~~~~~~~~~~~~!~~~!.  
      .:^~~~~~~~~!!!!?JJJJYJYYJJJJYY555GBBGJ??????77!!!!!!!!!!!!!!!~~~~~!7~~~!. 
    .^~!~~~~~~~~~~!J?777??777777777?5P55555JJ???7~~~~~~~~~~~~~~~~!!!!!~~~!7~~~~ 
   .!!~~~~~~~~~~~7?777?Y?777777777J55YJ???7~7J??!~~~~~~~~~~~~~~~~~~~!7!~~~J7~~!:
   ~!~~~~~~~~~~!77777Y5?77777777J5YJ??77!~~~!J???!!~~~~~~~~~~~~~~~~~~~!7~!JJ!~~!
   ^!!~!~!!!~~77777J5Y77777777?YJ7!!~~~~~~~~7J??????77!!!~~~~~~~~~~~~~~7!7JY?!~7
    .~^~^:..:77777Y5J77777777J57~~~~~~~~~~~~J???????JJJJJJ?77!!!~~~~~~~7!??Y?7~7
      .   .~7777?5Y777777777YY!~~~~~~~~~~~~77!77~!77?????JJ77??J7777!7777??Y??!7
        .^77777Y5?77777777?5?::::^^^^^:::^!!!!:~~~~~~!!77777~~~!!!?777!!??JY??!!
       :77777J5J777777777?57...........:~!!!~..~!~~~~~~~~~~7!~~~~!~~~~!???JJ??7~
     .!7777?5Y?777777777?5?........:^~~!!!~:...!~~~~~~~~~~~!7~~~~~~~~!????Y????:
    ^77777?5?7777777777?5Y~~~~~~~~!!!!!~^:....^!~~~~~~~~~~~!?~~~~~~~!????JY???7 
   ~77777?Y7777777777775Y!!!!!!!!!!~~^:......^!~~~~~~~~~~~~~!7~~~~~!?????Y???J: 
  ~777777J777777777777J5:.::::::::.........:~!~~~~~~~~~~~~~~~!7~~!7?????JJ??J~  
 ^777777??77777777777?5!.................^~!~!!~~~~~~~~~~~~~~~!77??????JY???7   
:?7!!7777777777777777Y5!::...........:^~!!~~77~~~~~~~~~~~~~~~~~7J?????JY???J.   
!77~~777777777777777J5J~!!~~~^^^^~~~!!!~~~!77~~!!~~~~!!~~~~~~~~!Y????JJ???J~    
?77!!77777777777777?557!!~~~~~~~~~~~~~~!!!~7~~!^::::..^!~~~~~~~7Y???JJ?????.    
?7~::!7777777777777YPY~~!7777!!!!!77777!~~~?~!::~!!!~:.:!~~~~~7?Y??JJ????J!     
77~::^777777777777YPYJY?!~~~!!!!!!!!~~~~!7?Y7!.~!~~~!~..!~~~!???Y!..?J???J~     
:?7^:^7777777777?Y5Y???JYJJ?77!!!!!!!77????Y?J~:~~~~^..~!!77???J:   .~?J??7     
 .!?7777777777?Y55J???????JJJJ?JJJJJJJJJJJ?7J?J?!!~~~!????????J~      .^!?J:    
   :~?JJJJJJJJJJ!7??????????J^ ..:^^~~!~~^::^???????J????????J7          ...    
      ..::::...^~~7?J??JJ??!:                .!???????????????.                 
            .::^^^^~!!~^:..                   .7!~~~~!!?J??J7.                  
             .......                          .:^^~~~~~~!~^:.  "
echo "
------------------PUSH_SWAP LEAKS TESTER--------------------------
"

${PRE} ${PS} ${ARG1} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG1 ] : ${LEAKS}";

${PRE} ${PS} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG2 ] : ${LEAKS}";

${PRE} ${PS} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG3 ] : ${LEAKS}";

${PRE} ${PS} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG4 ] : ${LEAKS}";

${PRE} ${PS} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG5 ] : ${LEAKS}";

${PRE} ${PS} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG6 ] : ${LEAKS}";

${PRE} ${PS} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG7 ] : ${LEAKS}";

${PRE} ${PS} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG8 ] : ${LEAKS}";

${PRE} ${PS} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG9 ] : ${LEAKS}";

${PRE} ${PS} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG10 && $ARG11 ] : ${LEAKS}";


echo "
------------------CHECKER LEAKS TESTER----------------------------
"
######### 1
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG1 ] & /input1 : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG1 ] & /input2 : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG1 ] & /input3 : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG1 ] & /input4 : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG1 ] & /input5 : ${LEAKS}";

echo "
"
######### 2
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG2 ] & /input1 : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG2 ] & /input2 : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG2 ] & /input3 : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG2 ] & /input4 : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG2 ] & /input5 : ${LEAKS}";

echo "
"
########## 3
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG3 ] & ..1 : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG3 ] & .. : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG3 ] & .. : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG3 ] & .. : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG3 ] & ..5 : ${LEAKS}";

echo "
"
########## 4
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG4 ] & .. : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG4 ] & .. : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG4 ] & .. : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG4 ] & .. : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG4 ] & .. : ${LEAKS}";

echo "
"
########## 5
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG5 ] & .. : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG5 ] & .. : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG5 ] & .. : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG5 ] & .. : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG5 ] & .. : ${LEAKS}";

echo "
"
########## 6
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG6 ] & .. : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG6 ] & .. : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG6 ] & .. : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG6 ] & .. : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG6 ] & .. : ${LEAKS}";

echo "
"
########## 7
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG7 ] & .. : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG7 ] & .. : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG7 ] & .. : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG7 ] & .. : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG7 ] & .. : ${LEAKS}";

echo "
"
########## 8
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG8 ] & .. : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG8 ] & .. : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG8 ] & .. : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG8 ] & .. : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG8 ] & .. : ${LEAKS}";

echo "
"
########## 9
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG9 ] & .. : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG9 ] & .. : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG9 ] & .. : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG9 ] & .. : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG9 ] & .. : ${LEAKS}";

echo "
"
########## 10
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG10 && $ARG11 ] & .. : ${LEAKS}";

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG10 && $ARG11 ] & .. : ${LEAKS}";

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG10 && $ARG11 ] & .. : ${LEAKS}";

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG10 && $ARG11 ] & .. : ${LEAKS}";

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
echo "for argument [ $ARG10 && $ARG11 ] & .. : ${LEAKS}";

rm output.txt && rm output2.txt
echo "
---------------------------THE END---------------------------------"
