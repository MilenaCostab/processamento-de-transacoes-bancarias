//HERC01XX JOB (PROG1),
//             'EXECUTA PROG1',
//             CLASS=A,
//             MSGCLASS=H,
//             REGION=8M,TIME=1440,
//             MSGLEVEL=(1,1),
//             NOTIFY=HERC01
//STEP01   EXEC PGM=PROG1
//STEPLIB  DD DSN=HERC01.PRIVLIB.LOAD,DISP=SHR
//SYSOUT   DD SYSOUT=*
