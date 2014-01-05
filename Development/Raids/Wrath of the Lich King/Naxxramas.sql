/* Copyright (C) 11 April 2011-2014 patch Project 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version. 
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public Licensefor more details.
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see <http://www.gnu.org/licenses/> 
 *
 * patch Project  Copyright (C) 11 April 2011-2014 patch Project 
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it
 * under certain conditions.
 */
 
  /* Raid Normal & Heroic for 10 & 25 people */
 /* Trash Mobs */
 
-- Bile Retcher
SET @ENTRY := 16018;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,3600,7000,13700,19700,11,27807,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bile Vomit'),
(@ENTRY,0,1,0,0,0,100,4,3600,7000,13700,19700,11,54326,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bile Vomit');

-- Bile Sludge
SET @ENTRY := 16142;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,7,0,15,0,0,11,27890,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Clone at 15% HP');

-- Bony Construct
SET @ENTRY := 16167;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,9000,20000,20000,30000,11,55319,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Brutal Swipe'),
(@ENTRY,0,1,0,0,0,100,4,9000,20000,20000,30000,11,55324,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Brutal Swipe');

-- Carrion Spinner
SET @ENTRY := 15975;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,2000,4500,9000,16000,11,28434,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Spider Web'),
(@ENTRY,0,1,0,0,0,100,2,5000,8000,14000,18000,11,30043,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Poison Spray'),
(@ENTRY,0,2,0,0,0,100,4,5000,8000,14000,18000,11,56032,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Poison Spray');

-- Crypt Guard
SET @ENTRY := 16573;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,6000,4000,7000,11,28969,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Acid Spit'),
(@ENTRY,0,1,0,0,0,100,4,4000,6000,4000,7000,11,56098,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Acid Spit'),
(@ENTRY,0,2,0,0,0,100,6,7000,9000,7000,9000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave'),
(@ENTRY,0,3,4,2,0,100,7,0,30,0,0,11,8269,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frenzy at 30% HP'),
(@ENTRY,0,4,0,61,0,100,7,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP');
-- NPC talk text insert
SET @ENTRY := 16573;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s goes into a frenzy!',16,0,100,0,0,0, 'combat Frenzy');

-- Crypt Reaver
SET @ENTRY := 15978;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,2000,4000,8000,12000,11,56605,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Virulent Poison'),
(@ENTRY,0,1,0,0,0,100,4,2000,4000,8000,12000,11,56624,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Virulent Poison'),
(@ENTRY,0,2,0,0,0,100,6,7000,9000,7000,9000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave'),
(@ENTRY,0,3,4,2,0,100,7,0,30,0,0,11,8269,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frenzy at 30% HP'),
(@ENTRY,0,4,0,61,0,100,7,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP');
-- NPC talk text insert
SET @ENTRY := 15978;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s goes into a frenzy!',16,0,100,0,0,0, 'combat Frenzy');

-- Dark Touched Warrior
SET @ENTRY := 16156;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,3000,9000,18000,19000,11,55266,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Whirlwind');

-- Death Knight
SET @ENTRY := 16146;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,1000,7000,10000,17000,11,55213,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Hysteria'),
(@ENTRY,0,1,0,0,0,100,2,1000,2000,8500,20500,11,55209,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Death Coil'),
(@ENTRY,0,2,0,0,0,100,4,1000,2000,8500,20500,11,55320,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Death Coil'),
(@ENTRY,0,3,0,0,0,50,6,16000,17000,28000,24000,11,55210,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Death Coil'),
(@ENTRY,0,4,0,2,0,100,7,0,20,0,0,11,55212,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Blood Presence at 20% HP');

-- Death Knight Captain
SET @ENTRY := 16145;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,2000,7000,8000,14000,11,55255,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Plague Strike'),
(@ENTRY,0,1,0,0,0,100,4,2000,7000,8000,14000,11,55321,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Plague Strike'),
(@ENTRY,0,2,0,0,0,100,7,3500,10000,0,0,11,28353,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Raise Dead'),
(@ENTRY,0,3,0,2,0,100,7,0,20,0,0,11,55222,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Unholy Presence at 20% HP');

-- Death Knight Cavalier
SET @ENTRY := 16163;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,2,0,50,4600,7300,11,55314,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Strangulate on Close'),
(@ENTRY,0,1,0,9,0,100,4,0,50,4600,7300,11,55334,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Strangulate on Close'),
(@ENTRY,0,2,0,0,0,100,2,1000,3000,4000,9000,11,55313,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Icy Touch'),
(@ENTRY,0,3,0,0,0,100,4,1000,3000,4000,9000,11,55331,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Icy Touch'),
(@ENTRY,0,4,0,0,0,100,2,5000,6000,16000,20000,11,55315,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bone Armor'),
(@ENTRY,0,5,0,0,0,100,4,5000,6000,16000,20000,11,55336,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bone Armor'),
(@ENTRY,0,6,0,2,0,100,7,0,30,0,0,11,55294,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Dismount Deathcharger at 30% HP');

-- Death Knight Understudy
SET @ENTRY := 16803;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,10000,18000,4000,7000,11,61696,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Blood Strike'),
(@ENTRY,0,1,0,0,0,100,6,8000,20000,30000,31000,11,29061,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bone Barrier'),
(@ENTRY,0,2,0,0,0,100,6,5000,15000,15000,25000,11,29060,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Taunt');

-- Deathcharger Steed
SET @ENTRY := 16067;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,11,55317,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Charge on Aggro');

-- Deathcharger Steed
SET @ENTRY := 29818;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,11,55317,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Charge on Aggro');

-- Dread Creeper
SET @ENTRY := 15974;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,2000,5000,8000,11000,11,28440,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Veil of Shadow'),
(@ENTRY,0,1,0,0,0,100,4,2000,5000,8000,11000,11,53803,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Veil of Shadow');

-- Embalming Slime
SET @ENTRY := 16024;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,1000,2000,2000,5000,11,28322,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Embalming Cloud');

-- Eye Stalk
SET @ENTRY := 16236;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,4,0,100,7,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,0,0,100,2,5000,7000,14000,17000,11,29407,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Mind Flay'),
(@ENTRY,0,3,0,0,0,100,4,5000,7000,14000,17000,11,54805,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Mind Flay');

-- Feugen
SET @ENTRY := 15930;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,20000,20000,20000,20000,11,54517,1,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Magnetic Pull'),
(@ENTRY,0,1,0,0,0,100,2,4000,4000,5000,7000,11,28135,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Static Field'),
(@ENTRY,0,2,0,0,0,100,4,4000,4000,5000,7000,11,54528,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Static Field');

-- Frenzied Bat
SET @ENTRY := 16036;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,1000,2000,11000,17000,11,54781,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frenzied Dive');

-- Guardian of Icecrown
SET @ENTRY := 16441;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,2000,3000,15000,23000,11,28470,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Blood Tap');

-- Infectious Ghoul
SET @ENTRY := 16244;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,3000,6000,9000,12000,11,29915,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Flesh Rot'),
(@ENTRY,0,1,0,0,0,100,4,3000,6000,9000,12000,11,54709,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Flesh Rot'),
(@ENTRY,0,2,0,0,0,100,2,8000,14000,19000,24000,11,54703,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend'),
(@ENTRY,0,3,0,0,0,100,4,8000,14000,19000,24000,11,54708,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend'),
(@ENTRY,0,4,5,2,0,100,7,0,30,0,0,11,54701,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frenzy at 30% HP'),
(@ENTRY,0,5,0,61,0,100,7,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP');
-- NPC talk text insert
SET @ENTRY := 16244;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s goes into a frenzy!',16,0,100,0,0,0, 'combat Frenzy');

-- Living Monstrosity
SET @ENTRY := 16021;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,7100,12500,18000,21000,11,28293,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Chain Lighting'),
(@ENTRY,0,1,0,0,0,100,4,7100,12500,18000,21000,11,54334,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Chain Lighting'),
(@ENTRY,0,2,0,0,0,100,6,6000,10000,17000,18500,11,28294,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Totem');
-- Lightning Totem
SET @ENTRY := 16385;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,1000,1000,2000,4800,11,28297,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shock'),
(@ENTRY,0,1,0,0,0,100,4,1000,1000,2000,4800,11,54333,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shock');

-- Mad Scientist
SET @ENTRY := 16020;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,7000,17000,6000,13000,11,28301,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Mana Burn'),
(@ENTRY,0,1,0,0,0,100,4,7000,17000,6000,13000,11,54338,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Mana Burn'),
(@ENTRY,0,2,0,2,0,100,2,0,30,18000,21000,11,28306,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Great Heal at 30% HP'),
(@ENTRY,0,3,0,2,0,100,4,0,30,18000,21000,11,54337,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Great Heal at 30% HP');

-- Maexxna Spiderling
SET @ENTRY := 17055;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,9000,5000,8000,11,54121,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Necrotic Poison'),
(@ENTRY,0,1,0,0,0,100,4,5000,9000,5000,8000,11,28776,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Necrotic Poison');

-- Marauding Geist
SET @ENTRY := 30083;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,11,56729,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frenzied Leap on Aggro');

-- Mutated Grub
SET @ENTRY := 16297;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,2000,5000,6000,8000,11,30109,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Slime Burst'),
(@ENTRY,0,1,0,0,0,100,4,2000,5000,6000,8000,11,54769,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Slime Burst');

-- Naxxramas Acolyte
SET @ENTRY := 15981;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,8000,13000,16000,11,56064,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt Volley'),
(@ENTRY,0,1,0,0,0,100,4,4000,8000,13000,16000,11,56065,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt Volley'),
(@ENTRY,0,2,0,0,0,100,2,9000,13000,14000,17000,11,56063,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Arcane Explosion'),
(@ENTRY,0,3,0,0,0,100,4,9000,13000,14000,17000,11,56067,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Arcane Explosion');

-- Naxxramas Cultist
SET @ENTRY := 15980;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,4000,7000,14000,17000,11,28447,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Burst'),
(@ENTRY,0,1,0,0,0,100,4,4000,7000,14000,17000,11,53851,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Burst');

-- Naxxramas Follower
SET @ENTRY := 16505;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,1000,1000,16000,21000,11,56107,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Berserker Charge'),
(@ENTRY,0,1,0,0,0,100,6,5000,7000,11000,15000,11,54093,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Silence');

-- Naxxramas Worshipper
SET @ENTRY := 16506;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4700,11,54095,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball'),
(@ENTRY,0,1,0,0,0,100,4,0,0,3400,4700,11,54096,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball'),
(@ENTRY,0,2,0,6,0,100,7,0,0,0,0,11,28732,3,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Widow\'s Embrace on Death');


















