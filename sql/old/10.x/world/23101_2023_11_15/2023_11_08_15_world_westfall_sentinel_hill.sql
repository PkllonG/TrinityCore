SET @OGUID := 3004981;

-- Gameobject templates
UPDATE `gameobject_template` SET `ContentTuningId`=425, `VerifiedBuild`=51886 WHERE `entry`=190047; -- Candy Bucket

UPDATE `gameobject_template_addon` SET `faction`=1732 WHERE `entry`=190047; -- Candy Bucket

-- Quests
UPDATE `quest_template` SET `Expansion`=9, `VerifiedBuild`=51886 WHERE `ID`=12340; -- Candy Bucket

UPDATE `quest_offer_reward` SET `VerifiedBuild`=51886 WHERE `ID`=12340;

DELETE FROM `gameobject_queststarter` WHERE `id`=190047;
INSERT INTO `gameobject_queststarter` (`id`, `quest`, `VerifiedBuild`) VALUES
(190047, 12340, 51886);

UPDATE `gameobject_questender` SET `VerifiedBuild`=51886 WHERE (`id`=190047 AND `quest`=12340);

DELETE FROM `game_event_gameobject_quest` WHERE `id`=190047;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+31;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 0, 40, 108, '0', 0, 0, -10476.693359375, 1020.1314697265625, 67.16107177734375, 1.745326757431030273, 0, 0, 0.766043663024902343, 0.642788589000701904, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+1, 180405, 0, 40, 108, '0', 0, 0, -10525.0126953125, 1030.70654296875, 67.16056060791015625, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+2, 180405, 0, 40, 108, '0', 0, 0, -10639.501953125, 1160.956787109375, 33.38550186157226562, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+3, 180405, 0, 40, 108, '0', 0, 0, -10640.5244140625, 1196.671875, 34.29291534423828125, 0.506144583225250244, 0, 0, 0.250379562377929687, 0.968147754669189453, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+4, 180406, 0, 40, 108, '0', 0, 0, -10501.6923828125, 1050.79150390625, 67.76177978515625, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+5, 180406, 0, 40, 108, '0', 0, 0, -10514.900390625, 1005.19390869140625, 67.157745361328125, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+6, 180406, 0, 40, 108, '0', 0, 0, -10624.70703125, 1030.9774169921875, 33.90174484252929687, 2.757613182067871093, 0, 0, 0.981626510620117187, 0.190812408924102783, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+7, 180406, 0, 40, 108, '0', 0, 0, -10656.189453125, 1174.5538330078125, 34.53944015502929687, 1.308995485305786132, 0, 0, 0.608760833740234375, 0.793353796005249023, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+8, 180407, 0, 40, 108, '0', 0, 0, -10491.6494140625, 1002.1875, 67.1604766845703125, 0.785396754741668701, 0, 0, 0.38268280029296875, 0.923879802227020263, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+9, 180407, 0, 40, 108, '0', 0, 0, -10486.7607421875, 1045.7017822265625, 67.160064697265625, 2.932138919830322265, 0, 0, 0.994521141052246093, 0.104535527527332305, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+10, 180407, 0, 40, 108, '0', 0, 0, -10517.62109375, 1044.56103515625, 67.76180267333984375, 4.258606910705566406, 0, 0, -0.84804725646972656, 0.529920578002929687, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+11, 180407, 0, 40, 108, '0', 0, 0, -10634.6142578125, 1182.578125, 34.16083145141601562, 4.363324165344238281, 0, 0, -0.81915187835693359, 0.573576688766479492, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+12, 180410, 0, 40, 108, '0', 0, 0, -10647.5830078125, 1189.8697509765625, 35.56537246704101562, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281, 120, 255, 1, 51886), -- G_HangingSkeleton_01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+13, 180411, 0, 40, 108, '0', 0, 0, -10647.40625, 1175.6129150390625, 38.84251785278320312, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+14, 180471, 0, 40, 108, '0', 0, 0, -10645.353515625, 1162.157958984375, 40.413787841796875, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+15, 180471, 0, 40, 108, '0', 0, 0, -10660.794921875, 1172.890625, 40.15880203247070312, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+16, 180471, 0, 40, 108, '0', 0, 0, -10637.6806640625, 1172.1666259765625, 40.06348037719726562, 0.820303261280059814, 0, 0, 0.398748397827148437, 0.917060375213623046, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+17, 180471, 0, 40, 108, '0', 0, 0, -10644.826171875, 1193.8160400390625, 40.01134109497070312, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+18, 180471, 0, 40, 108, '0', 0, 0, -10652.609375, 1183.5572509765625, 39.98427581787109375, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+19, 180472, 0, 40, 108, '0', 0, 0, -10649.798828125, 1156.8836669921875, 41.56014633178710937, 4.852017402648925781, 0, 0, -0.65605831146240234, 0.754710197448730468, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+20, 180472, 0, 40, 108, '0', 0, 0, -10657.1982421875, 1162.357666015625, 45.62991714477539062, 4.276057243347167968, 0, 0, -0.84339141845703125, 0.537299633026123046, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+21, 180472, 0, 40, 108, '0', 0, 0, -10664.720703125, 1168.04345703125, 41.38816070556640625, 3.45575571060180664, 0, 0, -0.98768806457519531, 0.156436234712600708, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+22, 180472, 0, 40, 108, '0', 0, 0, -10641.3193359375, 1167.3004150390625, 41.10222625732421875, 5.70722818374633789, 0, 0, -0.28401470184326171, 0.958819925785064697, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+23, 180472, 0, 40, 108, '0', 0, 0, -10632.7255859375, 1194.3316650390625, 45.622283935546875, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.84804844856262207, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+24, 180472, 0, 40, 108, '0', 0, 0, -10633.607421875, 1177.5572509765625, 41.22088241577148437, 5.881760597229003906, 0, 0, -0.19936752319335937, 0.979924798011779785, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+25, 180472, 0, 40, 108, '0', 0, 0, -10648.705078125, 1188.671875, 41.30103683471679687, 2.844882726669311523, 0, 0, 0.989015579223632812, 0.147811368107795715, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+26, 180472, 0, 40, 108, '0', 0, 0, -10656.7119140625, 1178.8333740234375, 41.57691574096679687, 2.478367090225219726, 0, 0, 0.94551849365234375, 0.325568377971649169, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+27, 180472, 0, 40, 108, '0', 0, 0, -10640.5087890625, 1199.9427490234375, 41.27355194091796875, 1.867502212524414062, 0, 0, 0.803856849670410156, 0.594822824001312255, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+28, 180523, 0, 40, 108, '0', 0, 0, -10645.544921875, 1176.8853759765625, 34.77727890014648437, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 120, 255, 1, 51886), -- Apple Bob (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+29, 180523, 0, 40, 108, '0', 226, 0, -10492.2587890625, 1029.0989990234375, 61.01253128051757812, 0.139624491333961486, 0, 0, 0.06975555419921875, 0.997564136981964111, 120, 255, 1, 51886), -- Apple Bob (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+30, 190047, 0, 40, 108, '0', 0, 0, -10653.9111328125, 1164.7625732421875, 34.47375106811523437, 1.500982880592346191, 0, 0, 0.681998252868652343, 0.731353819370269775, 120, 255, 1, 51886), -- Candy Bucket (Area: Sentinel Hill - Difficulty: 0) CreateObject1
(@OGUID+31, 190047, 0, 40, 108, '0', 226, 0, -10504.0908203125, 1028.2274169921875, 60.52341842651367187, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689, 120, 255, 1, 51886); -- Candy Bucket (Area: Sentinel Hill - Difficulty: 0) CreateObject1

UPDATE `gameobject` SET `phaseUseFlags`=1 WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+27;

-- Event spawns
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+31;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31);
