ZAA022
        S TA=$S($D(Y(0)):$P(Y(0),"\",6),1:""),TE=TO,TMN=$S('$D(TMN):99999,TMN="":99999,1:TMN) X:TO'="" TQF,TQ S:TP["U" TH=$TR(TH,"abcdefghijklmnopqrstuvwxyz","ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        I TC'["." S TJ=$S(TD=1:1,TN'["`":1,TA'["*"&$L(TA):1,TMM=0:2,TO="":3,1:4)+(TW-$L(TA)<35*4),TA=$P(TA,"*")_$P(",Next,Previous/First,Next/Previous/First,,NXT,PRV,NXT/PRV",",",TJ)_$S(234[TJ:" Screen",678[TJ:" Key",1:"")_$P(TA,"*",2)
        I TA]"" S %R=TT+TL+1,%C=-$L(TA)+TW\2+TC(1) W @ZAA02GP,$TR(TA,"*","")
        S TOO=TO,TMM=TM,TA=TI-1,TI=TD,TJ="",TO=TE S:TI>TA TI=TA G:TP["W" WRITONLY
        I TH?."\",TN'["`" D SEL8 G SEL4
        S TM=ZAA02G("T"),TG="\",X=$S($D(TMO):TMO,1:+$O(TB(0))),TY=^ZAA02G(.3,ZAA02G,0) K TMO
SEL0 G:TP["w" SELW I $D(TB)=1 R TE#1:TMN X TM S ZF=$A(TY,$F(TY,ZF)),X="." G TT
        I TV F X=X:0:TMM W $P(TB(X),TZ),TRO,TR,*8 R TE#1:TMN X TM S ZF=$A(TY,$F(TY,ZF)) W " " G SEL2:TE?1ANP,SEL7:'$T S X=$S(ZF=35:X+TD,ZF=36:X-TD,TC[".":X_".",ZF=33:X-1,ZF=34:+$O(TB(X)),ZF>1:X_".",1:+$O(TB(X))) G:$D(TB(X))=0 TT
        I 'TV F X=X:0:TMM W TR,TB(X) R TE#1:TMN X TM S ZF=$A(TY,$F(TY,ZF)) W TRO,TB(X) G SEL2:TE?1ANP,SEL7:'$T S X=$S(ZF=35:X+TD,ZF=36:X-TD,TC[".":X_".",ZF=33:X-1,ZF=34:+$O(TB(X)),ZF>1:X_".",1:+$O(TB(X))) G:$D(TB(X))=0 TT
        S X=$O(TB(0)) G SEL0
SELW F X=X:0:TMM S x=X D SELW1 S X=x,X=$S(ZF=33:X-1,ZF=35:X+TD,ZF=36:X-TD,ZF=34:+$O(TB(X)),ZF>1:X_".",1:+$O(TB(X))) G:$D(TB(X))=0 TT
        S X=$O(TB(0)) G SELW
SELW1 S TJ=$F($G(TX(x)),"|")-1 I TJ<1 W TR,TB(X) R TE#1:TMN X TM S ZF=$A(TY,$F(TY,ZF)) W TRO,TB(X) S TJ="" Q
        N OX S TX="",TJ1=$F(TX(x),"|",TJ+1)-3 S:TJ1<1 TJ1=255 X:TO]"" TS S %C=TF+TJ+1,%R=TT+x,TE=TF+TW-%C S:TJ1<255 TE=TJ1-TJ+1 S LNG=TE,(OX,X)=$E($P(TB(x),TZ,3),TJ,TJ1) S:X?." " (OX,X)="" W @ZAA02GP,TR,X,$J("",LNG-$L(X))
        S FNC=$S('$D(Y(0)):"",1:$P(Y(0),"\",2))_"UK,DK" X ^ZAA02GREAD S:OX'=X X(x)=X S:TJ1<255 X=$E(X_$J("",80),1,TE) S X=$E($P(TB(x),TZ,3),1,TJ-1)_X_$E($P(TB(x),TZ,3),TJ1+1,255),$P(TB(x),TZ,3)=X
        W TRO,TB(x) W:0 $J("",TE+TJ-$L(X)) S ZF=$S(FNC="DK":34,FNC="UK":33,FNC="":34,1:99) Q
SEL1 W:$D(TB(X)) TR,TB(X) I TP["M" S TX="",X=$S($O(X(""))]"":"",TP["M1":X_",",1:"") F TB=0:0 S TX=$O(X(TX)) S:TX'="" X=X_TX_"," I TX=""!($L(X)>200) S TE=X K X S X=TE Q
        I TP["V"!(TP["S"),X,","'[X
        G:'$T SEL4 S:X'["," X=X_","
        I TN["`" F TE=1:1 S TB=+$P(X,",",TE) G:'TB SEL4 X "F TI=2:1 Q:'$D(TN(TI))  Q:TN(TI)'<TB" S TO=$P(TN(TI-1),"`",2),TA=+TN(TI-1) D SEL6
        S TO=TN,TA=0 F TE=1:1:$L(X,",")-1 S TB=+$P(X,",",TE) D SEL6
SEL4 W ZAA02G("ROF"),ZAA02G("LO") S TL=$D(TEMSM)>0+TL,TW=$D(TEMSM)>0+TW,%C=TF,X=X_TJ G:$D(REFRESH) FORM G:TP["D" END I TP["F" S %R=TT,%C=1 W @ZAA02GP,ZAA02G("CS") G END
        S TE=$J("",TW+2) S:TC["." TL=$S(TP["L":1,1:-1) I TP'["T" F %R=TT:1:TT+TL+1 W @ZAA02GP,TE
        E  F %R=TL+1+TT:-1:TT W @ZAA02GP,TE
END  W ZAA02G("Z") 
                X ^ZAA02G("ECHO-ON")
                X ^ZAA02G("TERM-OFF")
                X ^ZAA02G("WRAP-ON") 
                K TA,TB,TC,TD,TE,TF,TG,TH,TI,TJ,TL,TM,TN,TO,TOO,TP,TQ,TQN,TR,TS,TSP,TT,TU,TV,TW,TX,TY,TZ,ZF,TRO,TMM,TMN,TEN,TFK,TDP,TOV,TQF,TVL,TEE,TEB,TEZ,TEMSM,TSX Q
MUL S TE='$D(X(X)),TB(X)=$P(TB(X),TZ)_TL(TE)_$P(TB(X),TZ,3) W TRO,TB(X) S:TE X(X)="" K:'TE X(X) X:$D(ZAA02MUL) ZAA02MUL G SEL0:TP'["A" S X=$O(TB(X)) S:X="" X=$O(TB(0)) G SEL0
TT I TFK[$P(^ZAA02G(.3),"\",ZF+2) S X=X+$S(ZF=36:TD,ZF=35:-TD,1:0),TJ=";"_$P(^(.3),"\",ZF+2) G SEL1
        I X["." S X=+X G SEL1:ZF=13,MUL:ZF=59&(TP["M"),SEL3
        I ZF=33 S X=$S(X<$O(TB(0)):TMM,1:X-1) G TT:$D(TB(X))=0,SEL0
        I ZF=35 S X=$S(X>TMM:X#TD+1,1:X+TD) G TT:$D(TB(X))=0,SEL0
        I ZF=36 S X=$S(X<$O(TB(0)):X-$O(TB(0))-2#TD+(TC-1*TD)+1+$O(TB(0)),1:X-TD) G TT:$D(TB(X))=0,SEL0
        S X=$O(TB(0)) G SEL0
SEL2 I TE?1P S X=+$O(TB(X)),ZF=34 G TT:'$D(TB(X)),SEL0
        I $E(TH,2)="\" F TX=2:1 I $E(TH,TX)'="\" S TH=$E(TH,TX-1,511) Q
        S TG=TG_$S(TP["U":$TR(TE,"abcdefghijklmnopqrstuvwxyz","ABCDEFGHIJKLMNOPQRSTUVWXYZ"),1:TE),TX=$F(TH,TG) I TX S X=$L($E(TH,1,TX-1),"\")+$O(TB(0))-2 G SEL1:TP["Q",SEL0
        I $L(TG)>2 S TG="\" G SEL2
        S TG="\" G SEL0
SEL3 G SEL5:TN'["`" I ZF=39 G SEL5:TOO="",MNX^ZAA021
        I ZF=40 G MPR^ZAA021:$P(TN,"`",3)>1
        I ZF=41 G MFR^ZAA021:$P(TN,"`",3)>1
SEL5 G SEL0:TP'["W"
WRITONLY I +$P(TP,"W",2)=0 G END:'$D(REFRESH) S:$D(TEMSM) TL=TL+1 G FORM
        R X#2:+$P(TP,"W",2) S TJ=";TM" G SEL4:'$T X ZAA02G("T") S TY=^ZAA02G(.3,ZAA02G,0),TJ="",ZF=$A(TY,$F(TY,ZF)) G SEL4:ZF=13,SEL3:'$D(Y(0)),SEL3:$P(Y(0),"\",2)'[$P(^ZAA02G(.3),"\",ZF+2) S TJ=";"_$P(^(.3),"\",ZF+2) G SEL4
        ;
SEL6 X TQF F TA=TA+1:1 X TQ I TA=TB S TX=TO X:TP["V" TS S:TP["M" X(TA)=TX S:TP'["M" X=TX,TE=999 Q
        Q
SEL7 S TJ=";TIMEOUT" G SEL1
SEL8 S:'$D(X) X="" S TX="" X:TO]"" TS S %C=TF+$F(TX_TOV,TOV),%R=TT+TL W @ZAA02GP,X S:$D(LNG)=0 LNG=TF+TW-%C S FNC=$S('$D(Y(0)):"",1:$P(Y(0),"\",2)),TIM=TMN X ^ZAA02GREAD S:FNC'="" TJ=";"_FNC Q
BEG G ^ZAA02
FORM S REFRESH=TT_":"_($D(TEMSM)>0+TL+TT+1)_":"_TF_":"_($D(TEMSM)>0+TW+TF) G END
        K Y S Y="10,15\BLRH\1\Sample 1\\Apples,Apricots,Bananas,Grapes,Grapefruit,Melons,Oranges,Peaches,Strawberries,Tangerines" D ^ZAA02 Q
G K Y S Y="10,15\BVLRH\1\Sample 1\\",Y(0)="\\^MAIL\TO" D ^ZAA02 Q
        ;
