#!/bin/bash

# DEFINE PUSH_SWAP AND CHECKER EXECUTABLES HERE #
PS="../push_swap"
CH="../checker_Mac"

######	COLOR FORMATS
GREEN=$'\033[0;32m'
RED=$'\033[0;31m'
NC=$'\033[0m'
PINK=$'\033[95m'
BLACK=$'\033[1;30m'
DBLACK=$'\033[0;30m'
CYAN=$'\033[1;33m'
BBLACK=$'\033[40m'
WHITE=$'\033[1;37m'
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
                  PG?~~~~~~~~~~~~~~~7${BLACK}#${DBLACK}G${WHITE}B${PINK}!~~~~~!.         ..........             
                .^Y?~~~~~~~~~~~~~~~~~!?!~~~~~~~!.   .:^^~~!!!!!!!!~~^:.         
               .!!~~~~!~~~!~~~~~~!!!777!!!!~~!7J^.^~!!!~~~~~~~~~~~~~~!!~:.      
               .7?5P5J7!!!!!!77?JYPGGGGPJ??????J?~~~~~~~~~~~~~~~~~~~~~~~!!^     
                .~7${DBLACK}PBBGGGPPPPGGGBBBBBBBBG5${PINK}???????7~~~~~~~~~~~~~~~~~~~~~~~~!~.   
           ......  .!${DBLACK}PBGGGGGGGGGGGGGGGGBGBY${PINK}??????J?7!!!!!!!!~~~~~~~~~~~~!~~~!.  
      .:^~~~~~~~~!!!!?JJJJYJYYJJJJYY${DBLACK}555GBBGJ${PINK}??????77!!!!!!!!!!!!!!!~~~~~!7~~~!. 
    .^~!~~~~~~~~~~!J?777??777777777?5${DBLACK}P55555${PINK}{JJ???7~~~~~~~~~~~~~~~~!!!!!~~~!7~~~~ 
   .!!~~~~~~~~~~~7?777?Y?777777777J55YJ???7~7J??!~~~~~~~~~~~~~~~~~~~!7!~~~J7~~!:
   ~!~~~~~~~~~~!77777Y5?77777777J5YJ??77!${CYAN}~~~${PINK}!J???!!~~~~~~~~~~~~~~~~~~~!7~!JJ!~~!
   ^!!~!~!!!~~77777J5Y77777777?YJ7!!${CYAN}~~~~~~~~${PINK}7J??????77!${DBLACK}!!${PINK}~~~~~~~~~~~~~~7!7JY?!~7
    .~^~^:..:77777Y5J77777777J57${CYAN}~~~~~~~~~~~~${PINK}J???????JJJJJJ?${DBLACK}77!!!${PINK}~~~~~~~7!??Y?7~7
      .   .~7777?5Y777777777YY!${CYAN}~~~~~~~~~~~~${PINK}77!77~!77?????JJ77??J7777!7777??Y??!7
        .^77777Y5?77777777?5?${CYAN}::::^^^^^:::${PINK}^!!!!:~~~~~~!!77777~~~!!!?777!!??JY??!!
       :77777J5J777777777?57${CYAN}...........${PINK}:~!!!~${CYAN}..${PINK}~!~~~~~~~~~~7!~~~~!~~~~!???JJ??7~
     .!7777?5Y?777777777?5?${CYAN}........:${PINK}^${CYAN}~~!!!~:...${PINK}!~~~~~~~~~~~!7~~~~~~~~!????Y????:
    ^77777?5?7777777777?5Y~~~~~~~~!!!!!~^:${CYAN}....${PINK}^!~~~~~~~~~~~!?~~~~~~~!????JY???7 
   ~77777?Y7777777777775Y!!!!!!!!!!~~^:${CYAN}......${PINK}^!~~~~~~~~~~~~~!7~~~~~!?????Y???J: 
  ~777777J777777777777J5:${CYAN}.::::::::.........${PINK}:~!~~~~~~~~~~~~~~~!7~~!7?????JJ??J~  
 ^777777??77777777777?5!${CYAN}.................${PINK}^~!~!!~~~~~~~~~~~~~~~!77??????JY???7   
:?7!!7777777777777777Y5!:${DBLACK}:${PINK}${CYAN}...........${PINK}:^~!!~~77~~~~~~~~~~~~~~~~~7J?????JY???J.   
!77~~777777777777777J5J${DBLACK}~!${PINK}!~~~^^^^~~~!!!~~~!77~~!!~~~~${PINK}!!~~~~~~~~!Y????JJ???J~    
?77!!77777777777777?557!${DBLACK}!${PINK}~~~~~~~~~~~~~~!!!~7~~!^:${CYAN}:::..${PINK}^!~~~~~~~7Y???JJ?????.    
?7~::!7777777777777YPY~${DBLACK}~${PINK}!7777!!!!!77777!~~~?~!:${CYAN}:~${PINK}!${CYAN}!!~:.:${PINK}!~~~~~7?Y??JJ????J!     
77~::^777777777777YPY${DBLACK}J${PINK}Y?!${CYAN}~~~!${PINK}!!!!!!!${PINK}~~~~!7?Y7!.~${PINK}!~~~!~..!~~~!???Y!..?J???J~     
:?7^:^7777777777?Y5Y${DBLACK}?${PINK}??JYJJ?77!!!!!!!77????Y?J~${CYAN}:~~~~^..~${PINK}!!77???J:   .~?J??7     
 .!?7777777777?Y55J?${DBLACK}?${PINK}?????JJJJ?JJJJJJJJJJJ?7J?J?!!${CYAN}~~~${PINK}!????????J~      .^!?J:    
   :~?JJJJJJJJJJ!${DBLACK}7${PINK}??????????J^ ..:^^~~!~~^::^???????J????????J7          ...    
      ..::::...^~~7?J??JJ??!:                .!???????????????.                 
            .::${WHITE}^^^^~${PINK}!!~^:..                   .7${WHITE}!~~~~${PINK}!!?J??J7.                  
            ${WHITE} .......${PINK}                          .${WHITE}:^^~~~~~~!~^${PINK}:. ${NC}${BNC}"
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
