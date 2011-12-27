/*
SQLyog 企业版 - MySQL GUI v8.14 
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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('2',1,'org/jason/activiti/bpmn/RequestLeave/EmpSubProcess.bpmn20.xml','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://activiti.org/EmpSubProcess\">\n  <process id=\"EmpSubProcess\" name=\"员工请假子流程\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <userTask id=\"usertask1\" name=\"部门主管审批\" activiti:candidateUsers=\"${userService.getLeader(user)}\"></userTask>\n    <userTask id=\"usertask3\" name=\"经理审批\" activiti:candidateUsers=\"${userService.getManager(leader)}\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <userTask id=\"usertask2\" name=\"部门主管审批\" activiti:candidateUsers=\"${userService.getLeader(user)}\"></userTask>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow1\" name=\"\" sourceRef=\"startevent1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" name=\"请假天数大于10天\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${requestDay > 10 }]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow3\" name=\"\" sourceRef=\"usertask1\" targetRef=\"usertask3\"></sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"请假天数在10天之内\" sourceRef=\"exclusivegateway1\" targetRef=\"usertask2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${requestDay <= 10 }]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"\" sourceRef=\"usertask2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_EmpSubProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"EmpSubProcess\" id=\"BPMNPlane_EmpSubProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"30\" y=\"200\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40\" width=\"40\" x=\"105\" y=\"198\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55\" width=\"105\" x=\"335\" y=\"138\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55\" width=\"105\" x=\"480\" y=\"138\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"625\" y=\"148\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55\" width=\"105\" x=\"340\" y=\"258\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"485\" y=\"268\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"65\" y=\"217\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"105\" y=\"218\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"125\" y=\"198\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125\" y=\"165\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"335\" y=\"165\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"440\" y=\"165\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"480\" y=\"165\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"585\" y=\"165\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"625\" y=\"165\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"125\" y=\"238\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"125\" y=\"285\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"340\" y=\"285\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"445\" y=\"285\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"485\" y=\"285\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('3',1,'org/jason/activiti/bpmn/RequestLeave/RequestLeaveProcess.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\0\0\0���\0\0&QIDATx���Ol����q�\n:>f���Z�XBڸ���o��T|��ݜBN�/�\".[Y��EZ��/�|1�P��?	��fwɮ���PB�m��m�2�����O���=��3~^/}���g�y��O���0y<�\0\0B\ZI�\0\0@wb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�Xbi4\Z���#�3>>~�ر���ԧ@Չu ��ԳLL]�|itttmm-�IPib�ĉ��;LNN�>)\0*M���o�?��S^���͛���+W�����oD�VK}R\0T�X��нr�ʧ7?5�,�[ߋ�\'@����@�X���_��#�^�>)\0*�,R��O��C�D`��歆�v�u���@ �X��H;�:@fa �B���H;�:@fa �B��0���?\Z������������_MMMe�,..�%��Y�����_�|H�Kni{\n���B�_7���^�\Z=��3R�����3g��O��@\Zfa*�<�K^2;R�X�@ק؃�: \n�~�H;���Y]]����2Ӌ��z��7H�,L�l��%�_g�[��vb�OF�!��B�ј��m���ǟz�_|����q���G�m[rzzzss3�N\0��,=m�)%�?�c0;R��?\Zi��u�666��P?~�ɋ��޼�k\\����N�>t�P��z�~���Ի��0�ӵ��I�;o����ȝ�ӧB�o\Zi�X�K�.e��թ���LoK��\'��[��Ν;�z��}b�r����k(��η��0�%?D�n��H;���h4��?s�T��^/���Y��ﯻPT�Y����s�[���_��B�B���H;��\0�����sy���zk��λ�����LNN��-`?������z׷�;�M��(��C�����.�S/��^~%_���B���Y����C,m7v]����;�\\f���q�X����֑����e��F���C���:xfa*�<���j���w�Kn��W���U#������:��Z���\r$֯]��_�ĉ�w�[fa*�kU7�=��|��cK���!�)��#��199�:�Ǐ?9�Ro��=�|k�����w�[fa �B���H;���mn~u�A������ּ���zG�=d����ҥK���U���1��ާ��yqq�u\'\'\'[����O���򹹹��c`_���}����\n���[^^n���F�!��Q~>;v�u��/�9^}����\'&&��;�?����j4\Zw�uW+2���z���d!�c�b������T뮗^~e�~q}���z���\0\0{�,��B-��{��?޺]~�g���H;�z�J�����o����c=�GP����euuu~~~�������#_��GF����B���w�������|��_@�=�o8ͬѧ��k�Z�Ғ���_��\'S�K��4ӷe����Z�w�/iG��H}�DWr>����n����l��=����J���h������z[���bvY�<�������{���nF�7;�|�vo)yƶ���-�q��&<[�+?���)��k��ԯ\\��̺�:lf��:{�l�����>��V�MMM�������u��B�W��+�uK���ޒm�t޵��-��<c��pD��*?�ggg[��ӧ��]��Z���x����Y��VVV&\'\'�^W`d����b��Y��݌ލ[���V^�m����n,Y��q��p�O�!Sr>?�쳭c��c?x�?s�Tk�333�����1WQ��2>>��	�����~�~���\0����Q�;�/Ӷ��q�D�����Z����^�~c������V����zG�=d�����s�Υ�\n�����(M؞˗��|�~���I;��sr�ʏa�b���Z^~q���_d=�8�����2==�z+��B���nFו�����z����[\\l�e:�V��}�m7�pD�����\\�0>|x�o���GZ�5�Ág������gϦ�\n�P���J�k+Ys�w����D�~K�O���^�����<zm+O}R�����j�Ϝ:5�R�ͷ������S�\"����ղ����l��\n�i(b�k:�j�]>i��X��XOkaa�u$k����xq}=��cǎ��9`ϙ���g`��w3�WX��-�3��<�s��Ֆ�۹�]�aϸ�c(�bbb�u0����o3�v���Ç�Umll��3`ϙ���ĉ��z*��/v?�Um�Β���-���o��v�����g�;;zb} .]�4::�G��［�R���Gy��j5�%*�,\\-����w\"�������h���ۻ.�Uq���VX�d��%{�kk{�o��vs$S�D6��4K�����7�|+��K��.Pf�jq�F�+T�\r������O��o6o}���|�y�ƭ��F3���`���[YY��_�}}��^~��7���ş��:T�Y�Z��z�_�Ab}m��o��e�g�����w��}����[�_}�L�y;b}/�������;K��\'�~��F���G��Z����1WK6���DV����������������/>�������?7�o��X�#�$<??_�պ~r�ȑ#���/J������u��\n���5�p��I���̷��y��[{t�ټ�I3���`��=�e���l�(�499��PYf�j�Kp�X�0d���m~��;�7o�C��F�����U���x�iS�ק��Ϝ9��t�8�p�x�%��b��ް�f�[?���{���7��}qx�;>��f�m���\0�����.�b�߇k�*�ŷ��y���Ͼ��l^i6�xg=���`�u�����u��\n��o�56n|u������f�W���w��o�v�X��,\\-^w	���:\\㗛�__k~r�j0�z���۱�y���F��?5�o��X��,\\-^w	���kd�~�O_�����0i6��W�������c3���`�u�����u��\n��s#��\0�����.�:t������l�k�\Z�ƹ�W�>)\0*�,\\-^w	nfff�\0j�{Z_����>)\0*M�UˈX\'����^�k�$VVVR�\0�&ݪeD�޹s����R7*#�ZZZJ}:\0T�t���\00<�[��u\0�!\"ݪE�\0�V-b\0`�H�j�\0\0CD�UK�^O�	\0\0�K�W������l���\0@_�zUd��������\'\'\'�:\0�P8���h4VVV��秧�\'�jjj*�eii�j��*���y�ӛ����u\0��p\0c=k�,�k�Z��Y�//���k���K/�r���333�������7v?K�5�:\0�P8P�~����A�FϢ<�^�7�z����������=�Y�z\0`X�X��g��~��׷���f�Z�رc�F#�^�R��\0\0C� �z��333sss����x���,[766R�� ���^\0�o�c=+��������z���l=�.]J�C��O��u\0���>�gffv_�y�f�~\0>���u\0�Ȇ;֟}���|��s,/�8==�z�ve����\0�\Z�X?�����\0K�5~�;s�L�ۡ���^\0�i�c=+��Ui����G<P��t��K/����c�׻�镫�;|��Ϟ^�\0�4�����2===�Ro��ǟ\\XXH���ӵ�k����H��Gg��J}�6�\0Ӱ�z�۽����\\?t�P�]܆�Roi��b��u\0���2ֳ�ݣRo�#G��;w.�����ԯ]����1r���;K=��}�#�^\0e(c}qqqvvvOc��S���������Җ�}��/J�[��g:{�ݟ��k����+�k��\0\0i\re�;v�̙3{\Z믾�z��	�����o��}�ݷ���u��k�t��{�R��\0\0e�OMM���A����<PO���F㮻�j���w���C�����U\Z��z����\0��Xߣ�6ǵ�7��M��m�;���{���5%���zI�oY�z\0 �����b��\Zr�F��Y���-�J�UY��1������������k_������>א�CA\0\0�4��>66�ޅ��iw������z������֚�{k��W��n˽�z헖��_ﺆ�y�gL{4\0\0*h(c}O/��\Z�?�����J��\'�\'�x\"����Rq�~z�����u�\0��P����l����x�ͷ�9�p?���Z�655U�����~d��׻��׾���{]�\0�5�����p���{\Z���=�㴻������X~��^���7�����]�����J\0 �����_������ѣGϞ=�zG����J�u�^�/���J\0 �������k�od9ۺH�P�����q�Ro��^�~8��Z�\0�2����������4[y�]ܞ�^�z=�b�+u\0���5��F�^ߋ��g�������Ի�m]{��7�z]�\0�5���YZZ�ѣ�z[�������{.(u\0���8�3?|���X�Y�>|8���{�s�����P�\0\0\rw�onn9rdP�Ҵu����wk����J\0 ������Z��忆��`��#����+�wh0��u�\0���z�v�>|��7��ͧ_��?0���O�+u\0��B�7o&ӓ\'���g��]��?�i�4�wb��{]�\0w@b�y�b�Y�?��X��N��Ϟ>[���\'�lM��{�W�+u\0��N��lll�8qbtt�<��x��[^x����2�=��K�.���=���J\0`(�Xoi4\Z+++�����SvKV�KKK����7s�{]�\0���tj����u�\00,�z�d�^�ו:\0����2;;�z\0\0�X����q\0��!ݪE�\0�V-b\0`�H�j�\0\0CD�U�X\0\"ҭZ�:\0��n�\"�\0��t��\00D�[��u\0�!\"ݪE�\0�V-b\0`�H�j�\0\0CD�U�X\0\"ҭZ�:\0��n�\"�\0��t��\00D�[��u\0�!\"ݪE�\0�V-b\0`�H�j���h4���\'&&FHg||�رc�O���n�2\"։-+�,S�*_\Z][[K}R\0T�t���Nl\'N�H��arr2�IPiҭZF�:��o�?��S^���͛���+W�����oD�VK}R\0T�t��Np��W�^���Fez�{���\0�4�p�x�%�<�?��#�ȿ�O\n�J3W��]�+��\'F�!�\"0W��]���歆�v�u�����u��\n����v�u�����u��\n��g#��\0�����.�b���v����h4VVV��秧�\'�jjj*�eqq�/����2�����.lk=���HA��2���D�Uu��d7�N!֯iǁ<�B�\Z=��)�e||�̙3Yӧ�^ \r�p��j��3���X�%�.�u���.>j�O4rgg�t�������BɎw}�~�h��{z��5#�(���.���NLL��+�U�^��>��	���%��/]��z+z�\Zʝ�Z���%O���m�����Zϖ��X���H;��^h4\Z���m�����SO���򋯾�z>N�|��ѣmKNOOonn��	`_���%{I8�|�(��.)����-�oۼ�z%N?�ӫȻ>E?+.�Nݼ�G#�8�\'XZmo�?�����Oo��5�\\��s�O:t(H�^>��e���������[�]I:w��·��ƶ{�6�H���m����n�W�u�����F�!��ҥKYg�Gujj�<�ے��ɧ���j�s�Υ�!`����evvvqq1�Vl�^�z~WI�=i���\n�m�^��-��|��vs��{t�������]	5\Z��{�Ϝ:�g��/�s��5d��B1Pf�j�J=���[�Sg�vfq�c���Wі����%_��R�,]�u%�{q +��7��>@333��\\^~q��\Zo�����hk=����w�f�jY[[K�=�To�����]��|���j�w���u7ˏF��v�X���v�,�����`��=��x��W�-,,��9`ϙ�+\'�1���ͽ���[ʻ�s��=i����t>i��Ȋ�q�X�l�mɩ��]�zk�_?t�Pث��b�����\'N�ފ�z�E�ֲ��獽��L�-���򽞷���d﵅��nx}�]5��>KKK��X��>���@b�����a�������+��h���I;{Ӻ-��u>��]7fˍ,����3@��|��{t�+F�q�ή$&\'\'[����\'R���o�vtt4�.{�,\\E����e1b��F�!�wos�+`�m�|<�@�����,\\Q�����)�,--��M��X�#��}*9�[�prrr��������Z+�����=��Y����}jj�o�f������¸�������-����v��~���ǎkݻ���t�W_{��򉉉$���p��={�^������;R�Ѹ뮻Z�q��w?��C�w%��#���(?����Zw���+����뭕g�x�\0�9�p�mnnf����ًJ���>��Y��{ｏ?�x�\nt���}�k#��}*9��6��λ��l�A���ו�g�f��_�\0�_���쳏�������e�-�����{���S��\0{��p`����y�Lߖe���Z�w�/iG��H}�DWr>����n����Z��{������/f�u�O<��wii)����\Z[.��2�/ܶ@��;o,Y�D?�m��\\a�^��R��s�?%^}�������_��Y�Z���,�>��V�MMM��������\n�Wmc��m{T��������s��eʟ�|#�߶?c��T��P(?�ggg[��ӧ��]��Z���x����Y�o+++���]/M]��:G�;�쮮k�2s�V[�t�F��l��V�L���G��VJ��g�}�u{����gN�j�|fff�w\Z�?fa ��B��K]������2%�����|H�+,ن^Ǥm��m=c�S�Clmm�uGGG�]�1�X��[+�~TH���2�\n�m���c��5�ܵ�����ٽn)��-����~Ȗ;R�#b}w��z�0./�8�R�/�����`3�B��w��7�,�����k�{�s�U�-��2�k+ߝ>��k�S��mnn�u><�7���#��NOO��E`o���@\n���9z��z�Q[��|m�o����{m@���ڌ-�y[�d�\'�ζG�>)����f~5�gN�\ZH����[�w����w�[fa ����-@�,�^w\r*�{-��v��Ż�|��%��YXXh�Z���k8^\\_���رc�w�sfa �BA^�Żz�n�b%k���^���eˍ�\\`�޶�^G��>��m��O��`bb�u0����o3�v���Ç�Umll��3`ϙ��@\nY����+I���\Z���׽�niݸ�o�X�������I����<�Iq\\�titt�u<��~��wwP�^�(/�Z�����z���`������Ż�IZ�Xۍ�]�]۩�c{=o�uݘ���k�K��m�^۹�.����\'���u~H����Iz�ͷ�O�dR��O��@ �|���\Z7�I����Ͽڝ�>o޸ռ�h&߼�>p+++���#����˯����}��ÕR�J1�b}m��o��e�g�����w��}����[�_}�L�y;b}/�������;K��\'�~��F���G��Zߧ_�j��@ �X���\Z�;�o~����}/���ϛ��\\�s3���`��=���9??_�պ~$�ȑ#���/J����@ �X���\Z�����l}�[��<����=��l^���|�v0���ʲ{vv�k�w���<w�\\�M�0�b���Ʒ��ﬧ޼���\Z����RV����m�M�^���>s�wӡ���@ _�z�aͬ�~p�����o|#�����v|��k��۶�!�\"0�b�߇k�*�ŷ��y���Ͼ��l^i6�xg=���`�u���@ �X���\Z7��hc�L�x���F��;��p�C�D`)����f��ך�ܾ\Z̷��v�o�l���|�O�䛷�!�\"0���p���/����_\\�/�f�V��_�����/l&߼��Y��?7���Y�СC�@\\]��f�]#�h4�忚\'�IPifa �����딳�j�{Z_����>)\0*M�������]�$������\0�4��r�ܹ���ԍ�ȡC����R�\0U\'�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@P�]D�����\0\0\0\0IEND�B`�');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('4',1,'org/jason/activiti/bpmn/RequestLeave/GroupLeaderSubProcess.bpmn20.xml','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://activiti.org/GroupLeaderSubProcess\">\n  <process id=\"GroupLeaderSubProcess\" name=\"部门经理请假子流程\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask3\" name=\"经理审批\" activiti:assignee=\"${userService.getLeader(user)}\"></userTask>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"\" sourceRef=\"startevent1\" targetRef=\"usertask3\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_GroupLeaderSubProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"GroupLeaderSubProcess\" id=\"BPMNPlane_GroupLeaderSubProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"200\" y=\"200\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55\" width=\"105\" x=\"360\" y=\"190\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"570\" y=\"200\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"465\" y=\"217\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"570\" y=\"217\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"235\" y=\"217\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"360\" y=\"217\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('5',1,'org/jason/activiti/bpmn/RequestLeave/GroupLeaderSubProcess.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0��X\0\0�IDATx���l��}�q���EZO�V��j�R�a����NZ�I[��*x��Z��\"UK�ij�M�i\rCӚ��Etk����SEd�Iƚ��\r�����u	4N	)\r�:�l���]r5�1>|���륏\"c�=��sy�o���2\0\0 �eE\0\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�MP�T{{{;;;���*�{�\n������}X\0hybX�ݻw�HM��s�Χ��9z�إ���9i��W`׮]�ׯO_���E\0Z�Xn���x___WW��7�_��d�ϩӧR��/�ɓ\'�>P\0�*�ܠT����ƥ���Z����Z�jll���@K��\r��뫖�{f�yz�Sk��vч��$ց�{��\'&+f!��/����_.���z�:аJ�R.��8161y�,dΝ��ʕ�9::Z���ňu�a}}}����Sݿ���N�ג�͛������C@��@�zzzv=�o?+���~�e�_�^�Ⱦw1{�bv����Ǟ�Ήw����o%{���{7{�����|����ͅ��;::�>t\0��4������&&��fٲe���T��d�����,��?h�m�����������Jvt2��w_�>�~~	ι�gJ�Rч�#�)L�R\Z\ZڴiSOOO�����{�������N�911y�6��߽�]�|�C�SW���\'��W�����Lf���읉��,ѧ�{�\Z���}/�����9���=Њ� ��i�,�JiAM��]�=���<�ē7>��ۛrp���~dL��>[����ٙ٥��� }��w_�������߼�GS٥j�x���]R#���*�|r�����ؾ}{j��?_���rpS���tvv�55E�����g����&-�{��-��*�����\\���٩w����&���ŋ�wݵlه�-+}���O���C/̸�\Z���t~H��/��k��r���?q��rp�lٲ%���{��n�O���Z�f͆\r<G5�ߩO�e0g.do���z/;x����G?�s?�����b���͸�\Z��\\����7���/~�K���.�ƍuuu͸eOO����Y9�Қ�������P�O��m�����%�AT�{�>����+W�Y?�^����X���������_��o��e�.f�^�r�}��͸�\Z��D�l0�	����c��9��:}&�I�/_>�)�����w`>Vr�J=�����7\\��WŤ팍��C\\���ɟ֧֠��ߙ�~z){��ā��V��\'?�������\'��Jv�b�r}߳�͸�\Z��,�<�:�������g��d߸��}K����p�;pMVr��ۻ�R��$&����nFpw~j�K���ˣ�#�����ȁ�������˯���#�s��_����G^~�G��aǽ��-<��zK�}�_��7o����Ν�L�^~ݿ�aY9�ז-[��ٳk�c===E��RW������?����`�~��3F�7E�����J\'��|����V�Ngggѻ07+9\Z���hb�����?�}���wnI�������\Z\ZZ�s����\'��om�֭E����(����5=֏�qbŊ���J�_>m\Z��x�R�zS�\'�ׯ/_��Y��A^j����^�����\nT��S���488X����M{SN&gϝ�_��,zf�r�����F/��Г�i}-z��j��e\Z��H�R����z�\'���Q�l[[[ѻ0���\\����e/�R�ͪU�\\p�(�X��it��b��J����zZ�>+V�k[����h��b``���/�Xx������w�V688x���Wc��it��u��Kg���[�~>����/g�Dc� 6lؾ}{�����g\\m-?G����wܱk׮�b=�?��Y�Y���|R���ի�w�k�r�����ǟx2�X?z�؊�w��U�Tn��Z�|�����?>���j���4:b}~�?��Y���<�-�|R�x���b� 9]�q��=w�T*�����%2jn����vm���˗�4��X��yu��6�tn���E\r\0��D.Ҋ���\0�sq�_����5�|��it�y�ި�u�w��c��8�Է_���*�J䢽���ÇoB�����;Ｓ�J=U)�FGG���Y�4:��5ϣ.�Uj����R*��:�����\"���\\�/��\n鳟�l����`���X?��Զ<���9o�����w��F~{W�1�o�G]�%�8��:}��q�Z��r�����Gw��5���?�jժ�w����믗J����r���ߟ*j�G�Q��<f����gV�_u��sF��{;�{������ԥ�J�~m۶��O^9|��񎎎�v`NVr�u������ٓ�X��3E��lhhh```΋^����y����=��b=�yu[�l���?~��\'o�\\�xoo�M�i��X9�EZk��r����յ{��wt��F��͝�6���AO�q�9o?�f�7����cч������mmmgϝo��d͚5���o��Q��X9�K�?c���`�.���w%g�ƚ;?K��8�C3n3�-�u��w������i��\"����1ڵ�&�O�YOf���pV��+a���#i�E���U-���ږgo�{귙������[���������]k�����+W6���{֮�m�����]���A^*�J�\\��j�i�^��|��ɢwq�F��>����{u�ϼٵ�8����3����T�w��C������WCx�榜O��?P<�����\03Y9�������yZ��S��c͝i}�;�医̸�Bޞ��y����cч��mݺ�v�K����x�رz�oذ������|ݳvms_]���õ/zϖ�j��i>(��ߞ�s�f�g֏ξc��\r��;���W����ً�m��4�N&�M��: &+�\Z_�jU�~����3iqM�sѻ��Us���δ��ꝳo3���o���ov����cccmmm��>���8��D��K��޽{��-��Y9����h���<V/�{֮}��\'��!r��9���\'ůs�9?�k�s��gT�X�/�u�`��n��$�����d�֭E��5Y9�FFFV�\\��ż�%�R\"�������&\Z\Z\Z�?���z}�t~X����[7�<�g��&_�f�ƍ�:}��ו~�Gj��)z\'x_5�`\Z��\\��������;%{:��~�]j��m����5�Ʃ��������S�T�:z�]�)�x��Gw�H���/��/���g��>j\Z��t���6m*�Js�,*}�������R�%X9���������ݳvmj��?�޳s�7�]�.�f��ό���)3S5ֿo\Z���tV���3�g���.�SX(+ŨT*CCCi}�_�a�?d�R�{��*�J.�05�=�Ј�\\��J:o��JGGǌ�J�\\���پ}�gӁ�c�\0\Z���׾35u�44b�FY9��uww����S�+f����o���}�\0h1bhؖ-[���+<[k�i�ι��\0-F�\rko�؅����e����������\0-F�7b�����B�_������@�����T*�����,{��?\'O�io������\Z\0�G�7htt����ѡ,1ךT�黚�{�Q���%�u��\r�^߲�O��3{��io/����E(\0Z�X�R����uv~b`�/O�|*�����\Z���ޮ����vч�&ց&ػwo_�,_�K��ﷶ��;z{�N�^�a��u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 (�\0\0A�u\0\0J�\0@Pb\0\0��\0\0�X\0���:\0\0%�\0 ���z��H�[L\0\0\0\0IEND�B`�');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('6',1,'org/jason/activiti/bpmn/RequestLeave/EmpSubProcess.png','1','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0��X\0\0(�IDATx���ol�a�q5]\nX\r�Vco�b/\" �$��W�:`�l\r���.� ��bi0�����3��3�k\rwk=aC6\r�M2��3msR-q�[ձ\Z��S5�Se�Ɩ���ɖe��Hڤ�����A������L�\"\0\0 Hio\0\0\0P�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X\0�@�u\0\0�X��U(���\'&&FGG���@���=~r�������J�ӒĔ��Д\\#���ⷽ�kJ_V�MV~Y�O#U�,/^���7���jKg��[8O�}>����X\\���ڟ#������ٶm[��������g�zn�\0���/����.�jj��r�U��|�Vnm�>��@/YYY���ccc\'_;yq��Q9N�y:���Y^^N{�~ʔ�ܔtJ��	�hpd����c�ѷ	���>P���V�|ȼOb=ξ���������F���#o޼yii)���ܔtP_�	�hzd�ng�]O�CTݭ�B�����%,�\'��������<?��֭���t]a�zn�\0:�/�F�Fp��訅o\Zٕ�Ջ���h��*��N���\r���cc����V�g?���v}ޔ��a�\0:k�mI.�(�>�^uτ6z�����v��W�=�P(d���N-���k�2Ν����o,,,��^�O@�m�:��F[7�]��M��_�z\Z�0�Mc��G�iSSS�|~u������5�ʥ�j����������F�S�q9MhEU��5/Wl�Mm%omI�>z+�I���;��(��r3��O�ﶱDѫ���W�o_���>���\'�y��/F�[��.D�މ{/��C/޳�S�GX*��#�###���F�S�q9MhEe��-ں�л���n7\'ܡ�[[����\r\r\r;�����҈��\\�����u1z\'��������ܖ;�\Z���|/Z*D\'֢������}8Ν?��dLY�t���6l�Т���	G�+�Z�����׸�Vn��Cգ_�#�����7ϜZ];W\Z�n�s)�p��Mk�����G��W~�����/�E�ٵ�����h%�{�b���ϑ��S�sS֊B�0;;�s��\\.7�����5SSS�T	��u��r���[�	�f�{��/[\\O�5�����#n\0�z;[��ע3�F/��+++���|�o�t��+��z9�X,§�}�jپ\Z)�M0e=7e��F�}�����}���M���A�\r�b��_y\\)�K��w���V���C��20�����\'�p[傇�<W�l_��cݔ�Ҕ5277�e˖��^)���q�����\r�b��]��T�y7z�l��{��c��Ї>�����\r7}p�~���y�Hղ}5ҎuS�KSV�P(����c����ffz���c��cccU���r+++i����^р�*��Jy�_�{9z�p�0������,���G>�K�|��/|埾�^���s�ʂ�柩Z��Fڱn�ziʪ,//WP���ϜX\\����h�~�̗��ݴiS�!��G���+@jByE�-~�_[�Qy��&���W�]�^?��ԋKÿ�я���q!�a!z�����w��g���n���ޚ�JKKKqg��{||<9ӫ�}ǎ���f2�����wHG�h�:���яm}�;/~qa��G�|��S/,�����֋������s�O>���珿�������;�#����3e=7ee�B����v������%����u\'�����+\Z�>���V����?��g܊����Z��Fڱn�zi��&&&��13��U�zi~����`i=���i����_р�Q,�3F�#�XO�蹑z����^�1����#��׶gϞtw\rXb�ŕ�����H9����^�����H����ǯ��K����M�69�:����X~��vGڱ��3�s#�X���.�u&�9�ک����s��燹��R�;`��u���{�hw���?=7ҍ����RU�{�g:R����K�Lq��\'֡_��F�#�XO�蹑┭���?_ީ���q���Қ�����A`��u�P��������T,�e�����3eiʦ���gn�l���{~|.���ɮ� �����K��7�x���Lխ�/��3elʶo�ީ��Ԏ�>QZ��-[���@h�:l�B��+��_����zk��b���hwt��L�������M?�h�c���bi��l�{;�F�ÆR>eD�\r7�p�]w���y���F��۟�0ei��\'m<�쑎�z<�����|p�W�����;w��D6��kS:CťK��vG��3e�2R��rǟX\\�F��ן�;�~��H��\\.��į�q���D��d�Z7�tS9rE�_�����Ǉi_3��#S���lhh�t�Kǎu#��7���?� ,//����Φ�-���i��b����?���˷���U������{V��֝��T{��v�禬ŉ�=6\\��-�m}�#�)+���/��o�)�ܩ֡����8p ~�w�\\�ݫ����d��ǳ����d\\������������3w��H��6�\\�T�zZߞ���W1�Z~����v*y^j�تiMG�S���K���{;�/;VZ���H�v�XO������h��=\\��o���TݏN]E!�&WB�5Z���k���͗��ɫ\r��:>emMk��0})NG�S�{����n��Ɏ���v�V>11���\"���֏��(u�G��^mw��*/[�e��˶xe��oi=U7%lv[�@oMY+Zu��\\w�ۚ�nLG�S���Pz2Ϟ;��Xߺuki��\ni� ���z��l�2??��V�/�����G�n.�Ty��5\\˕��&�|��W^���r�_�6�2���|�����#�)����53�PK�|���C<�W�zjfggs�\\�[A)��+�8J+�\\U�j�ޔ|���k�l�6��-_-��v�_딵8����-��t>e�����.w����o���Zo�o�zj���8��V�G�����FM�}����u����u�޿њ����˦�ʓ�CS��U��[���E��Ŕφ���])�CO>U~2�=����O��cyy9~5O{+�/�BZlkT.R�\\���B���W�o��}I�Sw�mmd+OBMY+�����}\Z��H*�����ٳ��\\e2�k?����r�o߾=�]֟XO�������t��Q�H��Or�7%���Mmݿ�F�qk��>	=4em�W�$V=�ugg��#�)+۲eKiO�ξ��fz������򪖗���3`����֟��={�����b��֨)��+�,�\'a��ltS�+��)a��zzh�Z�ӄ\'��M��u�����liiipp�ه�=r�~�S�R�d2~���_����託]����z������.U��v�6�z�����t��:��J�|yO��n��$z��_b��@�\n��9i#�/~��|����H7�S��^��zT��c���@��0?�h+�����:��P^��M6�����{���]�ݑv�����\'֣�I\Z\Z\Z�,�8�w���c�j��{����U�9n}�\r}.�W��������b�-펴c=�g��FP�O�s��L&S�3E�7ont��Ą�(�zE���������ݑv������6��|>_7�k�����$P�+Z?󽄍-�ɼ��s�/�hk���Ք�ܔ5U(����j�\n�l6�������h:P)�W��-��6�8^y囗/3�\Z)�k5e=7e\0�-�KX����~`���%���o\r\r��\Z�N@�I�t�u���ݻ\'\'�J��zk����|ޔ��Hw�\0:N2�C��������>�n����E�ő�����)롑�t�dL�X\';��~9z�he���_OL���\Z!L@gI�t�uRQ(FG?:?��Q���<��\r}xe�)�Ȕt�dL�X\'-##�,,�F�Q�ш�/N乹��=]W����2�����h~~>��ݻ�8��3j������ss���D��)�)�ɘ�N�\n���d~t�#SS���X1VV�kz��&&�r���r�ST͔�ܔt�dL�X\'sss���o��-�\n�mp�Ɖ����K{Z���J=1e\0�H2�c@�\0ЌdL�X\0�)ɘ�\0@S�1b\0��$c:�:\0\0MI�td�ٴ7\0�Љ��������ϴ7\0����Bavvv�Ν�\\n�\'����k���7d��;�u�֯�����A\0\0:%�X�=��L&gz��33=~���x��Gw�bbbppp˖-SSSimdǕJ��G.����u\0\0��G��#5n�8��fM��|j۶O�����ͭ��vVe���^\0 �z���ݻ��~��M3�r�Qg������:op�Ԗ�^\0 ���z�����mez���޽q�.//��6wJ�R��\0\0$X�X�K}˖-���W]��O���YZZZ����R��\0\04�N�>11q�^�ڸ�{��0���^\0�����ݻw_˧_j���C�\\n��\Z�^�z\0�Z]���G����t��K�{>�o߾no��h���:\0\0U��q�����������l����R��\0\0T�n�����r���zi�{�g������:����#��r�Љ�ź;r��3���_ۿ_�\0P���g��To����M����W�n�g2�����o���z����:\0\0���qhv��Kc�������ۅv%�zIU�W��^\0�Jc}jj*��w5�صkrr�{�Ж�R?{���M�~V��kK=����N�u\0\0������������X��q�voJ�����\Z�F?Q\Z_388X��G�{�n�?�ȣ�k��\0\0����>>>^���\'����.Ď?^*�o�qff��}���R��?���R�z\0��u1ֻt���q����q���B�p�uוz��믿��[����r�ƺ��b��u\0����XߴiS�ǯ�4��m,���L4���U�;�����)�[?�zB�7-u�\0П��CCC/;���P۳��ɱ��������Ro�ܔ�9�_����V���o��lq\r��}\0\0��X��I�Kc>��馛�m�+�wmaa!���ѣq��~�L�M�{��_����q�G���\0�.�z>��<kx7ơ\'�ڼys�v!*~Х��CCCw�}w����t�Z���Ro�ו:\0@�b��ٳ��{?��X��ض��ۅث����d��ǳ����dݏ�\'�z�R����z�+u\0����X_ZZ����>66v�����B������T���z��|�w��KuϿ^��J\0�ou1֣.����s���-��%��ި�K�~i���*{]�\0����zW?	�/~1^yW��]���m�\'�zi�����X�M�R\0 �v�\n�l6ۍ���E{������n�UH����S��u�\0@���zlzz��;����eu{=�7�z]�\0P�������<��R�ر���8m�a�Nm�\'���x��:\0\0U�#�WVV6o�ܩ�4-�����u��k���K��;�\0@�z�zlaa!��V~OgӖ���?�ȣ��ר�^W�\0\0TZ�X���:<<|�ɧ���/q��J�����J\0�*��Q��0q���q�9{������gi�s�;��^W�\0\0�Z�X��\'s�c��[���.�He���������3qѮ��vJr�+u\0\0�Z�X/Y^^���?~��q�מ)%�����;��m�\'���R��j��J\0�F҉��B�0;;��燇�~V|M\\����+++)nag���R\0 A��އ*{]�\0�L���R��X\\T�\0\0$�)�=��*u\0\0���t����7\0�Љ�tx�\0hB2�C�\0ДdL�X\0�)ɘ�\0@S�1b\0��$c:�:\0\0MI�t�u\0\0�����\0\04%�!�\0hJ2�C�\0ДdL�X\0�)ɘ�\0@S�1b\0��$c:�:\0\0MI�t�u\0\0�����\0\04%�!�\0hJ2�C�\0ДdL�X\0�)ɘ�N�\n����������h6��W���@.����ZYYI{Z\0�k�1b��8p �Ը�|���<��xqu�?G���3033�m۶�9��=���I�t�u±��������N�v���E�r�~�t��񓳼���DЏ$c:�:��K}dd�k��zq���h<��Û7o^ZZJ{�\0�;�1b�@���b��g$��>�u�o�=]\0�ɘ�N806v��Z�he|�s�k��Ӟ4\0��dL�X\'u�B!�;vjiu�]��q�����caa!���H�t�uR755���W��)����^�\'7�\\��Ʈ]999����G$c:�:���r3��OK���Dѫ���W�o_���>���\'�y��/F�[��.D�މ{/��C/޳�S�ws*��#�###iO\0}D2�C������cǞ[];_\Z���sQt�r��Z����(��?�ຟ�r[��jt�Bt�h��X���������8w�L&�I{�\0�#�1b��\r�y���ڹ҈�N�s)�p��Mk�����G��W~�����/�E�ٵ�����h%�{�b�����?�B�0;;�s��\\.7�����5SSS��s�~�������ly�_�_�μ]���;����헾������ׯ����b1�z���e�j��7n�8Л�����Ⱦ}��O{{hI��:^&��fI�����q%�/E�߉~x.Z���.�r����2���m�>�\\ղ}5�����-[�����%�l6���7��{���;�߆H����vy�>s�������E��}�C����7����?��X��#U���*������|���~�s33=~���ر������{�r�����w�$��������ѣio}��+�����#�ߋ>������/��M�����{Qt�B�΅+��jپ\Z�����r��{��̉�ŋ�k���7�|y��M�6Ub�Z�P�u�������\\�[A_�Cmm�G�Qjи��^�~t1z���S/.\r��G?�;��ƅ臅�Bt�B������Z��F ����wv����Ǔ3�*�w츿�l&����O{�\0�/�w�>��秦���\n�ZUp�~l��y����G�<���sǟza�?����^|忏��#�}���?�ŗ������q��Gs?�z�P�<����]-fz�x���3�||݉b\0��N*��ȴ���V���*ǧ?��V~6�>��j���阙y�*J�4?{dpp�����Ѵw�:���OCCCio}��g�vG�>;;{���+�Ï<Z^۞={��5\0j����S�u%�/�i�;R������9�k,��(~}ӦMN)\Z���={��w�}io��맍vG��>==]��Г���H��=w�|~/J\0��)\n~��c�\r�ݑn��������{?ӑR/����_Z���`�{@-�����9?�EZ���C�ݑb�����?_ީ���q���Қ�U (b=e;w����t���t�ߕ[��e����XO������[:[����hrr��;@[�z�����q����;~�x)�n��ƙ���[�z���<e۷o��I`j���(�|˖-��A\0�%փp���l6�s�Na��\n��u�]W*�믿��[o�<d[��펮�z���՗nz��G;�\'K+�_����\0�K��bee%���m2~?�/��(Q>�G�\r7�p�]w�N�y���F����I���I?{����vuh���o��c�|���_�K�N���SV����݈����~!ৼ(�Fv�M7�k/W7���B��#��n�l\r\r\r���رn�z&��\0��V�Lq��}�������[��~�*F�[_s�=�nm��uo��pu��֔���?~������7ϔV�T�\0A�a��꫙Lf||<��NNNV�q���o}4��F՝�.Rw��.W.U��ַ�|���U���z����Ү}y�ގ��Kǎ�V>22ҽ�]b6���٩�����`�-�F���Dv��5*�V�\'b=y�v��]ڗm�>��X`׮��\'&&���\0�E�C�*���R�e����\\w��l�-��ꦄ�n�Hk�J�?88x������֭[K+��UHk�%֡O]I��K����\\���n	k��+koM������p#�X�e������<��R/�d=��E�C�*��+�8J+�\\U�j�ޔ|��o�l�6��-_-��n�ONN�vgxx���?~����r���Zb�T1X��֨I��WR{���u�S����7Zs���~�t#[yR��������ص�#�~�ɧ�O�ѣGS�;\0j�u�S�`]lkT.R�\\���B���W�o�W�I�Sw�mmd+OB��gϞ�S��d���\'���}��tw\r�Zb�T1XO�5*)]�I@�����ֽ���W]�xd��R����\'!��l�Rڋ���巙�=w~xx��������j��\0�(���m�� ~����}o��F7���6��\'!����ˑ}��#WQ�\'_;U.�L&377��nPG��:@*�.֫.���U}����U������޻��ۺ�qj��k�=�T��/�={���C\0�Ļ���D�|����$֣�O*_(���Gm��w�Y���RY(�:�:+��w�vG8�M���Pey�ɾc��/;V��_޻wll���q���@�zסKjۢ�җ�o�_���H�:ˋ�}脭��]Kުv.��b�/��������ܹ3������y��F7MLL��R�����C���xU�G5�]{9�ʪG�{τ��[�W���r��ac�;F�#̿$qv������JFGG�����d\0Z��V���5�z�o\Z�x���4��>D+��x��\'�ɼ��s�/�hk���P(LOO��>22R��9���r�}��9��[�}ס�\Z�hݰN��b����RowU	���P��6��@F\\o����˗�m�\r���x�����@�먅nnz����E�zy\'�z�[�衛nφo����?��r�������7���Ҟ:\0����fu�ldW]���Zg��[��Xoe�Z�C�-oe��n��ݓ�w����5�q�|>����G6x��p�6��Fvӛj�������~W�4֓��ś��\riiiih���_�^4Z��o��Φ=u\0��\r�#D\r~L�����s�f7����:ud��o!�.�\'��y����F+�_��zbb<�I��l���\'R�$7�\0L�^o�n���+l��1Mwv�*\n������(z�H����>��r(�I��l���8w��E��=��z��i1�k���V%�A�m�X���sd䖅��(:j4\Zq������}5�����E���Fq�(��V{B�ֽO�U7���~5ݪ��ݶ�;��=�k~~>��ݻ�8��3j������ss���DЏ�%G��Bar2?:�����X^~,��++�5=�Wc��h|9�)�O�u��������ߴ�����81q[��iO\0}M�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��:\0\0J�\0@��?�,�;�?�\0\0\0\0IEND�B`�');
insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`) values ('7',1,'org/jason/activiti/bpmn/RequestLeave/RequestLeaveProcess.bpmn20.xml','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://activiti.org/ReauestLeaveProcess\">\n  <process id=\"RequestLeaveProcess\" name=\"请假流程\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <exclusiveGateway id=\"exclusivegateway1\" name=\"Exclusive Gateway\"></exclusiveGateway>\n    <callActivity id=\"callactivity1\" name=\"员工请假子流程\" calledElement=\"EmpSubProcess\"></callActivity>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <callActivity id=\"callactivity2\" name=\"部门主管请假子流程\" calledElement=\"GroupLeaderSubProcess\"></callActivity>\n    <endEvent id=\"endevent2\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow1\" name=\"\" sourceRef=\"startevent1\" targetRef=\"exclusivegateway1\"></sequenceFlow>\n    <sequenceFlow id=\"flow2\" name=\"员工请假\" sourceRef=\"exclusivegateway1\" targetRef=\"callactivity1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${isEmp}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow3\" name=\"部门主管请假子流程\" sourceRef=\"exclusivegateway1\" targetRef=\"callactivity2\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${!isEmp}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow4\" name=\"\" sourceRef=\"callactivity1\" targetRef=\"endevent1\"></sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"\" sourceRef=\"callactivity2\" targetRef=\"endevent2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_RequestLeaveProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"RequestLeaveProcess\" id=\"BPMNPlane_RequestLeaveProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"60\" y=\"203\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"exclusivegateway1\" id=\"BPMNShape_exclusivegateway1\">\n        <omgdc:Bounds height=\"40\" width=\"40\" x=\"145\" y=\"200\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"callactivity1\" id=\"BPMNShape_callactivity1\">\n        <omgdc:Bounds height=\"55\" width=\"135\" x=\"390\" y=\"140\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"630\" y=\"150\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"callactivity2\" id=\"BPMNShape_callactivity2\">\n        <omgdc:Bounds height=\"55\" width=\"135\" x=\"390\" y=\"260\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent2\" id=\"BPMNShape_endevent2\">\n        <omgdc:Bounds height=\"35\" width=\"35\" x=\"630\" y=\"270\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"95\" y=\"220\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"145\" y=\"220\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"165\" y=\"200\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"165\" y=\"167\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390\" y=\"167\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"165\" y=\"240\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"165\" y=\"287\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390\" y=\"287\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"525\" y=\"167\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"630\" y=\"167\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"525\" y=\"287\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"630\" y=\"287\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>');

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

insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('1001',1,'普通员工','01');
insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('1002',1,'部门主管','02');
insert  into `act_id_group`(`ID_`,`REV_`,`NAME_`,`TYPE_`) values ('1003',1,'经理','03');

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
