%Load data
%Change working directory as appropriate
data=xlsread('Number_Alternatives.xlsx','Number_Alternatives');

%**************************************************************************
%Name variables - See xls file for definitions
%**************************************************************************
OBJECTID_1=data(:,1);Respondent=data(:,2);Faculty_St=data(:,3);Student=data(:,4);
GENDER_BIN=data(:,5);AGE_SND=data(:,6);OWN_BIKE_B=data(:,7);SHARE_ACCE=data(:,8);
MODE=data(:,9);NUM_ALT=data(:,10);PRIM_CARE_=data(:,11);BORING_SA=data(:,12);
BORING_A=data(:,13);BORING_D=data(:,14);BORING_SD=data(:,15);TRANSITION=data(:,16);
TRANSITI_1=data(:,17);TRANSITI_2=data(:,18);TRANSITI_3=data(:,19);WASTED_SA=data(:,20);
WASTED_A=data(:,21);WASTED_D=data(:,22);WASTED_SD=data(:,23);HYBRID_SA=data(:,24);
HYBRID_A=data(:,25);HYBRID_D=data(:,26);HYBRID_SD=data(:,27);STUCK_TRAF=data(:,28);
STUCK_TR_1=data(:,29);STUCK_TR_2=data(:,30);STUCK_TR_3=data(:,31);PRODUCTIVE=data(:,32);
PRODUCTI_1=data(:,33);PRODUCTI_2=data(:,34);PRODUCTI_3=data(:,35);LIMIT_SA=data(:,36);
LIMIT_A=data(:,37);LIMIT_D=data(:,38);LIMIT_SD=data(:,39);SOMEONE_EL=data(:,40);
SOMEONE__1=data(:,41);SOMEONE__2=data(:,42);SOMEONE__3=data(:,43);BUSES_COMF=data(:,44);
BUSES_CO_1=data(:,45);BUSES_CO_2=data(:,46);BUSES_CO_3=data(:,47);SHOPS_SERV=data(:,48);
SHOPS_SE_1=data(:,49);SHOPS_SE_2=data(:,50);SHOPS_SE_3=data(:,51);ALONE_SA=data(:,52);
ALONE_A=data(:,53);ALONE_D=data(:,54);ALONE_SD=data(:,55);TIRING_SA=data(:,56);
TIRING_A=data(:,57);TIRING_D=data(:,58);TIRING_SD=data(:,59);SAFE_CYCLE=data(:,60);
SAFE_CYC_1=data(:,61);SAFE_CYC_2=data(:,62);SAFE_CYC_3=data(:,63);POP_DENSIT=data(:,64);
POP=data(:,65);AVG_AGE=data(:,66);LABOUR_RAT=data(:,67);UNEMPLOY=data(:,68);
PER_IMMIGR=data(:,69);PER_NONCAN=data(:,70);AVG_CHILDR=data(:,71);PER_MARRIE=data(:,72);
MED_INCOME=data(:,73)/10000;LUM=data(:,74);SF_P_ratio=data(:,75);PROP_THREE=data(:,76);
PROP_RES=data(:,77);PROP_SING_=data(:,78);ADJ_AVG_LU=data(:,79);ADJ_THREE_=data(:,80);
rPr_ISOLAT=data(:,81);drPdr_ISOL=data(:,82);GO_COST=data(:,83);HSR_COST=data(:,84);
NEAR_DIST=data(:,85)/1000;HSR_DIST=data(:,86);MAC_DIST=data(:,87)/1000;MAC_TIME=data(:,88);
COMM_DIST=data(:,89);MAC_CONNEC=data(:,90);LITA=data(:,91);
%Number of alternative categories: 1, 2, 3, and 4
Y=NUM_ALT;
CONST=ones(length(data),1);
WALK_CYCLE=MODE==1;
HSR=MODE==2;
CAR=MODE==3;
GO=MODE==4;

%Interactions
ACT_POP_DENSIT=WALK_CYCLE.*POP_DENSIT;
ACT_POP=WALK_CYCLE.*POP;
ACT_AVG_AGE=WALK_CYCLE.*AVG_AGE;
ACT_LABOUR_RAT=WALK_CYCLE.*LABOUR_RAT;
ACT_UNEMPLOY=WALK_CYCLE.*UNEMPLOY;
ACT_PER_IMMIGR=WALK_CYCLE.*PER_IMMIGR;
ACT_PER_NONCAN=WALK_CYCLE.*PER_NONCAN;
ACT_AVG_CHILDR=WALK_CYCLE.*AVG_CHILDR;
ACT_PER_MARRIE=WALK_CYCLE.*PER_MARRIE;
ACT_MED_INCOME=WALK_CYCLE.*MED_INCOME;
ACT_LUM=WALK_CYCLE.*LUM;
ACT_SF_P_ratio=WALK_CYCLE.*SF_P_ratio;
ACT_PROP_THREE=WALK_CYCLE.*PROP_THREE;
ACT_PROP_RES=WALK_CYCLE.*PROP_RES;
ACT_PROP_SING_=WALK_CYCLE.*PROP_SING_;
ACT_ADJ_AVG_LU=WALK_CYCLE.*ADJ_AVG_LU;
ACT_ADJ_THREE_=WALK_CYCLE.*ADJ_THREE_;
ACT_rPr_ISOLAT=WALK_CYCLE.*rPr_ISOLAT;
ACT_drPdr_ISOL=WALK_CYCLE.*drPdr_ISOL;
ACT_GO_COST=WALK_CYCLE.*GO_COST;
ACT_HSR_COST=WALK_CYCLE.*HSR_COST;
ACT_NEAR_DIST=WALK_CYCLE.*NEAR_DIST;
ACT_HSR_DIST=WALK_CYCLE.*HSR_DIST;
ACT_MAC_DIST=WALK_CYCLE.*MAC_DIST;
ACT_MAC_TIME=WALK_CYCLE.*MAC_TIME;
ACT_COMM_DIST=WALK_CYCLE.*COMM_DIST;
ACT_MAC_CONNEC=WALK_CYCLE.*MAC_CONNEC;
ACT_LITA=WALK_CYCLE.*LITA;
CAR_POP_DENSIT=CAR.*POP_DENSIT;
CAR_POP=CAR.*POP;
CAR_AVG_AGE=CAR.*AVG_AGE;
CAR_LABOUR_RAT=CAR.*LABOUR_RAT;
CAR_UNEMPLOY=CAR.*UNEMPLOY;
CAR_PER_IMMIGR=CAR.*PER_IMMIGR;
CAR_PER_NONCAN=CAR.*PER_NONCAN;
CAR_AVG_CHILDR=CAR.*AVG_CHILDR;
CAR_PER_MARRIE=CAR.*PER_MARRIE;
CAR_MED_INCOME=CAR.*MED_INCOME;
CAR_LUM=CAR.*LUM;
CAR_SF_P_ratio=CAR.*SF_P_ratio;
CAR_PROP_THREE=CAR.*PROP_THREE;
CAR_PROP_RES=CAR.*PROP_RES;
CAR_PROP_SING_=CAR.*PROP_SING_;
CAR_ADJ_AVG_LU=CAR.*ADJ_AVG_LU;
CAR_ADJ_THREE_=CAR.*ADJ_THREE_;
CAR_rPr_ISOLAT=CAR.*rPr_ISOLAT;
CAR_drPdr_ISOL=CAR.*drPdr_ISOL;
CAR_GO_COST=CAR.*GO_COST;
CAR_HSR_COST=CAR.*HSR_COST;
CAR_NEAR_DIST=CAR.*NEAR_DIST;
CAR_HSR_DIST=CAR.*HSR_DIST;
CAR_MAC_DIST=CAR.*MAC_DIST;
CAR_MAC_TIME=CAR.*MAC_TIME;
CAR_COMM_DIST=CAR.*COMM_DIST;
CAR_MAC_CONNEC=CAR.*MAC_CONNEC;
CAR_LITA=CAR.*LITA;
HSR_POP_DENSIT=HSR.*POP_DENSIT;
HSR_POP=HSR.*POP;
HSR_AVG_AGE=HSR.*AVG_AGE;
HSR_LABOUR_RAT=HSR.*LABOUR_RAT;
HSR_UNEMPLOY=HSR.*UNEMPLOY;
HSR_PER_IMMIGR=HSR.*PER_IMMIGR;
HSR_PER_NONCAN=HSR.*PER_NONCAN;
HSR_AVG_CHILDR=HSR.*AVG_CHILDR;
HSR_PER_MARRIE=HSR.*PER_MARRIE;
HSR_MED_INCOME=HSR.*MED_INCOME;
HSR_LUM=HSR.*LUM;
HSR_SF_P_ratio=HSR.*SF_P_ratio;
HSR_PROP_THREE=HSR.*PROP_THREE;
HSR_PROP_RES=HSR.*PROP_RES;
HSR_PROP_SING_=HSR.*PROP_SING_;
HSR_ADJ_AVG_LU=HSR.*ADJ_AVG_LU;
HSR_ADJ_THREE_=HSR.*ADJ_THREE_;
HSR_rPr_ISOLAT=HSR.*rPr_ISOLAT;
HSR_drPdr_ISOL=HSR.*drPdr_ISOL;
HSR_GO_COST=HSR.*GO_COST;
HSR_HSR_COST=HSR.*HSR_COST;
HSR_NEAR_DIST=HSR.*NEAR_DIST;
HSR_HSR_DIST=HSR.*HSR_DIST;
HSR_MAC_DIST=HSR.*MAC_DIST;
HSR_MAC_TIME=HSR.*MAC_TIME;
HSR_COMM_DIST=HSR.*COMM_DIST;
HSR_MAC_CONNEC=HSR.*MAC_CONNEC;
HSR_LITA=HSR.*LITA;


%%
% %CBD_D in 10 km, XDOMI, YDOMI in 10 km
% %SRDP01 is Census Tract population density in 10,000/sq. km
% %Mean, median, std of income in 10,000
% %**************************************************************************
% %Create additional variables trend surface
% %**************************************************************************
% CONST=ones(34493,1);
% X2DOMI=XDOMI.^2;
% XYDOMI=XDOMI.*YDOMI;
% Y2DOMI=YDOMI.^2;
% %**************************************************************************
% %Variables for spatial analysis
% CBDX=299103-min(XDOMI);%Coordinates of CBD
% CBDY=5040013-min(YDOMI);%Coordinates of CBD
% COORDX=XDOMI;%
% COORDY=YDOMI;%
% COORD=[COORDX,COORDY];
% N=length(COORDX);

%%
%Collapse 5-point scale to 3-point scale by combining Strongly Agree+Agree
%and Strongly Disagree+Disagree
BORING_A=BORING_SA+BORING_A;
BORING_D=BORING_D+BORING_SD;
TRANSITION_A=TRANSITION+TRANSITI_1;
TRANSITION_D=TRANSITI_2+TRANSITI_3;
WASTED_A=WASTED_SA+WASTED_A;
WASTED_D=WASTED_D+WASTED_SD;
HYBRID_A=HYBRID_SA+HYBRID_A;
HYBRID_D=HYBRID_D+HYBRID_SD;
STUCK_TRAF_A=STUCK_TRAF+STUCK_TR_1;
STUCK_TRAF_D=STUCK_TR_2+STUCK_TR_3;
PRODUCTIVE_A=PRODUCTIVE+PRODUCTI_1;
PRODUCTIVE_D=PRODUCTI_2+PRODUCTI_3;
LIMIT_A=LIMIT_SA+LIMIT_A;
LIMIT_D=LIMIT_D+LIMIT_SD;
SOMEONE_EL_A=SOMEONE_EL+SOMEONE__1;
SOMEONE_EL_D=SOMEONE__2+SOMEONE__3;
BUSES_COMF_A=BUSES_COMF+BUSES_CO_1;
BUSES_COMF_D=BUSES_CO_2+BUSES_CO_3;
SHOPS_SERV_A=SHOPS_SERV+SHOPS_SE_1;
SHOPS_SERV_D=SHOPS_SE_2+SHOPS_SE_3;
ALONE_A=ALONE_SA+ALONE_A;
ALONE_D=ALONE_D+ALONE_SD;
TIRING_A=TIRING_SA+TIRING_A;
TIRING_D=TIRING_D+TIRING_SD;
SAFE_CYCLE_A=SAFE_CYCLE+SAFE_CYC_1;
SAFE_CYCLE_D=SAFE_CYC_2+SAFE_CYC_3;

%%
% Initialize variables
%**************************************************************************
VARNAMES=...
    ['CONST                         '
'Faculty_St                    ';'Student                       '
'GENDER_BIN                    ';'AGE_SND                       '
'OWN_BIKE_B                    ';'SHARE_ACCE                    '
'WALK_CYCLE                    ';'HSR                           '
'CAR                           ';'GO                            '
'MODE                          ';'PRIM_CARE_                    '
'BORING_A                      '
'BORING_D                      '
'TRANSITION_A                  '
'TRANSITION_D                  '
'WASTED_A                      '
'WASTED_D                      '
'HYBRID_A                      '
'HYBRID_D                      '
'STUCK_TRAF_A                  '
'STUCK_TRAF_D                  '
'PRODUCTIVE_A                  '
'PRODUCTIVE_D                  '
'LIMIT_A                       '
'LIMIT_D                       '
'SOMEONE_EL_A                  '
'SOMEONE_EL_D                  '
'BUSES_COMF_A                  '
'BUSES_COMF_D                  '
'SHOPS_SERV_A                  '
'SHOPS_SERV_D                  '
'ALONE_A                       '
'ALONE_D                       '
'TIRING_A                      '
'TIRING_D                      '
'SAFE_CYCLE_A                  '
'SAFE_CYCLE_D                  '
'ACT_POP_DENSIT                '
'ACT_POP                       '
'ACT_AVG_AGE                   '
'ACT_LABOUR_RAT                '
'ACT_UNEMPLOY                  '
'ACT_PER_IMMIGR                '
'ACT_PER_NONCAN                '
'ACT_AVG_CHILDR                '
'ACT_PER_MARRIE                '
'ACT_MED_INCOME                '
'ACT_LUM                       '
'ACT_SF_P_ratio                '
'ACT_PROP_THREE                '
'ACT_PROP_RES                  '
'ACT_PROP_SING_                '
'ACT_ADJ_AVG_LU                '
'ACT_ADJ_THREE_                '
'ACT_rPr_ISOLAT                '
'ACT_drPdr_ISOL                '
'ACT_GO_COST                   '
'ACT_HSR_COST                  '
'ACT_NEAR_DIST                 '
'ACT_HSR_DIST                  '
'ACT_MAC_DIST                  '
'ACT_MAC_TIME                  '
'ACT_COMM_DIST                 '
'ACT_MAC_CONNEC                '
'ACT_LITA                      '
'CAR_POP_DENSIT                '
'CAR_POP                       '
'CAR_AVG_AGE                   '
'CAR_LABOUR_RAT                '
'CAR_UNEMPLOY                  '
'CAR_PER_IMMIGR                '
'CAR_PER_NONCAN                '
'CAR_AVG_CHILDR                '
'CAR_PER_MARRIE                '
'CAR_MED_INCOME                '
'CAR_LUM                       '
'CAR_SF_P_ratio                '
'CAR_PROP_THREE                '
'CAR_PROP_RES                  '
'CAR_PROP_SING_                '
'CAR_ADJ_AVG_LU                '
'CAR_ADJ_THREE_                '
'CAR_rPr_ISOLAT                '
'CAR_drPdr_ISOL                '
'CAR_GO_COST                   '
'CAR_HSR_COST                  '
'CAR_NEAR_DIST                 '
'CAR_HSR_DIST                  '
'CAR_MAC_DIST                  '
'CAR_MAC_TIME                  '
'CAR_COMM_DIST                 '
'CAR_MAC_CONNEC                '
'CAR_LITA                      '
'HSR_POP_DENSIT                '
'HSR_POP                       '
'HSR_AVG_AGE                   '
'HSR_LABOUR_RAT                '
'HSR_UNEMPLOY                  '
'HSR_PER_IMMIGR                '
'HSR_PER_NONCAN                '
'HSR_AVG_CHILDR                '
'HSR_PER_MARRIE                '
'HSR_MED_INCOME                '
'HSR_LUM                       '
'HSR_SF_P_ratio                '
'HSR_PROP_THREE                '
'HSR_PROP_RES                  '
'HSR_PROP_SING_                '
'HSR_ADJ_AVG_LU                '
'HSR_ADJ_THREE_                '
'HSR_rPr_ISOLAT                '
'HSR_drPdr_ISOL                '
'HSR_GO_COST                   '
'HSR_HSR_COST                  '
'HSR_NEAR_DIST                 '
'HSR_HSR_DIST                  '
'HSR_MAC_DIST                  '
'HSR_MAC_TIME                  '
'HSR_COMM_DIST                 '
'HSR_MAC_CONNEC                '
'HSR_LITA                      '
'POP_DENSIT                    ';'POP                           '
'AVG_AGE                       ';'LABOUR_RAT                    '
'UNEMPLOY                      ';'PER_IMMIGR                    '
'PER_NONCAN                    ';'AVG_CHILDR                    '
'PER_MARRIE                    ';'MED_INCOME                    '
'LUM                           ';'SF_P_ratio                    '
'PROP_THREE                    ';'PROP_RES                      '
'PROP_SING_                    ';'ADJ_AVG_LU                    '
'ADJ_THREE_                    ';'rPr_ISOLAT                    '
'drPdr_ISOL                    ';'GO_COST                       '
'HSR_COST                      ';'NEAR_DIST                     '
'HSR_DIST                      ';'MAC_DIST                      '
'MAC_TIME                      ';'COMM_DIST                     '
'MAC_CONNEC                    ';'LITA                          '];


%Initialize coefficients
K=size(VARNAMES,1);%Number of variables INCLUDING CONSTANT
%Collect independent variables in data matrix.
X=[];
for k=1:K
    eval([['X(:,k)='],[VARNAMES(k,:)],[';']])
end
for k=1:K
    eval([['b_'],[VARNAMES(k,:)],['=0;']]);
    eval([['sig_'],[VARNAMES(k,:)],['=0;']]);
end

figure;[nn,xout]=hist(NUM_ALT(MODE==1));bar(xout,nn/length(NUM_ALT(MODE==1)))
figure;[nn,xout]=hist(NUM_ALT(MODE==2));bar(xout,nn/length(NUM_ALT(MODE==2)))
figure;[nn,xout]=hist(NUM_ALT(MODE==3));bar(xout,nn/length(NUM_ALT(MODE==3)))
figure;[nn,xout]=hist(NUM_ALT(MODE==4));bar(xout,nn/length(NUM_ALT(MODE==4)))

%% MODEL WITH INTERACTIONS
%Enter independent variables. Names must be padded so that the size of
%strings is the same for all names 
VARNAMES=...
    ['CONST                         '
'Faculty_St                    '
%'Student                       '
%'GENDER_BIN                    '
%'AGE_SND                       '
%'OWN_BIKE_B                    '
'SHARE_ACCE                    '
%'BORING_A                      '
%'BORING_D                      '
'TRANSITION_A                  '
%'TRANSITION_D                  '
%'WASTED_A                      '
%'WASTED_D                      '
%'HYBRID_A                      '
%'HYBRID_D                      '
'STUCK_TRAF_A                  '
%'STUCK_TRAF_D                  '
%'PRODUCTIVE_A                  '
%'PRODUCTIVE_D                  '
'LIMIT_A                       '
%'LIMIT_D                       '
'SOMEONE_EL_A                  '
%'SOMEONE_EL_D                  '
%'BUSES_COMF_A                  '
%'BUSES_COMF_D                  '
%'SHOPS_SERV_A                  '
'SHOPS_SERV_D                  '
'ALONE_A                       '
%'ALONE_D                       '
%'TIRING_A                      '
%'TIRING_D                      '
'SAFE_CYCLE_A                  '
%'SAFE_CYCLE_D                  '
'WALK_CYCLE                    '
%'ACT_POP_DENSIT                '
%'ACT_POP                       '
%'ACT_AVG_AGE                   '
%'ACT_LABOUR_RAT                '
%'ACT_UNEMPLOY                  '
'ACT_PER_IMMIGR                '
%'ACT_PER_NONCAN                '
%'ACT_AVG_CHILDR                '
%'ACT_PER_MARRIE                '
'ACT_MED_INCOME                '
%'ACT_LUM                       '
%'ACT_SF_P_ratio                '
%'ACT_PROP_THREE                '
%'ACT_PROP_RES                  '
%'ACT_PROP_SING_                '
%'ACT_ADJ_AVG_LU                '
%'ACT_ADJ_THREE_                '
%'ACT_rPr_ISOLAT                '
%'ACT_drPdr_ISOL                '
%%'ACT_GO_COST                   '
%%'ACT_HSR_COST                  '
%'ACT_NEAR_DIST                 '
%'ACT_HSR_DIST                  '
%'ACT_MAC_DIST                  '
%'ACT_MAC_TIME                  '
%'ACT_COMM_DIST                 '
%'ACT_MAC_CONNEC                '
%'ACT_LITA                      '
%'CAR                           '
%'CAR_POP_DENSIT                '
%'CAR_POP                       '
%'CAR_AVG_AGE                   '
%'CAR_LABOUR_RAT                '
%'CAR_UNEMPLOY                  '
'CAR_PER_IMMIGR                '
%'CAR_PER_NONCAN                '
%'CAR_AVG_CHILDR                '
%'CAR_PER_MARRIE                '
'CAR_MED_INCOME                '
%'CAR_LUM                       '
'CAR_SF_P_ratio                '
%'CAR_PROP_THREE                '
%'CAR_PROP_RES                  '
%'CAR_PROP_SING_                '
%'CAR_ADJ_AVG_LU                '
%'CAR_ADJ_THREE_                '
%'CAR_rPr_ISOLAT                '
%'CAR_drPdr_ISOL                '
%'CAR_GO_COST                   '
%'CAR_HSR_COST                  '
%'CAR_NEAR_DIST                 '
%'CAR_HSR_DIST                  '
'CAR_MAC_DIST                  '
%'CAR_MAC_TIME                  '
%'CAR_COMM_DIST                 '
%'CAR_MAC_CONNEC                '
%'CAR_LITA                      '
%'HSR                           '
'HSR_POP_DENSIT                '
%'HSR_POP                       '
%'HSR_AVG_AGE                   '
%'HSR_LABOUR_RAT                '
%'HSR_UNEMPLOY                  '
%'HSR_PER_IMMIGR                '
%'HSR_PER_NONCAN                '
%'HSR_AVG_CHILDR                '
%'HSR_PER_MARRIE                '
%'HSR_MED_INCOME                '
%'HSR_LUM                       '
%'HSR_SF_P_ratio                '
%'HSR_PROP_THREE                '
'HSR_PROP_RES                  '
%'HSR_PROP_SING_                '
%'HSR_ADJ_AVG_LU                '
%'HSR_ADJ_THREE_                '
%'HSR_rPr_ISOLAT                '
%'HSR_drPdr_ISOL                '
%'HSR_GO_COST                   '
%'HSR_HSR_COST                  '
%'HSR_NEAR_DIST                 '
%'HSR_HSR_DIST                  '
'HSR_MAC_DIST                  '
%'HSR_MAC_TIME                  '
%'HSR_COMM_DIST                 '
%'HSR_MAC_CONNEC                '
%'HSR_LITA                      '
];

K=size(VARNAMES,1);%Number of variables INCLUDING CONSTANT
%Collect independent variables in data matrix.
X=[];
for k=1:K
    eval([['X(:,k)='],[VARNAMES(k,:)],[';']])
end

 %%
%Display summary measures
ResultsStr=[{['VARIABLE                            ,    MIN   ,    MAX      ,    MEAN     ,  STD     ']}];
ResultsStr=[ResultsStr;{['Modality Class                      ,',...
        sprintf('%5.3f',min(Y)),'     ,',...
        sprintf('%8.3f',max(Y)),'     ,',...
        sprintf('%8.3f',mean(Y)),'     ,',...
        sprintf('%5.3f',std(Y)),'     ']}];
for k=1:K
    ResultsStr=[ResultsStr;{[VARNAMES(k,:),'     ,',...
        sprintf('%5.3f',min(X(:,k))),'     ,',...
        sprintf('%8.3f',max(X(:,k))),'     ,',...
        sprintf('%8.3f',mean(X(:,k))),'     ,',...
        sprintf('%5.3f',std(X(:,k))),'     ']}];
end
ResultsStr

%Ordered probit
for i=1:max(Y) Y_PROBIT(:,i)=Y==i;end
%initval=[(inv(X'*X)*X'*TT_CLA)',0.005,0.006,0.007];%Initial values are given by a linear probability model
[bo,t_scores,pval,LogLH,p_probit]=orprobit(Y_PROBIT,X);
bo=bo';
pval=pval';

%Display model output
ResultsStr=[{['VARIABLE                           ,    ESTIMATE     ,     p-value   ']}];
for k=1:K
    ResultsStr=[ResultsStr;{[VARNAMES(k,:),'     ,',...
        sprintf('%12.5f',bo(k,1)),'     ,'... 
        sprintf('%12.4f',pval(k,1)),'   ']}];
    %sprintf('%12.4f',pval(k,1),'   ']}];
end
ResultsStr=[ResultsStr;{['                                                   ']}];
ResultsStr=[ResultsStr;{['THRESHOLDS (for identification: threshold 1=0)     ']}];
for t=1:(max(Y)-2)
    ResultsStr=[ResultsStr;{['t',num2str(t+1),'               ,',...
        sprintf('%12.5f',bo(K+t,1)),'     ,'... 
        sprintf('%12.4f',pval(K+t,1)),'   ']}];
end
ResultsStr=[ResultsStr;{['                                                   ']}];
ResultsStr=[ResultsStr;{['   Log-Likelihood    =,',sprintf('%13.3f',LogLH),'               ']}];
ResultsStr=[ResultsStr;{['   Deviance (-2*LogL)=,',sprintf('%13.3f',-2*LogLH),'               ']}];
ResultsStr=[ResultsStr;{['   n                 =,',sprintf('%13d',size(X,1)),'               ']}];
ResultsStr=[ResultsStr;{['                                                   ']}];
ResultsStr

%Check partial correlations
X2=X;X2(:,1)=[];
junk=partialcorr(X2);
i=1; for j=1:18 i=i+1;maxpartcorr(j,1)=max(junk(i:19,j));end

%Cumulative probabilities probit model
cumulprob=[p_probit(:,1),p_probit(:,1)+p_probit(:,2),p_probit(:,1)+p_probit(:,2)+p_probit(:,3)];
%Random number generator
r=rand(length(p_probit),1);
%Predictions
Y_hat=(r<=cumulprob(:,1))+2*((r>cumulprob(:,1)).*(r<=cumulprob(:,2)))+3*((r>cumulprob(:,2)).*(r<=cumulprob(:,3)))+4*(r>cumulprob(:,3));

%% Not used in this analysis
%Repeat for models 0 to 4 and save predictions:
save('Model Predictions.mat','Y_hat0','Y_hat1','Y_hat2','Y_hat3','Y_hat4');

%Plot predicted auto ownership values
figure
list=(find(Y_hat==1));plot(COORD(list,1),COORD(list,2),'s','markerfacecolor','b','MarkerEdgeColor','none','markersize',4);hold
axis equal
list=(find(Y_hat==2));plot(COORD(list,1),COORD(list,2),'s','markerfacecolor','c','MarkerEdgeColor','none','markersize',4);
list=(find(Y_hat==3));plot(COORD(list,1),COORD(list,2),'s','markerfacecolor','r','MarkerEdgeColor','none','markersize',4);
list=(find(Y_hat==4));plot(COORD(list,1),COORD(list,2),'s','markerfacecolor','m','MarkerEdgeColor','none','markersize',4);

%Structural test: spatial association of nominal variable
info.print='yes';
info.plot='t';
%figure;QS_sne_no(Y,mh31,symb43,info);%m-surroundings of 3
figure;QS_sne_no(Y_hat,mh31,symb43,info);%m-surroundings of 3

%Structural equivalence test
info.plot='no';
QE([Y,Y_hat],mh31,symb43,info);

%**************************************************************************
%Further analysis based on model 4
%**************************************************************************
%% Compare the difference in symbol frequency between actual and model 4
%List of symbols
symb_3=[	0	0	0	3	
	0	0	1	2	
	0	0	2	1	
	0	0	3	0	
	0	1	0	2	
	0	1	1	1	
	0	1	2	0	
	0	2	0	1	
	0	2	1	0	
	0	3	0	0	
	1	0	0	2	
	1	0	1	1	
	1	0	2	0	
	1	1	0	1	
	1	1	1	0	
	1	2	0	0	
	2	0	0	1	
	2	0	1	0	
	2	1	0	0	
	3	0	0	0	];

%Retrieve results
results_base=QS_sne_no(Y,mh31,symb43,info);%m-surroundings of 3
results_m4=QS_sne_no(Y_hat,mh31,symb43,info);%m-surroundings of 3

%Plot absolute differences between actual and modeled frequencies
figure;
bar(results_base.nsne3-results_m4.nsne3,'w');hold
labels3=strtrim(num2str(symb_3));
labels3=labels3(:,1:3:3*max(Y));
nusi3=length(symb_3)
set(gca,'xlim',[0,nusi3+1],'xtick',[1:1:nusi3],'xticklabel',labels3);
rotateticklabel(gca);

%Plot relative differences between actual and modeled frequencies(in %)
figure;
bar(((results_m4.nsne3./results_base.nsne3)-1)*100,'w');hold
labels3=strtrim(num2str(symb_3));
labels3=labels3(:,1:3:3*max(Y));
nusi3=length(symb_3)
set(gca,'xlim',[0,nusi3+1],'xtick',[1:1:nusi3],'xticklabel',labels3);
rotateticklabel(gca);


%Plot symbols
%These m-surroundings were also created in UPC super computer (m=3,4,5)
load msurroundings_total %These are the m-surroundings ignoring overlap: this gives the m-surrounding for every observation in the sample
Z=Y(mh3o);
Z3=[];for k=1:max(Y) Z3=[Z3,sum(Z==k,2)];end
%Isolate a symbol for plotting [0 3 0 0]
s0300=ismember(Z3,[0 3 0 0],'rows')+1-1;%here select the symbol to isolate
list=find(s0300==1);
%Plot selected symbol
figure
plot(COORD(:,1),COORD(:,2),'.','markerfacecolor','w','MarkerEdgeColor',[0.6,0.6,0.6],'markersize',4);hold
plot(COORD(list,1),COORD(list,2),'s','markerfacecolor','w','MarkerEdgeColor','k','markersize',4);
%Hits-and-misses: filter all hits
%junk=junk.*(Y~=Y_hat);
s0300miss=((s0300.*(Y~=Y_hat))==1)+1-1;
list2=find((s0300miss==1);
plot(COORD(list2,1),COORD(list2,2),'s','markerfacecolor','w','MarkerEdgeColor','r','markersize',4);

%Isolate a symbol for plotting [1 1 1 0]
s1110=ismember(Z3,[1 1 1 0],'rows');%here select the symbol to isolate
list=find(s1110==1);
%Plot selected symbol
figure
plot(COORD(:,1),COORD(:,2),'.','markerfacecolor','w','MarkerEdgeColor',[0.6,0.6,0.6],'markersize',4);hold
plot(COORD(list,1),COORD(list,2),'s','markerfacecolor','w','MarkerEdgeColor','k','markersize',4);
%Hits-and-misses: filter all hits
%junk=junk.*(Y~=Y_hat);
s1110miss=(s1110.*(Y~=Y_hat))==1;
list2=find((s1110miss==1);
plot(COORD(list2,1),COORD(list2,2),'s','markerfacecolor','w','MarkerEdgeColor','r','markersize',4);

%Export for GIS mapping
data=xlsread('data03_hh_MIsland.xls','data');
xlswrite('Data for Mapping.xls',[data(:,37),data(:,38),s0300,s0300miss,s1110,s1110miss]);

%Hits-and-misses: values is 2 if the model predicts correctly, 1 otherwise
%Y_DIFF=(Y==Y_hat).*(Y==1)+2*(Y==Y_hat).*(Y==2)+3*(Y==Y_hat).*(Y==3)+4*(Y==Y_hat).*(Y==4);
Y_DIFF=(Y==Y_hat)+1;
figure;QS_sne_no(Y_DIFF,mh31,symb23,info);%m-surroundings of 3

%Plot hits and misses
figure
%hits
list=(find(Y_DIFF==2));plot(COORD(list,1),COORD(list,2),'s','markerfacecolor','w','MarkerEdgeColor',[0.8,0.8,0.8],'markersize',4);hold
axis equal
%misses
list=(find(Y_DIFF==1));plot(COORD(list,1),COORD(list,2),'s','markerfacecolor','k','MarkerEdgeColor','k','markersize',4);