AA
        ;
        ;
        ;
        S @("$ZINTERRUPT=""I $$JOBEXAM^%YDBWEBZU($ZPOSITION)""")  
        N S S S=0 F  D SCREEN S:S>40 S=0 W "..." H 1
        Q
    ;
    ;
r(s,f,t) ;REPLACE
	i $tr(s,f)=s q s
	n o,i s o="" f i=1:1:$l(s,f)  s o=o_$s(i<$l(s,f):$p(s,f,i)_t,1:$p(s,f,i))
	q o
	;    
    ;
SCREEN
        K
        S S=$G(S)+1
        N A,B,C,D,E
        S A="======BEST BUY(C) IS:========"_$c(10)
        S B=" 1 ==            THE BEST               "
        S C=" 2 == ARRESTING KIDS WHO SHOPLIFT       "
        S D=" 3 ==          IS PRO 5G                "
        S E=" 4 == ATLEAST UNLIKE AMAZON, IS 3D      "
        S C=$$r(C,"KIDS WHO SHOPLIFT","FLAT EARTERSSSSS AHHHH!")
        W # H 1 W "." H 1 W "." H 1 W "." H 1 W "." H 1 
        I $D(^AHM) W ^AHM W 3 W !
        I $G(^AHM)="AA" S ^AHM="HAFEED EL 2ABTAN EL BEKRY"
        W " i hate taylor swift ahhhhh " H 7 W !
        W !,"    Speaking of sacrafice and small boobs in a pool,"
        W !,"  Here is how to download the latest Jennifer Lawerence,"
        W !,"  Youtube Video of here Amazing performance in the Hanging Tree"
        W !!
        ;H 2
        ;N V S V="F3hTW9e20d8",^V=V
        ;W !,"  ",V H 1 W !,$C(9),"TAYLOR SWIFTS DNA SEQUENCE...ATLEAST THATS HOW HUMANS STARTED;",!
        ;ZSY ("npm install ytdl -g")
        ; ZSY ("nvm use latest") 
        ;H 1 
        ;ZSY ("ytdl ""https://www.youtube.com/watch?v="_^V_""" -o "_^V)
        h 1
        ;zsy "ls"
        N F S F=" " S $P(F," ",60)=" "
        N R S R="4 "_$C(10)_"ALEINS ARE REAL AND THE EARTH IS NOT FLAT "
        S R=R_"(SATINVA IN THE AM, INDICA IN THE PM, NEVER CBD)!!!!"
        N I S I=0 F I=1:1:+R W F,!
        N X S X=($R(4)+1)
        I X<2  S X=1
        I X>=5 S X=5
        W A_$S(X<2:B,X<3:C,X<4:D,X<5:E,1:E)_$C(10)
        N I F I=1:1:+R W F_$C(10)
		;H 1 W ! W $E(R,2,$L(R)) H 3
        ;
        ;I'm attempting that goes what  K S BHASKAR Believes. Not Eating DODO. 
        ;
        ;I will get the JSON
        zsy "curl https://dog.ceo/api/breeds/list/all > list.json" W !
        N A S A="/home/ahmed2/dbgui/list.json"
        N M S M="FILE DOES NOT EXIST"
        I '$$FileExists^%YDBUTILS2(.A) W M Q
        N C S C=1023 N D S D=""
        D ReadFileByChunk^%YDBUTILS2(.A,.C,.D)
        N E S E="E" D DECODE^%YDBWEB("D","E")
        W $G(D) I $D(D)>1 ZWR D W !!
        W "ADMIRE FOR 7 SECONDS " H 7
        W !,"**** ACCORDING TO DOG.CEO:",!
        W !,$C(9)_"THE FOLLOWING BOBY",!,"(Egyptian 7amada Slang)",!
        ;W "BREADS EXIST...(PRESS [ANY KEY] TO LOAD ONE BY ONE)",!!
        N A,T S A="" F  S A=$O(E("message",A)) Q:A=""  W $C(9),"-",A," " w T H 0.5 W !
        W !!,"****DONE**** check out D ^ZAA FORM A BLACK MAN NAMED MARK PATERSON" 
        N X S X=0 H 1 S X=X+1 W "." I X>3 Q
        ;D ^ZAA 
        K ; F U C,C++,F#,...
        H 1
        G AA
        ;
        ;
        ;
        ;
        ;
        ;
        ;
        ;
        ;
        ;
