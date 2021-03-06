set names utf8;

-- Создание NPC, выдающего первый и принимающего последний квест
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `PowerType`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `vehicle_id`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES ('131', '0', '0', '0', '0', '0', '23459', '0', '0', '0', 'Джек', 'Эвент "Ориентирование"', NULL, '0', '85', '85', '9000', '9000', '0', '0', '0', '100000', '35', '35', '2', '1', '1.14286', '1', '3', '30000', '80000', '0', '1000', '1', '2000', '1500', '0', '0', '0', '0', '0', '0', '0', '0', '40000', '9000', '2000', '7', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '2', '3', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '');

-- Установка NPC
DELETE FROM `creature` WHERE `id`=131;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(456402, 131, 571, 1, 65534, 0, 0, 5808.57, 559.564, 650.353, 1.10593, 7600, 5, 0, 9000, 0, 0, 2);

-- Маршрут NPC
DELETE FROM `creature_movement` WHERE `id`=456402;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(456402, 1, 5765.8, 592.913, 650.158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456515, 2.47645, 0, 0),
(456402, 2, 5721.02, 628.082, 646.543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456516, 2.52358, 0, 0),
(456402, 3, 5735.39, 648.98, 646.319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456517, 0.940997, 0, 0),
(456402, 4, 5756.86, 681.901, 642.244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456518, 0.97634, 0, 0),
(456402, 5, 5788.8, 716.81, 640.769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456519, 0.72894, 0, 0),
(456402, 6, 5818.14, 712.361, 641.255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456520, 6.07358, 0, 0),
(456402, 7, 5854.27, 685.479, 642.904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456521, 5.6259, 0, 0),
(456402, 8, 5875.79, 668.871, 643.763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456522, 5.62197, 0, 0),
(456402, 9, 5876.73, 643.153, 646.136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456523, 4.72269, 0, 0),
(456402, 10, 5853, 610.224, 650.691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456524, 4.05511, 0, 0),
(456402, 11, 5813.55, 560.519, 650.319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4456525, 4.02762, 0, 0);

-- Создание сундуков
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `mingold`, `maxgold`, `ScriptName`) VALUES
(500001, 2, 1, 'Потеряный сундук', '', 'Открытие', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(500002, 2, 1, 'Похищеный сундук', '', 'Открытие', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(500003, 2, 1, 'Украденый сундук', '', 'Открытие', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(500004, 2, 1, 'Старый сундук', '', 'Открытие', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(500005, 2, 1, 'Древний сундук', '', 'Открытие', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Установка сундуков
DELETE FROM `gameobject` WHERE `id` IN (500001, 500002, 500003, 500004, 500005);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(199567, 500001, 571, 1, 1, -44.2636, -3438.89, 4.16462, 4.97783, 0, 0, 0.607317, -0.794459, 25, 255, 1),
(199568, 500002, 0, 1, 1, -9066.26, 390.79, 103.622, 4.36308, 0, 0, 0.819221, -0.573478, 25, 255, 1),
(199569, 500003, 1, 1, 1, 1379.61, -4320.16, 36.0548, 3.23342, 0, 0, 0.998946, -0.0458999, 25, 255, 1),
(199570, 500004, 530, 1, 1, 1996.73, 3136.02, -164.655, 5.6994, 0, 0, 0.287765, -0.957701, 25, 255, 1),
(199571, 500005, 530, 1, 1, 11707, -7634.18, -42.8191, 1.16089, 0, 0, 0.548396, 0.836219, 25, 255, 1);

-- Создание квестов
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `MinLevel`, `QuestLevel`, `Type`, `RequiredClasses`, `RequiredRaces`, `RequiredSkill`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES
(30001, 2, 4395, 1, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Первый поиск', 'Приветствую. $N! $B\r\nРешил поучавствовать в состязании? Ну что ж, попробуй, у тебя есть все шансы.$B\r\nДля начала попробуй найти первый сундук, который охраняет "Безумный" моб, с которым ты возможно и справишья сам. Он находится на юго-западе Ревущего Фьерда, думаю тебе стоит присмотреться к островам.', 'Найти первый сундук', 'Молодец, первый шаг сделан. Но он только первый.', NULL, NULL, NULL, 'Найти очередной сундук', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30002, 2, 4395, 1, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30001, 0, 0, 0, 0, 0, 0, 0, 'На страже Штормграда', 'Отлично, $N! $B\r\nПриступим к следующему квесту.$B\r\nЭтот шаг будет прост для Альянса, однако Орде я бы не советовал делать в одиночку. Сечас тебе надо будет изучит территорию около входа в Штормград', 'Найти сундук', 'Все таки у тебя есть шанс.', NULL, NULL, NULL, 'Найти очередной сундук', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30003, 2, 4395, 1, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30002, 0, 0, 0, 0, 0, 0, 0, 'Экскурсия к Оргриммару', 'Ты сделал это $N! $B\r\nЧто же ждет нас дальше?$B\r\nНа этот раз придется постараться воинам Альянса, главное не ходить в одиночку. Предстоит прогулка к Оргриммару', 'Найти сундук', 'Неплохо, $C.', NULL, NULL, NULL, 'Найти очередной сундук', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30004, 2, 4395, 1, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30003, 0, 0, 0, 0, 0, 0, 0, 'Далекие дали', 'Следующий шаг, $N! $B\r\nЯ конечно понимаю, что ты играешь мало.$B\r\nОднако есть такая зона, как Пустоверть. Если пройти на юге локации, то можно кое-что найти.', 'Найти сундук', 'И снова ты это сделал, $C.', NULL, NULL, NULL, 'Найти очередной сундук', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30005, 2, 4395, 1, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30004, 0, 0, 0, 0, 0, 0, 0, 'Бермудский треугольник', 'Продолжим, $N! $B\r\nНа этот раз тебе придется посетить остров КельДанас.$B\r\nДа-да, есть такой остров. Правда когда я нёс очередной сундук, он вывалился у меня из рук, и упал с каким-то странным плюханьем где-то на юго-востоке локации', 'Найти сундук', 'Победа близка, $C.', NULL, NULL, NULL, 'Найти очередной сундук', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30006, 2, 4395, 1, 0, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 30005, 0, 0, 0, 0, 0, 0, 0, 'Последний рывок', 'Ты почти победил, $N! $B\r\nОсталось только вернуться первым и сдать квест. Я верю, ты сможешь :)', 'Выполнить все задания ивента', 'Поздравляю, $C.', NULL, NULL, NULL, 'Поговорить с Джеком', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45047, 38301, 33223, 39769, 39656, 52256, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15000);

-- Установка ограничения по времени прохождения квеста
update `quest_template` set `QuestFlags`='32768',`limitTime`=3600 where `entry` in (30001,30002,30003,30004,30005,30006);

-- Обновление наград
update `quest_template` set `CharTitleId`=0, `rewchoiceitemId4`= 39656,`rewchoiceitemId5`=0, `rewchoiceitemcount5`=0 where `entry`=30006;

-- Деспавн NPC и объявление победителя после сдачи квеста
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES ('15000', '0', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('15000', '0', '0', '6', '131', '30', '0', '0', '2000006001', '0', '0', '0', '0', '0', '0', '0', '');

-- Текст объявления
REPLACE INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000006001, 'Внимание! Победитель эвента Ориентирование - $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Установка квестгиверов и квесттейкеров
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES ('131', '30001');
REPLACE INTO `gameobject_questrelation` (`id`, `quest`) VALUES ('500001', '30002'), ('500002', '30003'), ('500003', '30004'), ('500004', '30005'), ('500005', '30006');
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('131', '30006');
REPLACE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES ('500001', '30001'), ('500002', '30002'), ('500003', '30003'), ('500004', '30004'), ('500005', '30005');

-- Создание эвента
REPLACE INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES ('202', '2011-12-10 15:00:00', '2020-01-01 00:17:00', '10080', '180', '0', 'Orientation by Imobi');
DELETE FROM `game_event_creature` WHERE `event`=202;
REPLACE INTO `game_event_creature` (`guid`, `event`) VALUES ('456402', '202');
DELETE FROM `game_event_gameobject` WHERE `event`=202;
REPLACE INTO `game_event_gameobject` (`guid`, `event`) VALUES ('199567', '202'), ('199568', '202'), ('199569', '202'), ('199570', '202'), ('199571', '202');

-- by Imobilazer. Modify by Sar.