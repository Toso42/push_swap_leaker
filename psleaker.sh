#!/bin/bash

# DEFINE PUSH_SWAP AND CHECKER EXECUTABLES HERE #
PS="../push_swap"
CH="../checker_Mac"

######	COLOR FORMATS
GREEN=$'\033[0;32m'
RED=$'\033[0;31m'
NC=$'\033[0m'
PINK=$'\033[95m'
BBLACK=$'\033[40m'
BNC=$'\033[49m'
###### SCRIPT VARIABLES
NOLEAKS="0 leaks"
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
echo "${BBLACK}${PINK}                        ..:^~!!!!!!~~^:..                                 
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
             .......                          .:^^~~~~~~!~^:. ${NC}${BNC}"
echo "
------------------PUSH_SWAP LEAKS TESTER--------------------------
"

${PRE} ${PS} ${ARG1} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG1 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG1 ] : ${RED} ${LEAKS} ${NC}";
fi

${PRE} ${PS} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG2 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG2 ] : ${RED} ${LEAKS} ${NC}";
fi

${PRE} ${PS} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG3 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG3 ] : ${RED} ${LEAKS} ${NC}";
fi


${PRE} ${PS} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG4 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG4 ] : ${RED} ${LEAKS} ${NC}";
fi


${PRE} ${PS} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG5 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG5 ] : ${RED} ${LEAKS} ${NC}";
fi

${PRE} ${PS} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG6 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG6 ] : ${RED} ${LEAKS} ${NC}";
fi

${PRE} ${PS} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG7 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG7 ] : ${RED} ${LEAKS} ${NC}";
fi

${PRE} ${PS} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG8 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG8 ] : ${RED} ${LEAKS} ${NC}";
fi
${PRE} ${PS} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG9 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG9 ] : ${RED} ${LEAKS} ${NC}";
fi

${PRE} ${PS} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG10 + $ARG11 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG10 + $ARG11 ] : ${RED} ${LEAKS} ${NC}";
fi


echo "
------------------CHECKER LEAKS TESTER----------------------------
"
######### 1
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG1 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG1 ] &input1: ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG1 ] &input2:${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG1 ] &input2: ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG1 ] &input3:${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG1 ] &input3: ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG1 ] &input4:${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG1 ] &input4: ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG1} 2>/dev/null > output.txt 
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG1 ] &input5:${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG1 ] &input5: ${RED} ${LEAKS} ${NC}";
fi

echo "
"
######### 2
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG2 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG2 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG2 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG2 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG2 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG2 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG2 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG2 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG2} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG2 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG2 ] : ${RED} ${LEAKS} ${NC}";
fi

echo "
"
########## 3
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG3 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG3 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG3 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG3 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG3 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG3 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG3 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG3 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG3} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG3 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG3 ] : ${RED} ${LEAKS} ${NC}";
fi

echo "
"
########## 4
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG4 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG4 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG4 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG4 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG4 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG4 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG4 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG4 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG4} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG4 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG4 ] : ${RED} ${LEAKS} ${NC}";
fi

echo "
"
########## 5
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG5 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG5 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG5 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG5 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG5 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG5 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG5 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG5 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG5} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG5 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG5 ] : ${RED} ${LEAKS} ${NC}";
fi

echo "
"
########## 6
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG6 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG6 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG6 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG6 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG6 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG6 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG6 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG6 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG6} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG6 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG6 ] : ${RED} ${LEAKS} ${NC}";
fi

echo "
"
########## 7
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG7 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG7 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG7 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG7 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG7 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG7 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG7 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG7 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG7} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG7 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG7 ] : ${RED} ${LEAKS} ${NC}";
fi

echo "
"
########## 8
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG8 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG8 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG8 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG8 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG8 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG8 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG8 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG8 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG8} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG8 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG8 ] : ${RED} ${LEAKS} ${NC}";
fi

echo "
"
########## 9
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG9 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG9 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG9 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG9 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG9 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG9 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG9 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG9 ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG9} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG9 ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG9 ] : ${RED} ${LEAKS} ${NC}";
fi

echo "
"
########## 10
(cat ./inputs/input1) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG10 + $ARG11 ] &input1 :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG1 + $ARG11 ] &input1 : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input2) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG10 ++ ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG10 ++ ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input3) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG10 ++ ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG10 ++ ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input4) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG10 ++ ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG10 ++ ] : ${RED} ${LEAKS} ${NC}";
fi

(cat ./inputs/input5) | ${PRE} ${CH} ${ARG10} ${ARG11} 2>/dev/null > output.txt
(grep 'leaks for' output.txt;) | (cut -d " " -f 3-4 > output2.txt)
LEAKS=$(cat output2.txt)
if [ "$LEAKS" = "$NOLEAKS" ]
then
	echo "for argument [ $ARG10 ++ ] :${GREEN} ${LEAKS} ${NC}";
else
	echo "for argument [ $ARG10 ++ ] : ${RED} ${LEAKS} ${NC}";
fi
rm output.txt && rm output2.txt
echo "
---------------------------THE END---------------------------------"
