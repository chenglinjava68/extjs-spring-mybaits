/*
SQLyog ä¼ä¸šç‰ˆ - MySQL GUI v8.14 
MySQL - 5.1.6-alpha-max : Database - activiti2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `DEPLOYMENT_ID_` varchar(64) collate utf8_bin default NULL,
  `BYTES_` longblob,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('2',1,'org/jason/activiti/bpmn/RequestLeave/EmpSubProcess.bpmn20.xml','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://activiti.org/EmpSubProcess\">\n  <process id=\"EmpSubProcess\" name=\"å‘˜å·¥è¯·å‡å­æµç¨‹\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <userTask id=\"usertask1\" name=\"éƒ¨é—¨ä¸»ç®¡å®¡æ‰¹\" activiti:candidateUsers=\"${userService.getLeader(user)}\"></userTask>\n    <userTask id=\"usertask3\" name=\"ç»ç†å®¡æ‰¹\" activiti:candidateUsers=\"${userService.getManager(leader)}\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask2\" name=\"éƒ¨é—¨ä¸»ç®¡å®¡æ‰¹\" activiti:candidateUsers=\"${userService.getLeader(user)}\"></userTask>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow1\" name=\"\" sourceRef=\"startevent1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" name=\"è¯·å‡å¤©æ•°å¤§äº10å¤©\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${requestDay > 10 }]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow3\" name=\"\" sourceRef=\"usertask1\" targetRef=\"usertask3\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"è¯·å‡å¤©æ•°åœ¨10å¤©ä¹‹å†…\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${requestDay <= 10 }]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"\" sourceRef=\"usertask2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_EmpSubProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"EmpSubProcess\" id=\"BPMNPlane_EmpSubProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"30\" y=\"200\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40\" width=\"40\" x=\"105\" y=\"198\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55\" width=\"105\" x=\"335\" y=\"138\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55\" width=\"105\" x=\"480\" y=\"138\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"625\" y=\"148\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55\" width=\"105\" x=\"340\" y=\"258\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"485\" y=\"268\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"65\" y=\"217\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"105\" y=\"218\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"125\" y=\"198\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125\" y=\"165\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"335\" y=\"165\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"440\" y=\"165\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"480\" y=\"165\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"585\" y=\"165\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"625\" y=\"165\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"125\" y=\"238\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125\" y=\"285\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"340\" y=\"285\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"445\" y=\"285\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"485\" y=\"285\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('3',1,'org/jason/activiti/bpmn/RequestLeave/RequestLeaveProcess.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0ä\0\0\0\0\0™˜Ş\0\0&QIDATxœíİOlœõøq—\n:>f¥¶ŒZµXBÚ¸§ø†oñ©øT|¢–İœBN¬/Á\".[YûûEZ•Ÿ/¬|1òPÀÏ?	Ø€fwÉ®—ÆÛPBëmÒÖm’2”æ÷¡OæÏã±=ö÷3~^/}…œ™gyÇO¾óö0y<Ò\0\0B\ZI½\0\0@wb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”Xbi4\Zóóó#¤3>>~ìØ±Ô§@Õ‰u ¬Ô³LL]ª|itttmm-õIPibäÄ‰©•;LNN¦>)\0*M¬äo«?õÔS^¾üéÍ›Æş+W¯¾ğÂ­oD­VK}R\0TšXÉßĞ½rõÊ§7?5,Ó[ß‹Ô\'@¥™…@òXÿôæ_Œ´#ÿ^¤>)\0*Í,RˆõOŒ´C¬D`Éñæ­†‘vˆu€ÌÂ@ …XÿØH;Ä:@fa B¬ÿÙH;Ä:@fa B¬ß0Ò±¾?\ZÆÊÊÊüüüôôôä_MMMe·,..ú%²€Y˜Êéú›_¶|HÉKni{\nõ³¥B¬_7Ò§ë^Ë\Z=ô®3RÑøøø™3g²¦O½½@\Zfa*§<µK^2;R²X¾@×§Øƒİ: \n±~ÍH;ÄúŞY]]˜˜Ø2Ó‹êõz÷©7HÀ,LålâÅ%û_g×[ÄúvbıOFÚ!Ö÷B£Ñ˜m›ÆÇÇŸzêï——_|õµ×óqòäÓGm[rzzzss3õN\0ûÊ,=m™)%İ?âc0;Rˆõ?\Zi‡Óuà666ÚŞP?~üÉ‹ëëŸŞ¼Õk\\¹ú»çNŸ>tèPşz½~şüùÔ»ì³0•Óµ°»I¯;oéøÌÈï¬Ó§B¬o\Zi‡X¬K—.eÕ©©©òLoKö“\'ŸÎ[«ÕÎ;—z‡€}b¦r¶Õååk(‰şÎ·ÒË0 %?D·nıÁH;œ®Ôh4Šï©?sêTŸ™^/¼ğÏY¦çï¯»PT„Y˜Êéûsä[Æú–_—ßB§B¬ÿŞH;Äú\0ÍÌÌäÇsyùÅ”zk¼ıÎ»£££­õLNN¦Ş-`?˜…©œÇz×·Ì;ßMëı(ÄúïŒ´C¬ÊÊÊÊ.ßS/—^~%_ÛÂÂBêöœY˜Ê¹óC,m7v]²ëí½Ş;ï\\fË’ëq†X”ñññÖ‘œššÚe©·FşùõC‡¹ş:xfa*ª<ÓËïj«üòwÖKn¡ÓW±şÙU#íë±´´Ô:ŒµZíÃË\r$Ö¯]¿‘_æÄ‰©wØ[fa*¤kU7ñ=²•|ùâcK¾Şò!´)Äú#íë199Ù:ŒÇ?9RoŸ=ÿ|kµ£££©wØ[fa B¬ÿÖH;Äúîmn~uÌA½­¨·Ö¼ººšzG=döÛÒÒÒ¥K—ºŞUˆõÿ1Ò±Ş§’óyqq±u\'\'\'[êÙøÉOş®µò¹¹¹ıİc`_™…}õşûï·\nã¾ûî[^^n»·ëFÚ!ÖûQ~>;v¬uïî/Ó9^}íõÖÊ\'&&’ì;°?ÌÂÀ¾j4\ZwİuW+2î¾ûî‡z¨ø®d!Öc¤b½åçóÔÔTë®—^~eà±~q}½µòz½î\0\0{Î,ì·üB-÷Ş{ïã?Şº]~ãgŸıÚH;ÄzŸJÎçü¢o¿óîÀc=¾GPş†ó¥ì¥euuu~~~ò¯êõúì£üº#_ÄúGFÚÑõûBÿ²ã–wüÅõõ½ˆõ|ı©_@€=äo8Í¬Ñ§§§kµZöÒ’Åúê_õú\'S°K÷ß4Ó·eçŞÚÚZówÖ/iGş½H}¾DWr>µnïÂ…½ˆõlŞö=‚ÏßğJÛØØh½‰¾²²’z[¨ŠübvYÇ<ñÄÙ—––ò{±şánF¯7;û|àvo)yÆ¶§î™-ŸqËê&<[â+?Ÿóÿ)ñêk¯¼Ô¯\\ıò·ÌºÔ:lfáê:{ölöºâ½ì³>ø V«MMMÕëõ¹¹¹¬uŠ÷BóW»+éuKïÒİŞ’m·tŞµƒ­-Òİ<cÿÇpD¬—*?Ÿggg[Çğ¹Ó§ëï]¸ĞZùøøxªİöY¸¢VVV&\'\'Û^W`d§ßââb×ÏYêóƒİŒŞ[¶ü¶V^òŒmËìà©Ûn,YÃq»ÇpßO!Sr>?ûì³­cøØc?x¬?sêTkå333û¾ÓÀş1WQö¢2>>®Ô	è«ŞıüÒ~~´ç\0¥÷–ìQŸ;›/Ó¶ğqÇD¬ïÆÚÚZë^»~c°±şğÃ·Vı¨zG=d®¢‰‰‰sçÎ¥Ş\nè¢š¿ÜÍ(MØË—¬§|á~¢üI;¿îsr¸Êaê“b¸å—ÕZ^~q€¥_d=ã8ØÌÂ•³²²2==z+ »Bş÷nF×•”¬¹Ÿ»z§ó—Ü[\\lËe:×V¾}®m7ÇpD¬ïÎÜÜ\\ë0>|x€o®ÿğ‘GZ«5ŸÃg®œ©©©³gÏ¦Ş\nè®P™ë»ùJŠk+YsŸw•¬íÎDî~KÿOÚöğ^«êõ¤»<zm+O}R·ÍÍÍüjèÏœ:5RãÍ·òïÎùóçSï\"°·ÌÂÕ²±±‘½l¤Ş\nèi(b½k:÷jë]>iŸÏX¾¤XOkaa¡u$kµÚî¯áxq}=¯ÿcÇ¥Ş9`Ï™…«Åg`®šw3ò•WX²æ-ïº3‚»<¤sòÕ–ÜÛ¹Í]·aÏ¸ƒc(Öbbb¢u0³ÎŞÍo3½vıÆáÃ‡óUmll¤Ş3`Ï™…«åÄ‰©·z*Ôç/v?òUm¹Î’Š›Ô-šÛËoìºØvŸ´Ïçíg;;zb} .]º4::šGöÛï¼»ƒRÿğòGy©×j5¿%*Â,\\-“““æw\"ËñóÏßßÙh‹ÚÎÛ».ÖUqÉò¯ÛVX¾dçÂ%{Ñkk{ío¯Åvs$SŸD6÷æ‡4Kííşš¤7Ş|+ÿôKÆÛ.PfájqÑF‚+Tæ\r×Øø¸ùûOš×o6o}şÕî|öyóÆ­æåF3ùæí`ˆõ[YYÉß_¹}}˜—^~¥Ÿ7Ôôè£ÅŸÁ”:TŠY¸Zêõz×_³Ab}m¸Æoşüe¬gşæ›ßşîw¿›}‘…ûµ[Í_}ÜL¾y;b}/¬­­Ë;Kö“\'Ÿ~ïÂ…ÎFîôé£GÎZßÿ…ª1WK6ÑûõDVˆõÿ®‘¿³ùæ·ëßûŞ÷²/>ı¼ù‡›Íõ?7“oŞ†Xß#Ù$<??_«Õº~réÈ‘#½îš™™ñ/J¡‚ÌÂÕâu—à\n±şÃ5şp«ùI³ÙúÌ·êßyğÁ[{t£Ù¼øI3ùæí`ˆõ=•e÷ììl×(ï499éŒPYfájñºKp…X¿0d£°ñm~şÅ;ë©7oûC¬ïƒF£±´´”UûøøxÛiS¯×§§§Ïœ9ãİt¨8³pµxİ%¸¯b½ùŞ°fÖ[?¸íî{îùÆ7¾‘}qxü;>şîµfêmÛÉë\0˜…«Åë.Ábıß‡kÜ*ìÅ·ëßyğûßÏ¾¸Ùl^i6¿xg=õæí`ˆu€ÌÂÕâu—à\n±şoÃ56n|uÑÆü˜şñfóWæíwÖÓoáv‡XˆÀ,\\-^w	®ˆÿ:\\ã—›Í__k~rûj0ßz şıÛ±¾y³ùËFóí?5“oŞ†XˆÀ,\\-^w	®ˆç‡kd¥~ùO_ŒßŞøâ²0i6·šWÿÒüÅÇÍùc3ùæí`ˆu€ÌÂÕâu—à\nøs#íë\0˜…«Åë.Á:t¨ˆ««ÿÔl¾k¤\ZÆ¹üWó¤>)\0*Í,\\-^w	nfff„\0jµ{Z_Œ¥>)\0*MºUËˆX\'¶µµµ^¿k$VVVRŸ\0•&İªeD¬Ş¹sçÆÆÆR7*#‡ZZZJ}:\0Tt«–±\00<¤[µˆu\0€!\"İªE¬\0éV-b\0`ˆH·jë\0\0CDºUK½^O½	\0\0ôK¬WÈæææììlößÔ\0@_ÄzUdşğÃÿìùç\'\'\'õ:\0ÀP8°±Şh4VVVæçç§§§\'ÿjjj*»eii©jµÚ*õ·ßy÷Ó›·²ÿêu\0€¡p\0c=kô,ÊkµZ–éYš//¿øêk¯·ÆK/¿ròäÓ333£££‹‹‹©7v?K½5ô:\0ÀP8P±~şüù¬A³FÏ¢<Ó^ã7ßzì±¯®®¦Şğ=ÔYêz\0`XœXöÙg³ò~õµ×·Ìô¶fÍZöØ±cF#õ^¯R×ë\0\0Cá ÄzÖÙ333sssÛÊôâxîôé,[766RïÊ •—º^\0ˆoèc=+õ‰‰‰¥¥¥—zş©˜l=—.]J½CƒÑO©ëu\0€à†>Ögffv_êy¶f½~\0>Ó©ëu\0€È†;ÖŸ}öÙİ|ú¥s,/¿8==z·ve»¥®×\0Â\ZâX?şüøøø\0K½5~ò“¿;sæLêÛ¡•º^\0ˆiˆc=+õUiùøğòG<PÆÃt–úK/¿òàƒc××»îé•«¿;|øğÏ^¯\0Ä4¬±¾²²2===ğRoãÇŸ\\XXH½‹ÛÓµÔkµÚÈÈHö³Gg¯·J}ä6½\0Ó°Æz”Û½¤ú¶Ş\\?tèPê]Ü†’Roiëõb©ëu\0€°†2Ö³İ£Ro#Gœ;w.õö¥³Ô¯]¿‘ı°1r§¼×;K=“•}ö#Š^\0e(c}qqqvvvOcı™S§æææÒîæÒÒÒ–×}ïõ/J³[²Ÿg:{ıİŸÿ¼k©¿ôò+kĞë\0\0i\re¬;vìÌ™3{\Zë¯¾öz–ª	÷ñı÷ßo•ô}÷İ·¼¼Üu™òk¿tíõ{î¹§ŸR×ë\0\0e¬OMMõêËA‹ëë<PO¸Fã®»îjõôİwßıĞCµ½ËŞÏU\Z»özŸ¥®×\0’ÊXß£‹6Çµë7²M»›mŸ;¿÷Ş{üñÖ5%û¿zI¯oYêz\0 ­¡Œõ¬b‹ÿ\ZrF–³Y¤–¼-J¶UY©÷1œÿ»úÿ¾şõ¯·­äk_ûÚóÏÿŸ>×üCA\0\0Õ4”±>66öŞ…ûëiwóşûïÏÛzú¶¬˜×ÖÖš·{kÖëW®şnË½èzí—–®×_ïº†ìy³gL{4\0\0*h(c}O/²Ş\ZÉ?³¾¹¹ÙJêì\'“\'x\"ûïÒÒRq~z½¤Ôûìu¥\0ĞPÆúììlñ—øìÅxãÍ·9’p?øàƒZ­655U¯×çææº~d¼¼×»–ú×¾öµş{]©\0¤5”±¾°°püø“{\ZëÙ=öã´»¹²²²¸¸X~©õ^½Şë7ıãÿúß]¯¿ŞÙëJ\0 ¹¡Œõ¬_ëõúÆúÑ£GÏ=›zGûÒÙë½J½uí—^¿/©ØëJ\0 ‚¡ŒõæÿÓk×od9ÛºHâPèìõÇûq×RoÎ^Ï~8ÉöZ©\0„2¬±¾§Ÿ„ù‡Ÿş4[yê]Ü’^ïz=õb¯+u\0€˜†5ÖF½^ß‹«­gÙúÀõÔ»¸m]{½ä7µz]©\0„5¬±YZZúÑ£z[½¨³×ËËé{.(u\0€°†8Ö3?|ä‘ååXêY¼>|8ë×Ô{¶sıÿ¾¤âPê\0\0\rw¬onn9rdPÿÒ´u•‹ëë©wk·¶ÛëJ\0 ¦áõÌÚÚZÖëå¿†³Ï`ıá#¼ôò+©wh0úïu¥\0ÖĞÇzóv˜>|ø7ßÚÍ§_²â?0¥ŞÒO¯+u\0€ÈB¬7o&Ó“\'ŸŞîgµ¯]¿ñ?ıië³4©wbğÊ{]©\0w@b½yûbY¬?øàXßùNÊÇÏ>[şøñ\'³lM½ù{¥W¯+u\0€øN¬·lllœ8qbttô‡<’µxç…³[^xáŸôè£Ù2=öãK—.¥Şä=×ÙëJ\0`(´Xoi4\Z+++³³³‡¹SvKVêKKK›››©7sÿ{]©\0‹ƒëtjõúÅõu¥\00,Äz…d^¯×•:\0À°ëÕ2;;›z\0\0è—X¯–‘ßq\0€¡!İªE¬\0éV-b\0`ˆH·jë\0\0CDºU‹X\0\"Ò­ZÄ:\0À‘nÕ\"Ö\0†ˆt«±\00D¤[µˆu\0€!\"İªE¬\0éV-b\0`ˆH·jë\0\0CDºU‹X\0\"Ò­ZÄ:\0À‘nÕ\"Ö\0†ˆt«±\00D¤[µˆu\0€!\"İªE¬\0éV-b\0`ˆH·jëÄ×h4æçç\'&&FHg||üØ±c©O€ª“nÕ2\"Ö‰-+õ,S—*_\Z][[K}R\0Tšt«–±Nl\'NœH¨Üarr2õIPiÒ­ZFÄ:±åo«?õÔS^¾üéÍ›Æş+W¯¾ğÂ­oD­VK}R\0Tšt«±NpùºW®^ùôæ§FÂ‘ezë{‘ú¤\0¨4³pµxİ%¸<Ö?½ù#íÈ¿©O\n€J3W‹×]‚+Äú\'FÚ!Ö\"0W‹×]‚Ëñæ­†‘vˆu€ÌÂÕâu—à\n±ş±‘vˆu€ÌÂÕâu—à\n±şg#íë\0˜…«Åë.Ábı†‘vˆõıÑh4VVVæçç§§§\'ÿjjj*»eqqÑ/‘ÌÂÕ2¯»åÙÿ.lk=÷ËHAñù2½ôÿDÅUu®³d7‡N!Ö¯iÇ<ÁBÉ\Z=ô’)¢e||üÌ™3YÓ§Ş^ \r³pµÔjµ°3ş–¯XÅ%».ßu½¾.>j»O4rggtËîòÄéö£BÉw}Ş~hèä{zóÖ5#í(ù›Å.­®®NLLôú+ßU½^Ïâ>õ†	˜…«%›î/]º”z+zê\ZÊìZå½Û¾%OÑçæm¹†’µõZÏ–­X¬ÿÉH;Äú^h4\Z³³³móÒøøøSOııòò‹¯¾öz>N|úèÑ£mKNOOonn¦Ş	`_™…«%{I8ş|ê­(³ã.)øÎ·ú-—oÛ¼¶z%N?éÓ«È»>E?+.ùNİ¼õG#í8\'XZmo¨?şäÅõõOoŞê5®\\ıİs§O:t(H½^>ƒe®–ÉÉÉÕÕÕÔ[Ñ]I:wí×Î‡ïæÆ¶{»6ÊHÇûßm›·¥‘nïˆWÒu÷ûÜòƒ¡ë›FÚ!ÖëÒ¥KYgçGujjª<ÓÛ’ıäÉ§óÇÖjµsçÎ¥Ş!`Ÿ˜…«evvvqq1õVlÃ^Äz~WI·=i¯…Û\n»má^íº-·¿|½vsèä{tëÖŒ´ãà]	5\Zâ{êÏœ:Õg¦Ç/üs–é­5dİïB1PfájÉJ=ëõÔ[ÑSg€vfqÉc»®¤WÑ–ÿ±ÙÊ%_—ßRş,]Øu%{q +ªë¿7Ò±>@333ùñ\\^~q¥Ş\Zo¿óîèèhk=“““©wØfájY[[K½=•Toÿ±¾åù]ı×|¯Åò­j»w»±Şu7ËF¯Ív…Xÿ‘vÈ,‰•••ü`îì=õâxéåWòµ-,,¤Ş9`Ï™…+\'ò¿1íÕÁÍ½‰õò[Ê»¹s™=ióÎÏÀt>iÉîÈŠëq†X”lÖmÉ©©©]–zkäŸ_?tèPØ«ñƒb®œ………\'N¤ŞŠîz½EİÖ²½Ûç½îêLá-ßÉî•ò½·üö’dïµ…½önx}ëŸ]5Ò±>KKK­ÃX«Õ>¼üÑ@bıÚõùõaÂÎçÀ ˜…+§Ñh„ı—I;{Óº-îËu>ªë½]7fË,ë’îéõ3@ùí½¶|¨å{të³+FÚqğÎ®$&\'\'[‡ñøñ\'Rê­ñ³çŸo­vtt4õ.{Ë,\\E«««şe1bı·FÚ!Öwosó«+`êmõ|<ğ@½µæ°äÂ,\\Qóóóşç)©,--õúMº…Xÿ#íë}*9Ÿ[Çprrr°¥ŸüäïZ+Ÿ››Ûß=ö•Y¸º²ù}jjÊo®fŸ½ÿşû­Â¸ï¾û–——Ûî-Äú†‘vˆõ~”ŸÏÇkİ»û‹ÀtW_{½µò‰‰‰$ûì³p¥={¶^¯ÏÏÏÇü;R£Ñ¸ë®»Z‘q÷İw?ôĞCÅw%±ş#íëı(?Ÿ§¦¦Zw½ôò+õ‹ëë­•gÓxº\0ì9³pÕmnnf±ÍõÙ‹Jö…Ï>²òY´Ü{ï½?şxë\ntùŸ}ök#íë}*9Ÿó‹6¾ıÎ»õløAøÎ²×•³gÏf±_¸\0ö_ñôûì³Œ´£ë÷…şeÇ-ïø‹ëë{ëùúS¿†\0{Èßp`¿İÿıyĞLß–eÍÚÚZówÖ/iGş½H}¾DWr>µnïÂ…½ˆõZ­æ{¿áÀ¾Ê/f—uÌO<‘ıwii)¿·ëö\Z[.Ğç2ı/Ü¶@×å;o,Y¬D?‹më·\\aù^ÁRåçsş?%^}íõ—ú•«_ş–Y—Z‡ƒÍ,ì«>ø V«MMMÕëõ¹¹¹¶ë\nòWmcËÌm{TŸ‹îüºŸçísÉÎeÊŸ·|#ûß¶?cş¨T§ÊP(?Ÿggg[Çğ¹Ó§ëï]¸ĞZùøøxªİöYØo+++‹‹‹]/M]ÈÊ:Gñ®;´ì®®kØ2sÛV[òt½FÉ”löÖV¾L×ïÿGÄúVJÎçgŸ}¶u{ìÇõgNj­|fffßw\ZØ?fa ¯BöóK]Ç±ÛñÇâ2%ßîíåú|HŸ+,Ù†^Ç¤mºm=cÛSŸClmm­uGGG¯]¿1ØXøá‡[+Ï~TH½£À2\nò—m£è¼cÉÎ5”ÜµİÛÛîíºÙ½n)ÙÇ-·¹óë~È–;Rò¼#b}wêõzë0./¿8ÀRÏ/²ñ»íà`3Bó¿ûw¶é7–,ßÿíÏÒkó{§sÏUµ-¶å2k+ß>×Ök¯SŸÃmnn®u><À7×øÈ#­ÕNOO§ŞE`o™…@\nù¸Ş9z·æzñQ[®¡|mo»¥ëú{m@×ÇöÚŒ-·y[ÇdË\'íµÎ¶G¥>)†Ûææf~5ôgN\ZH©¿ñæ[ùwçüùó©wØ[fa ş³µ-@û,Ñ^w\r*ˆ{-¿åªv°ÍÅ»ú|Æò%ÅúYXXhÉZ­¶ûk8^\\_ÏëÿØ±c©wØsfa BA^ìÅ»zÄnûb%kèçö^÷öºeËé\\`ÏŞ¶ª^G£ó®>Ÿ±mı©OŠƒ`bb¢u0³ÎŞÍo3½vıÆáÃ‡óUmll¤Ş3`Ï™…@\nYù‹ÎÑ+IÛ²å\Zú¿½×½½niİ¸å¶oìºXŸÛÖöØşIùş¶­<õIq\\ºtitt´u<³È~ûwwPê^ş(/õZ­¶ººšz·€ı`ÉñóÏßïÅ»ŠIZ²XÛù]]Û©ëc{=oç¶uİ˜®›Ñk³Kö±m^Û¹å.ô³òÔ\'Å‘µu~H³ÔŞî¯IzãÍ·òO¿dRï°OÌÂ@ …|ü¯á\Z7ÿIóúÍæ­Ï¿ÚÏ>oŞ¸Õ¼Üh&ß¼±>p+++ùûë#·¯óÒË¯ôó†ú}´øÃ•R‡J1b}m¸Æoşüe¬gşæ›ßşîw¿›}‘…ûµ[Í_}ÜL¾y;b}/¬­­Ë;Kö“\'Ÿ~ïÂ…ÎFîôé£GÎZß§_ jÌÂ@ …XÿÏá\Zù;ë™o~»ş½ï}/ûâÓÏ›¸Ù\\ÿs3ùæí`ˆõ=²¹¹9??_«Õº~$éÈ‘#½îš™™ñ/J¡‚ÌÂ@ …Xÿá\Z¸Õü¤Ùl}æ[õï<øàƒ­=ºÑl^ü¤™|óv0ÄúÊ²{vv¶k”wšœœ<wî\\êMÒ0bıÂÂÆ·ùùï¬§Ş¼í±¾\ZÆÒÒRVíãããm§M½^Ÿ>sæŒwÓ¡âÌÂ@ _Åzó½aÍ¬·~pÛİ÷Üóo|#ûâğøşv|üİkÍÔÛ¶“!Ö\"0bıß‡kÜ*ìÅ·ëßyğûßÏ¾¸Ùl^i6¿xg=õæí`ˆu€ÌÂ@ …Xÿ·á\Z7¾ºhcşLÿx³ù«Fóö;ëé·p»C¬D`)â¿×øåfó××šŸÜ¾\ZÌ·¨ÿv¬oŞlş²Ñ|ûOÍä›·ƒ!Ö\"0ñüp¬Ô/ÿé‹ñÛ_\\æ/ÍfãVóê_š¿ø¸ù/l&ß¼±Y¤ˆ?7Ò±YäĞ¡C­@\\]ı§fó]#Õh4Îå¿š\'õIPifa ™™™Îë”³ÿjµ{Z_Œ¥>)\0*M¬¬­­õú]ë$±²²’ú¤\0¨4±ÄrîÜ¹±±±ÔÊÈ¡C‡–––RŸ\0U\'Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pÿ]D¾º°É\0\0\0\0IEND®B`‚');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('4',1,'org/jason/activiti/bpmn/RequestLeave/GroupLeaderSubProcess.bpmn20.xml','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://activiti.org/GroupLeaderSubProcess\">\n  <process id=\"GroupLeaderSubProcess\" name=\"éƒ¨é—¨ç»ç†è¯·å‡å­æµç¨‹\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask3\" name=\"ç»ç†å®¡æ‰¹\" activiti:assignee=\"${userService.getLeader(user)}\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"\" sourceRef=\"startevent1\" targetRef=\"usertask3\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_GroupLeaderSubProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"GroupLeaderSubProcess\" id=\"BPMNPlane_GroupLeaderSubProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"200\" y=\"200\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55\" width=\"105\" x=\"360\" y=\"190\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"570\" y=\"200\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"465\" y=\"217\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570\" y=\"217\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"235\" y=\"217\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"360\" y=\"217\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('5',1,'org/jason/activiti/bpmn/RequestLeave/GroupLeaderSubProcess.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0ä\0\0Œ\0\0\0ÜÿX\0\0IDATxœíİl”÷}Àq”®ÓEZOëV´¸jÄR·a­•à¯áNZìI[°´*xûƒZŠš\"UK£ij­M„i\rCÓš¡©Etk˜µ‰ÎSEd©IÆš±\r¨—âü u	4N	)\r:ÂlüìË]r5¶1>|Ïçğë¥\"cß=øñsy¾oçÇË2\0\0 ¤eE\0\0ÀÜÄ:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬MP©T{{{;;;Ëåò²¥*í{ú\nôôôŒ}X\0hybX¬İ»w§HM¥¾sçÎ§÷ì9zìØ¥‰‰¥9ißÓW`×®]ë×¯O_“”ìE\0Z›XnÜøøx___WW×ñ7_š¸d¦Ï©Ó§R²§/ÎÉ“\'‹>P\0´*±Ü TêîøÆ¥‰‹æZóø¯Zµjll¬èÃ@KëÀ\rêëë«–ú{fşyzÏSkÖüvÑ‡€–$Ö±{÷î®®»\'&+f!óÅ/ıÙæÍ_.ú ĞzÄ:Ğ°J¥R.—ß8161yÁ,dÎÿéÊ•¿9::Zô¡ Åˆu a}}}“ïÖçSİ¿¿À‹N¿×’šÍ›ÿª¿¿¿èC@‹ë@Ãzzzv=öo?+õ»»~œe¯_Î^È¾w1{ñbvğÜäÖÇùÎ‰w½”ıo%{¶’í{7{ê½ìï÷½|ÿ†ÏŞÍ…Ìó‡†;::Š>t\0´±4¬½½ığá&&Ï×fÙ²eç²ìüTöÎdöö¥ìİ,ûÓ?hÙm¿°úîÙñ‹Ùñ÷²±Jvt2ûÖw_¬>¹~~	Î¹ógJ¥RÑ‡€#Ö)L¥R\Z\ZÚ´iSOOOçº»»Ó{ıöÇÈÚÚÚNŸ911y®6©¿ß½œ]¼|åC“SWşûí\'ÿãWí×ÿâá¯LfÙÙÉì‰ìí‰,Ñ§{©\Zëç–æ¤}/öÀİòæ9«¸à=ĞŠ¬ ­¦iù,•JiAM‹è®]=½ç™Ú<şÄ“7>ÔÛÛ›rpõêÕ~dLÕà>[ŸôÇó“Ù™Ù¥Ëïß }¯õw_ıú—ÿö«Çß¼’GSÙ¥jÄxşÅ÷]R#Öó“Î*é|rİ™èèèØ¾}{jú¢?_€…²rpSŒŒtvv¦55Eù¥‰Éùgßşë×&-®{÷î-úç*Õàş¿ú\\‰õËÙ©w³ŸœË&²ìÒÅ‹íwİµlÙ‡–-+}úÖO¿ãÁC/Ì¸ï’\Z±‡t~HßØ/ğç›kÊårŠû¢?q€±rpólÙ²%•÷Ó{¹n¦OŸƒÏZ³fÍ†\r<G5¸ß©Oíe0g.doÍŞz/;xø‡ıèG?ôs?ûéıã«bı¹çÍ¸ï’\Z±Ş\\éœĞ××7û¹ó/~ñKÓÿ½.ÍÆuuuÍ¸eOO—ÛñY9¸ÒšÚÛÛÛßßßP¦OŸ¯mÛÖÙÙé%§ATƒ{¼>é¦²·+WY?õ^¶ç¹ÑßXù‰üò¯ÜÙö‹_ÿço½—eç.fï^¼rÇ}ÃÏÍ¸ï’\Z±ŞDél0ã	õøÂÑcÇæ9œ:}&I–/_>ı)ö‘‘‘¢w`>Vr—J=­©ƒƒƒ7\\êõWÅ¤íŒ½C\\‰õÉÉŸÖ§Ö ©×ß™È~z){óìÄ—ÇVşÖ\'?õ»¿÷ÖÅì\'•ì­Jvæb–r}ß³ÏÍ¸ï’\Z±Ş,é<:»ŞÜİİİógúŒdß¸ñ¡ú}K¥ÒğğpÑ;pMVr×ÛÛ»øR¯¿$&õº×ÃnFpw~jÍKßõàË£Ã#£ûîáÈ—ıç³ßûîË¯ı÷¡#ÿsèû_øÁğ‹G^~õGÛşaÇ½ëî-<šÅzK«}ÿ_¯í‡7o¾“ÉÎßL™^~İ¿ÚaY9È×–-[óê—Ù³k×c===EïÖRWõ·§Ïç?ÿ¹…ü`ß~úÓ3î¸¤F¬7Eúş¿şˆJ\'„Å|óßÖÖVÛNgggÑ»07+9\Zéèèhb©×æşû?·}ûö¢wnI«ÆúÓèˆõÅ\Z\ZZäsêÓçñ\'¬omëÖ­EïÀ¬ä(•úÁç5=Ö¿qbÅŠ²ÃèJ¬_>m\Z±¾xé¬RzSÎ\'õ×¯/_¾ÜYÈÊA^j¿£¤é¥^›ø‚§Á\nTõS¦Ñë‹488Xÿ©ĞôM{SN&gÏ¯_æÁ,zf²r—ÎÎÎF/©ŞĞ“ëi}-z—®j¬¿e\Z±¾Hé¬R«êôízÏ\'îØQÛl[[[Ñ»0“•ƒ\\Œ§e/§R¯ÍªU«\\p­(ÕXÿ‰itÄúb¤³JıõåÍzZ½>+V”k[öû’h¬äb`` ¯¯/×Xxóæşşş¢wôV688x­«ÚWcı¤itÄúuÍó¨Kg•ú•[š~>¹ÿş÷/gä¬Dcå 6lØ¾}{®±şôg\\m-?G©µËwÜ±k×®ëb=ó?êÒY¥Y™ó|RÛøêÕ«Ùw€k±r‹îîîÇŸx2×X?zìØŠå¢wô–U©Tn»í¶Z¾|øÃşøÇ?>ıùÎj¬ÿØ4:b}~ó?êÒY¥ö¡<Î-é|RÛx¹ì¬Äbå 9]´qúœ=w¾T*½£·²ú%2jn¿ıöûî»¯vm»ôÇË—ß4X¿®yuõ‹6ætn©ÿ¥E\r\0®â¬D.ÒŠÛôŸ\0›sq­_‚›¦ö5¿|ù„it–yÄŞ¨ôu«wüÑcÇò8ŸÔ·_ôéà*ÎJä¢½½ı•Ã‡oB¬½£·²;ï¼³J=U)˜FGG³÷ŸYÃ4:±×5Ï£.UjïÏéÜR*•Ä:³¹Èõ\"ëµñšõ\\Õ/“—\né³Ÿılúïàà`ı£ÕX?ÇÔ¶<û‰Õ9o¹À›ÍÿwÍùF~{Wà1oşG]ı%ò8·œ:}¦¶q—Z¢±r‹¾¾¾GwìÈ5Ö÷í?°jÕª¢wô–õúë¯—J¥îîîr¹ÜßßŸ*júG«Qû£<fö–§¿gVš_uƒÚsFüì{Í¾ãœ{Ó÷®¨ÚæÔ¥³Jí~mÛ¶¦ŸO^9|¸¶ñ¢v`NVr±uëÖæşŠÁÙ“¾X¿ş3Eïè­lhhh```Î‹^çµ¬çy¢üºÁ=û¾b=”yu[¶l©²ô?~ÓÏ\'oŞ\\ÛxooïMßi€ùX9ÈEZkËår®±ŞÕÕµ{÷î¢wt‰ªFíëÍú6§¿ñAOÏqË9o?Ïfø7Î—ÅïcÑ‡®…ÖmmmgÏoîùdÍš5µ§oŠŞQ€«X9ÈK®?cš–ê´`×.èÆÍw%g§Æš;?Kóş8ıC3n3ç-¯u³Ùw™óöÓßÈiÄú\"•ËåÚ1Úµë±&OêYOf¼ö pVò’ë+a¾òÈ#iãEïâÒU-Ú×ò˜Ú–goú{ê·™«Åç¾ñì·ë[˜şşüö«¾ı¢]këïï¯µ•+W6ñÉõ{Ö®­m¶§§§è]˜ÉÊA^*•J¹\\Îãjëi‘^±¢|òäÉ¢wqéªFí›>µÍÖÿ{u…Ï¼Ùµş8û¾³·3û×ÚTÓw°èC×ÚÆÇÇëWCxóæ¦œOöí?P<ŒŒŒ½‹\03Y9ÈÑààà½ëÖyZıÖSÚcÍi}Õ;ç¼åŒ»Ì¸ãBŞ±yşºæîcÑ‡®åmİºµv¸K¥Òâ¯áxôØ±zıoØ°¡è˜ƒ•ƒ|İ³vms_]úÊáÃµ/zÏ–´jÔÍi>(ï÷ßÿsŞfŞgÖÎ¾cíú\ròÛ;±Ş«W¯®¬ÔÙ‹ùm¦é4’N&õMùÇ: &+ù\Z_µjU³~ÒôÔé3iqMËsÑ»µÔUsöÕæÎ´¾ê³o3ûóoöºªovúó±ŞcccmmmõÈ>øü¡8™ãD½ÔK¥ÒŞ½{‹Ş-€¹Y9ÈİèèhêõÅ<V/õ{Ö®}ü‰\'‹Ş!r‰õ9Ãıê\'Å¯sƒ9?«k½súígT»X/µuı`¥Ônô×$íÛ şê—dëÖ­EïÀ5Y9¸FFFV®\\™ÈÅ¼ú%¿R\"õÍÔÔÓèˆõ&\Z\Z\Zª?¿¾¬z}˜t~XÈê÷®[7ı<¥gåà&_³fÍÆ:}¦Ñ×•~å‘Gj¯¥)z\'x_5Ö`\Z±Ş\\£££íííÓË;%{:ÉÌ~İ]jô¯mÛÖÕÕ5ıÆ©õ½úˆÏÊÁÍS©TÒ:z×]í)¾xäGwìH·à/¤Ä/úÓçgª±>j\Z±Ştããã›6m*•Js¾,*}“­õööú‰R %X9¸ÙÒùàƒ¶µµİ³vmjñÙ?–Ş³sç7ï]·.İfıúÏŒı)3S5Ö¿o\Z±“tVéëë›3Êgëìì.úSX(+Å¨T*CCCi}­_aú?d§Rô{¿Ã*•J.¼05õ=ÓĞˆõ\\¥³J:o¤³JGGÇŒ³J¹\\îééÙ¾}»gÓ–cå\0\Z–Òçµ×¾35uØ44b€FY9€†uwwÿûîíSÙ+fáóıÑo···}è\0h1bhØ–-[úûï+<[kşiàá¾¾¾¢\0-F¬\rkoÿØ…ÊÁ©ìe³Àééù¡¡¡¢\0-F¬7bÓ¦²—ÌBæ_ÿ¦··»èƒ@ëëÀ¨T*Ÿş—,{ÑÌ?\'OîioÿØøø¾¢\Z\0­G¬7htt´£ã®ÑÑ¡,1×šTêé»š½{¿Qôá %‰uàÆ\r§^ß²åO²ì3{††io/ïİûE(\0Z•X¥R©ô÷÷uv~b`à/O|*Ë™ññÿ\ZüëŞŞ®ÎôvÑ‡€&Ö&Ø»wo_ß,_şKü•ï·¶¶¶;z{ïN½^ôa å‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 (±\0\0A‰u\0\0J¬\0@Pb\0\0‚ë\0\0”X\0€ Ä:\0\0%Ö\0 ¨ÿŒzªÛHë[L\0\0\0\0IEND®B`‚');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('6',1,'org/jason/activiti/bpmn/RequestLeave/EmpSubProcess.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0ä\0\0Œ\0\0\0ÜÿX\0\0(òIDATxœíİolçaøq5]\nX\rëVcoÂb/\" Û$¬ìW³:`‘l\r‰¶. ©bi0­°Áñ°Æ3†µ3ök\rwk=aC6\r…M2¯‰3msR-qç[Õ±\Z¥S5Se¶Æ–ìûÉ–eùçHÚ¤î¡øùàA‘¼ã›üêL\"\0\0 Hio\0\0\0PŸX\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X\0€@‰u\0\0”X‡şU(¦§§\'&&FGG³Ùì@¿Š÷=~r¹ÜÔÔÔÊÊJÚÓ’Ä”•ôĞ”\\#±Şïâ·½äkJ_V¾MV~Y¾O#Uë,/^÷¡“7¬ÅÇjKg×Ö[8Oœ}>øàãX\\¼¸ºÚŸ#Ş÷ø˜™™Ù¶m[üœÄı—öäÔgÊznÊ\0®İÆ/šªÍñª.jj»örò•U’|ÏVnmı>­ë‡@/YYYÉçóccc\'_;yqõ¢Q9N¿y:î¿øÉY^^N{¢~Ê”õÜ”tJ¿Ô	­hpd½öÖÖc½Ñ·	‡±›>PÂõV’|È¼Ob=Î¾‘‘‘¯íÿêÅÕF£ñğ#oŞ¼yii)íéºÂ”õÜ”tP_Ô	­hzd½ng×]OòCTİ­òB²¶«ÑÃ%,Õ\'±Ïç‹Ù÷‘<?øØÖ­¿•öt]aÊznÊ\0:¨/ê„FêFpíÑè¨…o\ZÙ••Õ‹õ„Íh÷±*®îNµ»¶\rãÀcc·­®ŒVÆg?÷§»v}Ş”õĞaÊ\0:kæmI.×(ª>²^uÏ„6z”º¶¸vï“ëWñˆ=­P(d³Ù×N-­®½k´2ÎÿÑğğo,,,˜²^©O@Çmğ:¡©F[7¯]ÓÊMµ×_õz\Z­0áMc½ÅGìiSSSù|~uíòøØøï5ıï…’Ê¥újìÚõ—“““¦¬‡FºSĞq9MhEUÅÖ5/WlÕMm%omIÔ>z+ëIØøä;ˆõ(Êår3ıÛO³ï¶±DÑ«—¢—W£o_ˆ¿>·¶ç¡\'¾yêí§/Fÿ[ˆ.D‡Ş‰{/ú»C/Ş³ıS©GX*ãÙ#ó###¦¬‡FºSĞq9MhEe¤Ö-Úº›Ğ»îĞn7\'Ü¡Å[[ĞÖ±§\r\r\r;öÜêÚùÒˆ÷ô\\¿½½½u1z\'ŠşäÏî¸îç·Ü–;µ\Z¼|/Z*D\'Ö¢¯ëùâ‘Úó}8Î?“ÉdLYt§ ã6l—Ğ¢ªãÜ	GÖ+‰ZÈ÷„ãë×¸Vnª½CÕ£_İ#ö´ÁÁÁ7ÏœZ];W\Zñn¾s)ºpéÊMk—¯üùGÿãW~õ×şü/¬EÑÙµèíÕè­Õh%Š{æ…bùëÏ‘âßSÖsSÖŠB¡0;;»sçÎ\\.7úãããñ5SSSÎT	úuĞè r£¤®[í	Ÿf©{ŸÚ/[\\OÕ5×ø–ÜÖ#n\0Åz;[ñ—ç×¢3ïF/ıø+++û¥¯|şo¾tòõ+¹°z9ºX,Â§}¾jÙ¾\Z)şM0e=7eÉâF} ™‘‘‘}ûöÅMŸööAô\rè¸b½ı_y\\)¿KÑéw¢‹V£èâ…C·Ü20ğşÌ\'şp[å‚‡<Wµl_´cİ”õÒ”5277·eË–¦™^)›ÍÆqŸö†éî\rè’b½½]ÅÏTœy7zılôÆ{ÑácßûĞ‡>ôşŸûÀ\r7}pâ~¦üyöHÕ²}5ÒuSÖKSV«P(äóùÚcçŸıìçffzüàå±cÇıcccU÷Ìår+++iï¦€^Ñ€®*ÖÛJyÄ_¾{9z«på0íé÷¢ƒÏ,üúğG>øK¿|Óà/|åŸ¾ş^»½sáÊ‚‡æŸ©Z¶¯FÚ±nÊziÊª,//WP¿÷ŞÏœX\\¼¸ºÖhœ~óÌ—÷îİ´iSå!ö£G¦½+@jByEº-~×_[ûQy”‚&¿·W£]Œ^?»úÔ‹KÃ¿ùÑıÎï¾q!úa!z£¹Åíwèégª–í«‘n¬›²Şš²JKKKqg—›{||<9Ó«’}ÇûËËf2™ùùù´wHG¯hÀ:¨ª·Ñm}á;/~qaşèÂ“G|îøS/,şçÓßşÖ‹¯ü÷‘ãÿsä»O>÷İùç¿øò÷÷şış;î¼#õëÃò3e=7ee…B¡ò˜ú»vµ˜é•ãÁÿ%Îôòñu\'Šş”ş+\Z°>Šå÷Våøô§?ÕägÜŠşàŸ¨Z°¯FÚ±nÊziÊÊ&&&ÊÓ13óĞU”zi~öÈàà`i=£££iï‚ô_Ñ€õQ,¿3F»#íXOÿè¹‘z¬ÏÎÎ^ã1õÊñğ#–×¶gÏtw\rXbúÅ•ò»ô¦ÑîH9ÖÓŞı^©ÇúÈÈH©­ÇÇÇ¯±ÔK£üùõM›69ÿ:ô±ı¢X~§vGÚ±ş3Ğs#İXŸ.…u&“9ùÚ©ÄúÙsçËç‡¹ï¾ûRÜ;`ı‰uèÅò{Ãhw¤ëé?=7ÒõÑÑÑRUß{ïg:Rê¥ñµıûK«Lqï€õ\'Ö¡_Ëï‡F»#íXOÿè¹‘â”­¬¬”?_Ş©ÃêåqóÍÙÒšçææÒÚA`ı‰uØP¦§§—––êŞT,¿e£İÑíò3eiÊ¦¦¦Êgnél©Çã{~|. ÉÉÉ®î ±ÇñãÇKïå7ŞxãÌÌLÕ­Ê/Àò3elÊ¶oßŞ©“ÀÔÇ>QZù–-[º·ƒ@hÄ:l…Báºë®+½_ıõ·Şzkåñ¿bùıÀhwtµüLÙ›²ñññÒM?òhÇcıÄâbiåÙl¶{;„F¬Ã†R>eDÉ\r7Üp×]w•ÎõyéÒëF»£ÛŸ©0eiÊÊ\'m<üì‘Çz<ÊÚÕ‚â|pâWü¹¹¹;wşD6›€kS:CÅ¥K§ŒvGùÙ3e½2Rœ²rÇŸX\\ìF¬—×Ÿö;°~üƒHÜè¹\\.“ÉÄ¯øq¬ÏıD£Ÿd‚Z7İtS9rEñ_§………èÇ‡i_3Úİ#S¶‘¦lhh¨tıKÇu#Öã7±ıÆ?ø ,//—¢ÏÎÎ¦½-ô°òiãâb¸ûî»ã?§§§Ë·ËïäUŒ¦¶¾æä{VİÚÖëŞT{áêv¿ç¦¬Å‰¨=6\\÷-Şm}¦#ğ)+Ñüà/õÓo)­Ü©Ö¡¯ˆõô8p ~¹wŞ\\®İ«¯¾šÉdÆÇÇ³Ùìääd\\•·éû­º•ö³Åö3w®»HİÕ6º\\¹TízZßòåÚW1ºZ~²¶v*y^jŸØªiMGàS–ÏçK»ÿå½{;ë/;VZùÈÈH÷vXOÙìììèèhÕË=\\µøoÔÔÔTİN]E!Õ&WBº5Z¼•ªk´¶ºÍ—°©É«\r°ü:>emMkòó“0})NGàS¶{÷îÒşnÛöÉÇú»v•V>11ÑÕ‚\"ÖÓ¿ÖŒŒ(uÖG±^mw”–*/[õeÕåºË¶xe³ oi=U7%lv[Ï@oMY+Zu¡î“\\wêÛšÖnLGàS¶°°Pz2Ï;ßÙXßºukiåñ·\nií °şÄzš¶lÙ2??ŸöVĞ/®´Ñå¥ÖGÃn.ŞTy·„5\\Ë•µ·&Õ|ãûW^¸Š‘r¬_Õ6·2­µÏ|£ç¹öÖ§#ğ)‹•Ïß53óPK½|’õ˜C<ĞWÄzjfggs¹\\Ú[A)æÑ+×8J+©\\UÂjëŞ”|ÿšæk¸lÂ6”—-_-ûv¬_ë”µ8Õ-Út>e±ÉÉÉÒ.wğàúÇo¿½´ZoĞoÄzjÆÇÇ8öVĞGŠ…ô½¶FM¢}¯¼’Úu¯»ªuÖŞ¿Ñš›®§öË¦ÙÊ“ĞCSÖâUşÙ[Óø”EÅÓÅ”Ï†şÀ®])õCO>U~2=šâŞëO¬§cyy9~5O{+è/ÅBZlkT.Rº\\¾¦öBòâÉW–oª—}IÛSwmmd+OBMY+»“üÄÖ}\ZëÎH*Óø”•ìÙ³§ô\\e2™k?‡ã‰ÅÅrıoß¾=İ]ÖŸXO‡ÏÀ°şŠ…t¢­Q¹HéòOrí§7%¬¶îMmİ¿êšFÇqkï–¼Íí>	=4emíWò$V=±uggı§#ğ)+Û²eKiOãÎ¾–ßfzöÜùáááòª–——ÓŞ3`½¥ÿŠÖŸî»ï¾={ö¤½ô—b½ÜÖ¨)°—+ÿ,ß\'añ¯ltS»+¯º)a³ÛzzhÊZŸÓ„\'³öMŸ½u›À§¬liiipp°Ù‡Ÿ=r¥~òµSåRÏd2~ô§ô_ÑúÓèè¨—]ÖÙÕÅzÕå®ªï“Õ.U÷Öv·6Åz£§«ÑŞtÊÖ:Ÿ²Jñ‹|yOãÔn÷×$zò©ò§_bï@ß\nâ­9i#ë/~¿¿|ù¸ÑîH7ÖSßı^ÄzTüÄcùøú@ñü0?òh+Ôï¸óÎÊï”:ô³P^ÑúM6›­ûÛï {Šå÷]£İ‘v¬§ÿôÜ\'Ö£â¯I\Z\Z\Zª,ï8Ùwì¸ÿ¥cÇjıË{÷UŞ9n}ÿ\r}. W´¾¿şú­¬³bù-í´c=ıg çFP±Oæ¸sçÎL&S÷3E›7ontÓÄÄ„Ÿ(ÂzEë¡½—ĞŠå÷£İ‘v¬§ÿôÜó6Îî|>_7Êkú¨$Pâ+Z?ó½„-“É¼ûîs—/Ûhk¤ø¯Õ”õÜ”5U(¦§§ãj©\nôl6›ËåöíÛçh:P)ÜW´-ä÷6ª8^yå›—/3Ú\Z)şk5e=7e\0ç-ŞKXãããÿ~`ßåè%£õñ…o\r\r™²\ZéN@ÇIÆtˆuÖßîİ»\'\'ïJ½¥zküãÔù|Ş”õĞHwÊ\0:N2¦C¬³ş–––††>ünáğåèE£Å‘Ëıöìì¬)ë¡‘î”tœdL‡X\';¯Ø~9zÁheüëô_OLŒ›²\Z!L@gIÆtˆuRQ(FG?:?ÿÏQô¼‘<–—\r}xeå)ë•È”t–dL‡X\'-##·,,ÌFÑQ£Ñˆ³/Nä¹¹¯¦=]W˜²›2€’Œéë¤h~~>¿İ»ÿ8Š3jÇìì‡†²ssÿöDı”)ë¹)èÉ˜±Nº\n…Âäd~tô#SS±¼üX1VVşkzú¯&&Ær¹ÑørÚSTÍ”õÜ”t„dL‡X\'sssùüïoÚô‹-ş\nômpğÆ‰‰ÛâøK{Z’˜²J=1e\0×H2¦c@¬\0ĞŒdL‡X\0 )É˜±\0@S’1b\0€¦$c:Ä:\0\0MIÆtd³Ù´7\0€Ğ‰õ¬¬¬äóùøÏ´7\0€ ¥ë…BavvvçÎ¹\\nô\'ÆÇÇãk¦§§7dÎÆ;µuëÖ¯íßïé†ÜA\0\0:%µX=òL&gzœæ33=~ğ‰Òxø‘Gwì¸bbbpppË–-SSSimdÇ•Jığ³G.®®Åêu\0\0¤ëG#5nô8ÊãfM‡|jÛ¶OŒŒÌÍÍ­ÿ¦vVe©—†^\0 ÁzÇúîİ»ãò~üàM3½rÄQgîöíÛ…Â:op§Ô–º^\0 ÙúÅzÜÙ“““mezåøòŞ½q×.//¯Û6wJ£R×ë\0\0$X§XK}Ë–-ÓÓÓW]êåOÅÄëYZZZŸÍîˆäR×ë\0\04²N±>11qí¥^îÚ¸×{åó0­”º^\0 ®õˆõİ»w_Ë§_jÇÌÌC¹\\n¶ü\Zµ^êz\0€Z]õ£GŒŒt°ÔKã{>µoß¾noüµh·Ôõ:\0\0Uºëq©·¬­Œ“¯ºùæl°†¹ºR×ë\0\0Tên¬ÏÎÎær¹—ziÜ{ïgöìÙÓÕí¿:µ¥şğ#ŞrËĞ‰ÅÅº;rúÍ3ÃÃÃ_Û¿_¯\0P©»±g»§Toëàú¦M›ººıW¡n©g2™›oÎÖöz©ÔŠô:\0\0•ºëqhv©ÔKcóæÍóóóİÛ…v%”zIU¯W–º^\0 Jc}jj*ŸÏw5ÖØµkrr²{»Ğ–ÚR?{îü¦M›~V¹×kK=—ıÉ×Néu\0\0¢®ÆúöíÛ÷íÛ×ÕXüàqËvoJ¦§§›ş\Z¦F?Q\Z_388XÛëG{®n©?üÈ£µkĞë\0\0ı©‹±>>>^›\'ãğíŞ.Ä?^*éo¼qff¦î}’ÏıR·×?ğ´Rêz\0 Ÿu1Ö»tÒÆÊqöÜù¸q»·±B¡pİu×•zúúë¯¿õÖ[«²·r–Æº½Şb©ëu\0€¾ÕÅXß´iSåÇ¯»4âÒm,—ËíL4—¨ÇUŸ;¿á†îºë®Ò)Ş[?ŸzB¯7-u½\0ĞŸºëCCC/;¶±PÛ³³³É±ú±äÃáñâRoıÜ”ÿ9÷_ïÿû«Vò¾÷½oÿşlq\rëó}\0\0ÑÅXïêIÖKc>³»é¦›Êm+Šwmaa!¾éèÑ£q¯Ÿ~óLÓM­{î—’ºç_¯»†øqãGìöş\0ˆ.Æz>Ÿ¯<kx7Æ¡\'ŸÚ¼ys÷v!*~Ğ¥”ÔCCCwß}wüçôôtåZéõ„Ro±×•:\0@êb¬ïÙ³çŞ{?ÓÕX¿Ø¶í“İÛ…Ø«¯¾šÉdÆÇÇ³ÙìäädİŒ\'÷zİRßûŞ×z¯+u\0€şÔÅX_ZZŠ·«±>66vàÀîíBÉìììÔÔTò©Öõz£ß|ôwÿïKuÏ¿^ÛëJ\0 ou1Ö£.ÿŒéÙsçãŞ-•%µ½Ş¨ÔKç~iôû’*{]©\0ô³îÆzW?	ó…/~1^yW·¿]µ½¾mÛ\'ë–ziÔöúØØXüMˆR\0 êv¬\n…l6Û³­ÇE{óÍÙååå®nÿUHèõºçS¯ìu¥\0@¥îÆzlzzú;ïì‡Ãêeu{=á7•z]©\0P¥ë±ûøí·ÏÌ<ÔÁRéØ±ááá8m×aã¯Nm¯\'ÿ–Óx”:\0\0UÖ#ÖWVV6oŞÜ©Ÿ4-ıÔæ‰ÅÅuØòkÑúïKªÚ;¥\0@ÉzÄzlaa!îõV~OgÓ–ıøí·?üÈ£ë³Ù×¨İ^Wê\0\0TZ§XŠå:<<|èÉ§®åÓ/qñ÷J©—´ŞëJ\0€*ëëQñó0q¹îØq»9{îü¾øÅÒgiÖsƒ;¢•^Wê\0\0ÔZ×XŠ\'sŒcı–[†âø.ÿHeòøÚşıñıï½÷3qÑ®óÖvJr¯+u\0\0êZïX/Y^^¾ï¾û?~ûíq‹×)%¾æÁÿå;ïŒï³mÛ\'—––RÙÎjÔëJ\0€FÒ‰õ’B¡0;;›Ïç‡‡‡~V|M\\êÓÓÓ+++)nagÕöºR\0 Aš±Ş‡*{]©\0L¬¯·R¯ŸX\\Tê\0\0$ë)ˆ=›Í*u\0\0’‰õtäóù´7\0€Ğ‰õtxæ\0hB2¦C¬\0Ğ”dL‡X\0 )É˜±\0@S’1b\0€¦$c:Ä:\0\0MIÆtˆu\0\0š’Œéë\0\04%Ó!Ö\0hJ2¦C¬\0Ğ”dL‡X\0 )É˜±\0@S’1b\0€¦$c:Ä:\0\0MIÆtˆu\0\0š’Œéë\0\04%Ó!Ö\0hJ2¦C¬\0Ğ”dL‡X\0 )É˜±N€\n…ÂôôôÄÄÄèèh6›èWñ¾ÇÏ@.—›ššZYYI{Z\0èk’1bÀ8p Ô¸Ô|ğÁÇ<±¸xquµ?G¼ïñ3033³mÛ¶ø9‰“=íÉ IÆtˆuÂ±²²’ÏçÇÆÆN¾vòâêE£rœ~ótœìñ“³¼¼œöDĞ$c:Ä:ˆK}ddäkû¿zqõ‚Ñh<üÈÃ›7o^ZZJ{º\0è;’1b@äóùb©¿g$Ç>¶uëo¥=]\0ôÉ˜±N806vÛêZÁhe|ösºk×çÓ4\0ú‹dL‡X\'u…B!›Í¾vjiuí]£•qîü†‡caa!í© HÆtˆuR755•ÏçW×Ş)ÿ^‹\'7¬\\ª¯Æ®]999™öÔĞG$c:Ä:©Ëår3ıÛOKı¶±DÑ«—¢—W£o_ˆ¿>·¶ç¡\'¾yêí§/Fÿ[ˆ.D‡Ş‰{/ú»C/Ş³ıS©ws*ãÙ#ó###iO\0}D2¦C¬“º¡¡¡cÇ[];_\ZñßÉsQtşrôöZôÖÅè(ú“?»àºŸßr[îÔjtòBtò½h©X‹¾ş­ç‹×Ï÷á8wşL&“I{ê\0è#’1bÔ\r¾yæÔêÚ¹ÒˆÿN¾s)ºpéÊMk—¯üùGÿãW~õ×şü/¬EÑÙµèíÕè­Õh%Š{æ…b¬ŸëÏø?ŞB¡0;;»sçÎ\\.7úãããñ5SSSÎĞs‚~×ÙÀ¿§ƒûlyÄ__‹Î¼]¼ôã;¬¬¬üí—¾òù¿ùÒÉ×¯Şêåèb1âŸzöùªeûjû7nô8Ğ›ş¼ÁÈÈÈ¾}ûâ¦O{{hI ï:^&“ñfIºŠÁıåq%Ö/E§ß‰~x.Z¢‹.İrËÀÀû2ŸøÃm•>ò\\Õ²}5Œõ¹¹¹-[¶´øÃÁ%Ùl6û´7€æ‚{×éñ;¥ß†HºŠÁıvy”>sæİèõ³ÑïE‡}ïCúĞûî7ÜôÁ‰?ú™XæÙ#UËöÕ*Öãïùóù|í±óÏ~ös33=~ğ‰òØ±ãş±±±ª{ær¹•••´w€$½ëô•øİôèÑ£io}­Ü+åùîåè­Â•#ë§ß‹>³ğëÃùà/ıòMƒ¿ğ•úú{QtîBôÎ…+š¦jÙ¾\ZáÄúòòrÕõ{ïıÌ‰ÅÅ‹«kÆé7Ï|yïŞM›6Ub÷Z²PŞuúÍèèèÜÜ\\Ú[A_‹CmmíGåQjĞ¸×ß^~t1zıìêS/.\rÿæG?ö;¿ûÆ…è‡…èBtæBçú¡§Ÿ©Z¶¯F ±¾´´wv¹¹ÇÇÇ“3½*Ùwì¸¿¼l&“™ŸŸO{‡\0¨/ˆw>”Ïç§¦¦ÒŞ\núZUp~lëßyùğ‹óG<²ğäsÇŸzañ?Ÿşö·^|å¿ÿŸ#ß}ò¹ïÎ?üÅ—¿¿÷ï÷ßqç©Gs?Çz¡P¨<¦şÀ®]-fzåxğÁ‰3½||İ‰b\0Â”ş»N*ıòÈ´·‚¾VŒõ·*Ç§?ı©V~6ñ>ñ‰ªûj„ëåé˜™yè*J½4?{dpp°´ÑÑÑ´w€:Ò×éOCCCio}­ëgŒvGê±>;;{ÇÔ+ÇÃ<Z^Û={Òİ5\0j‰õÔøSÒu%Ö/½i´;Rõø¥£ü9õk,õÒ(~}Ó¦MN)\Z±š={öÜwß}ioı«ë§vGº±>==]ş©Ğ“¯êH¬Ÿ=w¾|~/J\0¡ë©)\n~¨‹cı\r£İ‘n¬–ªúŞ{?Ó‘R/¯íß_Zíàà`Š{@-±¦¹¹9?ÔEZŠ±şC£İ‘b¬¯¬¬”?_Ş©ÃêåqóÍÙÒšU (b=e;wîôÿÎtÏôôt£ß•[Œõe£İÑíXO˜²©©©ò™[:[êñ¸çŸhrr²«;@[Äzúâ·Æññq¿ô›;~üx)¿n¼ñÆ™™™ª[Åz€±<eÛ·oïÔI`jÇãŸ(­|Ë–-İÛA\0Ú%ÖƒpàÀl6»sçNa§ƒ\n…Âu×]W*°ë¯¿şÖ[o­<d[Œõí®Æzò”ÅßÕ—nzø‘G;ë\'K+_‹º·ƒ\0´K¬‡bee%õøm2~?/øØ(Q>ËGÉ\r7Üp×]w•NÏyéÒëF»£ÛƒI˜²òI?{¤ã±òƒvuh‹å°ÄoÉˆc½|Îè†Ò_°K—Níò³·şSVîø‹‹İˆõòúÓ~!à§¼(ÃFvÓM7•k/W7ßÂÂBôã#ë¯ín·lÂ”\r\r\r•®éØ±nÄz&“ë\0¡ñ¢VùLqäİ}÷İñŸÓÓÓå[‹±~ò*FÓ[_sò=«nmëÎuoª½pu»ŸÖ”•è?~ğ‰—úé7Ï”VîTë\0Aë°a½úê«™Lf||<›ÍNNNVq¨¬ßo}4ıœFÕë.Rwµ.W.U»Ö·§|¹öÂUŒ®Æzò”åóùÒ®}yïŞÇúKÇ•V>22Ò½ ]b6²ÙÙÙ©©©ºçí¾Š`­-àFœĞå­Dv£µ5*ûV«\'b=yÊvïŞ]Ú—mÛ>ÙñX`×®ÒÊ\'&&ººƒ\0´E¬CŸ*ë«íÒRåe«¾¬º\\wÙ¯lô-­§ê¦„ÍnëHkÊJ»?88xöÜùÎÆúÖ­[K+¿UHk¨%Ö¡O]IÕËK­†İ\\¼©òn	k¸–+koMªùÆ÷¯¼p#ÅXe³ÙÒÆÏÌ<ÔÁR/Ÿd=æ´E¬CŸ*Öê+×8J+©\\UÂjëŞ”|ÿšo¸lÂ6”—-_-ûn¬ONN–vgxx¸ƒ×?~ûí¥Õær¹÷€ZbúT1X¿×Ö¨Içï•WR{¡îâu×SµÎÚû7ZsÓõÔ~Ùt#[yRœµ•••òÙĞØµ«#¥~èÉ§ÊOÔÑ£GSÜ;\0j‰uèSÅ`]lkT.Rº\\¾¦öBòâÉW–oªWáIÛSwmmd+OBº·gÏÒS‘Éd®ı\'Ëõ¿}ûötw\r€ZbúT1XO´5*)]şI@ÿô¦„ÕÖ½©­ûW]“xd½ÎR¶¹İ\'!í©‹¶lÙRÚ‹¸³¯å·™=w~xx¸¼ªååå´÷€jé¿ë\0©(¦êËmš ~¹òÏò}oñÊF7µ»òª›6»­\'!í©‹–––Ë‘}øÙ#WQê\'_;U.õL&377—önPGúï:@*®.Ö«.·ØÓU}Ÿ¬Ñ÷U·¶û¸µÕŞ»±‹Ûº¼qj·ûk’=ùTùÓ/±={ö¤½C\0ÔÄ»°şâD»|ù¸Ñî$Ö£â¯O*_(æáGmå€úwŞYùıRY(ï:À:+ÆúwvG8±MÒĞĞPeyÇÉ¾cÇı/;VÛè_Ş»wll¬òÎqëûô@àz×¡KjÛ¢êšÒ—•oá•_–ïÓHÕ:Ë‹×}è„­ºº]KŞªv.¨ë¶b¬/íĞş’¬¬¬ìÜ¹3“ÉÔı‡°yóæF7MLLø‰R€ğ…õ®C—ÔæxU—G5µ]{9ùÊªG©{Ï„¶®[ØW±×r‡ï³acı;F»#Ì¿$qvçóù¦ÿÄJFGGçççÓŞd\0Zâ»İVÛĞÑ5Çz£o\Z…x»éÜ4èë>D+ß´x·\'“É¼ûîs—/Ûhk„ü£P(LOOÇÕ>22Rõ—9›Íær¹}ûö9šĞ[Â}×¡ã\Zõhİ°NÖäb¨‰ş„RowU	‹´˜PÉß6´ò@F\\o¯¼òÍË—m\rÿ€ x×Ùàê÷@Íë¨…nnzº²ò£ÆEŞzy\'Çz‹[Õè¡›nÏ†o²ñññ?°ïrô’ÑúøÎÂ7†††Ò:\0úÈÏ¢fuıldW]¾Šä­Zgíı[âäXoe«Z¹Cİ-oe…½n÷îİ““w¥¿½5şqê|>ŸöÔĞG6xµpä¸6©ëFvÓ›j¯¯»æÚïš~WĞ4Ö“·ªÅ›\riiiihèÃï_^4Z¹ÜoÏÎÎ¦=u\0ô‘\r#D\r~L³²ëÖsÔf7Šïäï:ud½­o!š.Û\'±ÛyÅöËÑF+ã_§ÿzbb<íI ¿lü¡Ñ\'R’$7ı\0Lİ^oën¥³+låã1Mwv£*\n££Ÿÿç(zŞHËË‡†>¼²r(íI ¿lü¡ê8wÂ‘õÊE¢ò=áøz‹ëi1Ök×ÜÊV%ÿAÓmè‡XŠ¿sdä–……Ù(:j4\Zq©ÇßÕÌÍ}5íé ïôEô¹FqÜ(©ëV{BÑÖ½Oí—U7ÕÕî~5İªä­İ¶ª;·µ=½k~~>îõİ»ÿ8Š3jÇìì‡†²ssÿöDĞú%G€…Bar2?:ú‘©©¿X^~,Š++ÿ5=ıWc¹Üh|9í) O‰uàÇæææòùßß´éş÷£Ş81q[ÜëiO\0}M¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ Ä:\0\0J¬\0@ ş?è,å;±?†\0\0\0\0IEND®B`‚');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('7',1,'org/jason/activiti/bpmn/RequestLeave/RequestLeaveProcess.bpmn20.xml','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://activiti.org/ReauestLeaveProcess\">\n  <process id=\"RequestLeaveProcess\" name=\"è¯·å‡æµç¨‹\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <callActivity id=\"callactivity1\" name=\"å‘˜å·¥è¯·å‡å­æµç¨‹\" calledElement=\"EmpSubProcess\"></callActivity>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <callActivity id=\"callactivity2\" name=\"éƒ¨é—¨ä¸»ç®¡è¯·å‡å­æµç¨‹\" calledElement=\"GroupLeaderSubProcess\"></callActivity>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow1\" name=\"\" sourceRef=\"startevent1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" name=\"å‘˜å·¥è¯·å‡\" sourceRef=\"exclusivegateway1\" targetRef=\"callactivity1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${isEmp}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow3\" name=\"éƒ¨é—¨ä¸»ç®¡è¯·å‡å­æµç¨‹\" sourceRef=\"exclusivegateway1\" targetRef=\"callactivity2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!isEmp}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"\" sourceRef=\"callactivity1\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"\" sourceRef=\"callactivity2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_RequestLeaveProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"RequestLeaveProcess\" id=\"BPMNPlane_RequestLeaveProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"60\" y=\"203\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40\" width=\"40\" x=\"145\" y=\"200\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"callactivity1\" id=\"BPMNShape_callactivity1\">\n        <omgdc:Bounds height=\"55\" width=\"135\" x=\"390\" y=\"140\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"630\" y=\"150\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"callactivity2\" id=\"BPMNShape_callactivity2\">\n        <omgdc:Bounds height=\"55\" width=\"135\" x=\"390\" y=\"260\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"630\" y=\"270\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"95\" y=\"220\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"145\" y=\"220\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"165\" y=\"200\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"165\" y=\"167\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390\" y=\"167\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"165\" y=\"240\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"165\" y=\"287\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390\" y=\"287\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"525\" y=\"167\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"630\" y=\"167\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"525\" y=\"287\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"630\" y=\"287\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>');

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) collate utf8_bin NOT NULL default '',
  `VALUE_` varchar(300) collate utf8_bin default NULL,
  `REV_` int(11) default NULL,
  PRIMARY KEY  (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('historyLevel','2',1);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','101',2);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.history','create(5.8)',1);
insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('schema.version','5.8',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) collate utf8_bin NOT NULL,
  `ACT_NAME_` varchar(255) collate utf8_bin default NULL,
  `ACT_TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(64) collate utf8_bin default NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `URL_` varchar(4000) collate utf8_bin default NULL,
  `CONTENT_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `ACTION_` varchar(255) collate utf8_bin default NULL,
  `MESSAGE_` varchar(4000) collate utf8_bin default NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `ACT_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) collate utf8_bin default NULL,
  `REV_` int(11) default NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) collate utf8_bin default NULL,
  `DOUBLE_` double default NULL,
  `LONG_` bigint(20) default NULL,
  `TEXT_` varchar(4000) collate utf8_bin default NULL,
  `TEXT2_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  `START_USER_ID_` varchar(255) collate utf8_bin default NULL,
  `START_ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `END_ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  UNIQUE KEY `ACT_UNIQ_HI_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_DEF_KEY_` varchar(255) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `PARENT_TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `OWNER_` varchar(64) collate utf8_bin default NULL,
  `ASSIGNEE_` varchar(64) collate utf8_bin default NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime default NULL,
  `DURATION_` bigint(20) default NULL,
  `DELETE_REASON_` varchar(4000) collate utf8_bin default NULL,
  `PRIORITY_` int(11) default NULL,
  `DUE_DATE_` datetime default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('1001',1,'æ™®é€šå‘˜å·¥','01');
insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('1002',1,'éƒ¨é—¨ä¸»ç®¡','02');
insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('1003',1,'ç»ç†','03');

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `USER_ID_` varchar(64) collate utf8_bin default NULL,
  `TYPE_` varchar(64) collate utf8_bin default NULL,
  `KEY_` varchar(255) collate utf8_bin default NULL,
  `VALUE_` varchar(255) collate utf8_bin default NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `GROUP_ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `SUP_ID` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

insert  into `act_id_membership`(`USER_ID_`,`GROUP_ID_`,`SUP_ID`) values ('70001350','1001','70001351');
insert  into `act_id_membership`(`USER_ID_`,`GROUP_ID_`,`SUP_ID`) values ('70001351','1002','70001352');
insert  into `act_id_membership`(`USER_ID_`,`GROUP_ID_`,`SUP_ID`) values ('70001352','1003',NULL);

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `FIRST_` varchar(255) collate utf8_bin default NULL,
  `LAST_` varchar(255) collate utf8_bin default NULL,
  `EMAIL_` varchar(255) collate utf8_bin default NULL,
  `PWD_` varchar(255) collate utf8_bin default NULL,
  `PICTURE_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

insert  into `act_id_user`(`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) values ('70001350',1,'Jason','Jiang','jh890308@163.com','qqq','01');
insert  into `act_id_user`(`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) values ('70001351',1,'Andy','Wang','jh890308@qq.com','123','02');
insert  into `act_id_user`(`ID_`,`REV_`,`FIRST_`,`LAST_`,`EMAIL_`,`PWD_`,`PICTURE_ID_`) values ('70001352',1,'Johnson','Xu','jh890308@sohu.com','qqq','03');

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `DEPLOY_TIME_` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`DEPLOY_TIME_`) values ('1',NULL,'2011-12-27 14:12:30');

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `CATEGORY_` varchar(255) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `KEY_` varchar(255) collate utf8_bin default NULL,
  `VERSION_` int(11) default NULL,
  `DEPLOYMENT_ID_` varchar(64) collate utf8_bin default NULL,
  `RESOURCE_NAME_` varchar(4000) collate utf8_bin default NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) collate utf8_bin default NULL,
  `HAS_START_FORM_KEY_` tinyint(4) default NULL,
  PRIMARY KEY  (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`HAS_START_FORM_KEY_`) values ('EmpSubProcess:1:8','http://activiti.org/EmpSubProcess','???????','EmpSubProcess',1,'1','org/jason/activiti/bpmn/RequestLeave/EmpSubProcess.bpmn20.xml','org/jason/activiti/bpmn/RequestLeave/EmpSubProcess.png',0);
insert  into `act_re_procdef`(`ID_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`HAS_START_FORM_KEY_`) values ('GroupLeaderSubProcess:1:9','http://activiti.org/GroupLeaderSubProcess','?????????','GroupLeaderSubProcess',1,'1','org/jason/activiti/bpmn/RequestLeave/GroupLeaderSubProcess.bpmn20.xml','org/jason/activiti/bpmn/RequestLeave/GroupLeaderSubProcess.png',0);
insert  into `act_re_procdef`(`ID_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`HAS_START_FORM_KEY_`) values ('RequestLeaveProcess:1:10','http://activiti.org/ReauestLeaveProcess','????','RequestLeaveProcess',1,'1','org/jason/activiti/bpmn/RequestLeave/RequestLeaveProcess.bpmn20.xml','org/jason/activiti/bpmn/RequestLeave/RequestLeaveProcess.png',0);

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `BUSINESS_KEY_` varchar(255) collate utf8_bin default NULL,
  `PARENT_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `SUPER_EXEC_` varchar(64) collate utf8_bin default NULL,
  `ACT_ID_` varchar(255) collate utf8_bin default NULL,
  `IS_ACTIVE_` tinyint(4) default NULL,
  `IS_CONCURRENT_` tinyint(4) default NULL,
  `IS_SCOPE_` tinyint(4) default NULL,
  PRIMARY KEY  (`ID_`),
  UNIQUE KEY `ACT_UNIQ_RU_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `GROUP_ID_` varchar(64) collate utf8_bin default NULL,
  `TYPE_` varchar(255) collate utf8_bin default NULL,
  `USER_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LOCK_OWNER_` varchar(255) collate utf8_bin default NULL,
  `EXCLUSIVE_` tinyint(1) default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) collate utf8_bin default NULL,
  `RETRIES_` int(11) default NULL,
  `EXCEPTION_STACK_ID_` varchar(64) collate utf8_bin default NULL,
  `EXCEPTION_MSG_` varchar(4000) collate utf8_bin default NULL,
  `DUEDATE_` timestamp NULL default NULL,
  `REPEAT_` varchar(255) collate utf8_bin default NULL,
  `HANDLER_TYPE_` varchar(255) collate utf8_bin default NULL,
  `HANDLER_CFG_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) collate utf8_bin NOT NULL default '',
  `REV_` int(11) default NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_DEF_ID_` varchar(64) collate utf8_bin default NULL,
  `NAME_` varchar(255) collate utf8_bin default NULL,
  `PARENT_TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `DESCRIPTION_` varchar(4000) collate utf8_bin default NULL,
  `TASK_DEF_KEY_` varchar(255) collate utf8_bin default NULL,
  `OWNER_` varchar(64) collate utf8_bin default NULL,
  `ASSIGNEE_` varchar(64) collate utf8_bin default NULL,
  `DELEGATION_` varchar(64) collate utf8_bin default NULL,
  `PRIORITY_` int(11) default NULL,
  `CREATE_TIME_` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) collate utf8_bin NOT NULL,
  `REV_` int(11) default NULL,
  `TYPE_` varchar(255) collate utf8_bin NOT NULL,
  `NAME_` varchar(255) collate utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) collate utf8_bin default NULL,
  `PROC_INST_ID_` varchar(64) collate utf8_bin default NULL,
  `TASK_ID_` varchar(64) collate utf8_bin default NULL,
  `BYTEARRAY_ID_` varchar(64) collate utf8_bin default NULL,
  `DOUBLE_` double default NULL,
  `LONG_` bigint(20) default NULL,
  `TEXT_` varchar(4000) collate utf8_bin default NULL,
  `TEXT2_` varchar(4000) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `holiday` */

DROP TABLE IF EXISTS `holiday`;

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL auto_increment,
  `totalNums` decimal(3,0) NOT NULL default '0',
  `usefulNums` decimal(3,0) NOT NULL default '0',
  `empId` varchar(64) character set utf8 default NULL,
  PRIMARY KEY  (`id`),
  KEY `empId_index` (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `holiday` */

/*Table structure for table `holidaydetail` */

DROP TABLE IF EXISTS `holidaydetail`;

CREATE TABLE `holidaydetail` (
  `id` int(11) NOT NULL auto_increment,
  `request_date` datetime NOT NULL,
  `request_num` decimal(3,0) NOT NULL,
  `emp_id` varchar(64) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `holidaydetail` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
