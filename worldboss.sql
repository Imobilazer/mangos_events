set names utf8;
-- Собственно сам NPC
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `PowerType`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `vehicle_id`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(80000, 0, 0, 0, 0, 0, 23459, 0, 0, 0, 'Imobilazer', 'Noobs Killer', NULL, 0, 85, 85, 80000000, 80000000, 0, 10000000, 10000000, 0, 7, 7, 0, 2, 2.28286, 3, 3, 550, 730, 0, 75, 39, 2000, 5000, 8, 0, 0, 0, 0, 0, 0, 0, 540, 780, 59, 3, 0, 39168, 0, 0, 0, 0, 0, 0, 0, 0, 38850, 41390, 29963, 41058, 0, 0, 0, 0, 0, 10000000, 15000000, 'EventAI', 3, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 50000, 0, 0, 578822495, 0, '');

-- Экипировка NPC
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES
(50000, 49623, 50729, 0);

-- Его локализация
INSERT INTO `locales_creature` (`entry`, `name_loc1`, `name_loc2`, `name_loc3`, `name_loc4`, `name_loc5`, `name_loc6`, `name_loc7`, `name_loc8`, `subname_loc1`, `subname_loc2`, `subname_loc3`, `subname_loc4`, `subname_loc5`, `subname_loc6`, `subname_loc7`, `subname_loc8`) VALUES
(80000, '', '', '', '', '', '', '', 'Имобилазер', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Убийца Нубов');

-- Установка в мире
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(954704, 80000, 0, 1, 1, 0, 50000, -9117.24, 313.903, 93.0357, 1.73607, 7200, 0, 0, 80000000, 10000000, 0, 2);

-- Вейпоинты
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(80000, 1, -9115.18, 310.081, 93.1975, 60000, 0, 2000005281, 0, 0, 0, 0, 333, 0, 0, 1.77846, 0, 0),
(80000, 2, -9125.28, 350.698, 93.7808, 10000, 0, 2000005282, 0, 0, 0, 0, 53, 0, 0, 1.77846, 0, 0);

-- Фразы вейпоинтов
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(2000005281, 'Жалкие неудачники... Неужели совсем нет смельчаков? Нападайте, чтобы познать весь ужас вселенной!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Жалкие неудачники... Неужели совсем нет смельчаков? Нападайте, чтобы познать весь ужас вселенной!'),
(2000005282, 'Трепещите, смертные! Я бросаю вам вызов и вы познаете всю мою мощь! Готовьтесь!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Трепещите, смертные! Я бросаю вам вызов и вы познаете всю мою мощь! Готовьтесь!');

-- Скрипты NPC
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(80000100, 80000, 4, 0, 100, 0, 0, 0, 0, 0, 1, -352000, 0, 0, 21, 1, 0, 0, 22, 0, 0, 0, 'Имобилазер аггро'),
(80000101, 80000, 2, 0, 100, 0, 20, 10, 0, 0, 1, 0, -352001, 0, 3, 0, 28345, 0, 22, 1, 0, 0, 'Крик и морфа Имобилазер'),
(80000102, 80000, 0, 2, 100, 1, 40000, 420000, 400000, 420000, 11, 38850, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер фаза 1- Оглушающий рев'),
(80000103, 80000, 0, 2, 100, 1, 45000, 50000, 45000, 50000, 11, 72172, 1, 0, 1, -352003, 0, 0, 0, 0, 0, 0, 'Имобилазер фаза 1 - Призыв кровавых чудовищ'),
(80000104, 80000, 0, 2, 100, 1, 30000, 40000, 30000, 40000, 11, 73020, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер фаза 1 - Губительный газ'),
(80000105, 80000, 0, 2, 100, 1, 40000, 100000, 120000, 140000, 11, 29963, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер фаза 1 - Массовая овца'),
(80001100, 80000, 0, 1, 100, 1, 35000, 45000, 35000, 45000, 11, 29973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер фаза 2 - Чародейский взрыв'),
(80001101, 80000, 0, 1, 100, 1, 10000, 11000, 10000, 11000, 11, 45122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер фаза 2 - Удар хвостом'),
(80001102, 80000, 0, 1, 100, 1, 8000, 9000, 8000, 9000, 11, 70814, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер фаза 2 - Костерез'),
(80001103, 80000, 0, 1, 100, 1, 20000, 25000, 20000, 25000, 11, 74525, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер фаза 2 - Огненное дыхание'),
(80001104, 80000, 7, 1, 100, 1, 0, 0, 0, 0, 3, 80000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер - Возращение в форму после выхода из боя'),
(80001105, 80000, 6, 1, 100, 1, 0, 0, 0, 0, 1, -352002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Имобилазер - Смерь');

-- Тексты скриптов
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-352003, 'Помогите мне, монстряшки!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Помогите мне, монстряшки!', 0, 1, 0, 0, 'Bмобилазер фаза 1 - призыв чудовищ'),
(-352002, 'Невозможно.. Вы победили.. Но я еще вернусь....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Невозможно.. Вы победили.. Но я еще вернусь....', 0, 0, 0, 0, 'Имобилазер - смерть'),
(-352001, 'Вам меня не одолеть, познайте всо мою мощь!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вам меня не одолеть, познайте всо мою мощь!!!', 0, 1, 0, 0, 'Имобилазер смена фазы'),
(-352000, 'Неужели нашлись смельчаки? Ну что ж! Умрите, несчастные черви! Ха-ха-ха!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Неужели нашлись смельчаки? Ну что ж! Умрите, несчастные черви! Ха-ха-ха!', 0, 1, 0, 11, 'Имобилазер аггро');

-- Создание эвента
REPLACE INTO `mangos`.`game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES ('110', '2011-12-10 00:20:00', '2099-01-01 23:59:59', '10080', '90', '0', 'WorldBoss by Imobi');
REPLACE INTO `mangos`.`game_event_creature` (`guid`, `event`) VALUES ('954704', '110');

-- Лут стоит с Короля-лича 25 героик
-- by Imobilazer