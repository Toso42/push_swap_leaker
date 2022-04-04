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
echo "
                                                                                                    
                                                                                                    
                                .^7JPGBBBGGP5J7^.                                                   
                             :?G&&&&&&&&######&##GY~.                                               
                          .7B&&&&&&&&&&###########&&BY:                                             
                         !#&&&&&&&&&&################&#5.                                           
                        ?#&&&&&&&############B!GJY#####&#^                                          
                        !G###################G.:.!########~                                         
                      77P###&&&&&&############G5P##########:         .:~!?JY55555YJ7~.              
                    :G&&&###&&&&################&########BBJ    .^?5GBB####BBBGGGBBBBGP?^           
                    JBGPGB#B####G########BGPY???J5PGBGGGGGG5  7PBBBBBBBBBBBBBBGGGGGGGGGGG57.        
                    :J5YJJ!J5PPGGGGGPP5J?7!!~!!!!!!7?PGGGGG5!B#BBBBBBBBBBBBBBBGGGGGGGGGGPPPP!       
                      :?55?~7!!!!!!!!!!!!!!!!!!!!!!~^YPGGGGPYPB#BBBBBBBBBBBBBGGGGGGGGGGGPPPPPY.     
                        .75~?77777!!!~~~~!!!!!!~~!!~7GGGGGGGG5Y5BBBBBBBBBBBGGGGGGGGGGGGGP5YPPPP^    
           .^7?JYYJ7!^:.. !YPGGGPP55Y55PPPPPPP5Y?!~~PGGGGGGGGP5JJP555555Y555555PPPGGGGGPPPJJPPPP^   
        ~5#&&&&&&&&###BPJ?B&&###B###########BPPPPY^YGG5PGGGGGGB#############BBBGGPY5PGGPPPP?YPPPP:  
      !B&&&&&&#########5Y#&#&&BP###########&B5YYY?5P5J5?GGGGB##############&&&&&&&&BGYY5PPPP75PPPY  
     G&&&&&##########B5G&&###PP#########&##5?JJ?J5Y?YG#5JGGG##############&&&&&&&&&&&&BYYPPPY?PPPP~ 
    ?&&#############PP#&####PG&#######&##G?!JYYYYY5B###B7GGGB##############&&&&&&&&&&&&&PJPP5!5PPPY 
    Y&######&##BGP55B#####GPB&######&&#BY7JYYY5PGB#####B?GYJGGBB############&&&&&&&&#####J5PP7YPPPP:
     7YGB5BPJ~:. ~G#####BPP########&&#PJPGGBBB########&5YG?7JGGGP5PPGBB##################?YPP7YPPPG^
       ^~      :P&&####GPB########&#BYJB#############&B?G5?B!PGGGP5Y555Y75PGB###########G!PPP?JPPPG~
             :P&&####BPG#########&#BJY#####BBB#######BYPG7P#?PGGGGGGGGGG??5YYY55GBG##BGY75PPP?YPPPG~
           .J#&####BPPB#########&#GJB&&####BBBBBB##BPYPGJP&&YBBBGGGGGGGGG7YPPP5JB#5?JJJYPPPPP75PPPP:
          7#&#####GPB############PJ&@@@@@&&&&&&&&#G5G#B5#@@&Y####BBGGGGGGP7PPPPP5Y5PPPPPPPPP5!5PPPY 
        ^G&&####BPG#&###########PJ&@@@@@@@@@@&&BGGB##GG&@@@BP########BBB##?YPPPPPPPPPPPPPPPPJ!PPPP! 
      .5&&&###BPG#&############P7#&&@&&&&&#BGGGB##BGG&@@@@&Y##############5JPPPPPPPPPPPPPPPP7YPPPP. 
     :B&&&&##GP#&#&&&&########P?#&&##########&#BGGB&@@@@@&YB##############Y7PPPPPPPPPPPPPPPY!PPPPJ  
    !&&&&&&#PG#&&&&&&&#######G7P#&&&&&&&##BBBBB#&@@@@@@@GYB###############BYJPPPPPPPPPPPPPP7YPPPP:  
   7&&&&&&&GB&&&&&&&&&&&####BJG@&&&#######&&&@@@@@@@@@#5P###BG##############57PPPPPPPPPPPPJ7PPPP?   
  7&@&&&&@#P@@@@@@@&&&&&###B5J@@@@@@@@@@@@@@@@@@@@@@#P5B#BB##&&&&&&&#########P7PPPPPPPPPP5~5PPPY    
 ~@@@@@@@@B&@@@@@@@@&&&&###G?#@@@@@@@@@@@@@@@@@@@&#GGB##GP#&&&&&&&&&&#########57PPPPPPPP5!YPPPP:    
 #@@@@@@@@@@@@@@@@@@&&&&&#G5?GB#&&@@@@@@@@@@&&#BGGB####5G&&&&&&&&&&&&#########B!YPPPPPP57YPPPP!     
~@@@@@@@@@@@@@@@@&&&&&&&&BP7B&#BGGGBB#BBBBBGGGBB####BPJ5&&&&#####BBB##########BY?PPPPP575PPPPJ      
?@@@@@@@@@@@@&&&&&&&&&&&#GY?PB##################BBP55P?#&&B#&&&&&@&#PG#######BG57PPPPJ?5PPPPP:      
J&&&&&&&&&@@&&&&&&&&&&&#BP!GG555PGBBBBBBBBBBGGP555PGB5Y&#G&&###BGG&@@PP#####BGGY7PP5?JPPPPPPY       
~&&&&&&&&&&&&&&&&&&&&&#BP!~?5GGGP5YYYYYYYYYYY5PPGBBBG?P&P&@5#&&##B5@@&J####BGPGJJP7 ^GPPPPPG7       
 G&&&&&&&&&&&&&&&&&&&#BP7?5J??Y5PPGGGGGGGGGBBBBBGGPYJ75#Y&@5B####GP@@B?##BGGPGG7!.   ~PGGGGG7       
 .B&&&&&&&&&&&&&&&&#BG5!J5555YJ??JJJYY55555555YYJJJY5J!B5Y#&BGGGGB&&#JGBGGGGGGP.      .JGGGB?       
  .Y##&##&&&&&###BBG5?7Y55555555YJJ?7!?JYYYYY555555YYY7YGPJYPGGGGGP55GGGGGGGGG!         .~JP5       
    .!YGBBBBBBGGP5JJJ5P55555555YYYY5.   .::^~!!!~~!77?7:YGGP55YYY5PGGGGGGGGGGJ                      
        .:^^^^:.   ^J?JY555555555YY~                     !GGGGGGGGGGGGGGGGGG5                       
               .75GBBGP5YY555YJ7^:                        .7YYYYYYY5PGGGGGG5.                       
               :J5PPPPYJ7::..                              G@@@@&&BGP5PGGPY.                        
                                                           :7YPGBBGP57...                           
                                                                                                   "
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
