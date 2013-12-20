/* Copyright (C) 11 April 2011-2013 patch Project 
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
 * patch Project  Copyright (C) 11 April 2011 patch Project 
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it
 * under certain conditions.
 */
 
  /* Raid Normal & Heroic for 10 & 25 people */
 /* Trash Mobs */
 
-- Ancient Skeletal Soldier
SET @ENTRY := 37012;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,31,0,0,0,0,11,69127,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Chill of the Throne on Spawn'),
(@ENTRY,0,1,0,0,0,100,30,5000,7000,8000,9000,11,70964,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shield Bash');

-- Argent Champion
SET @ENTRY := 37928;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,30,8,40,13600,14500,11,53625,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Heroic Leap on Close');

-- Blighted Abomination
SET @ENTRY := 37022;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,31,0,0,0,0,11,69127,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Chill of the Throne on Spawn'),
(@ENTRY,0,1,0,4,0,100,31,0,0,0,0,11,71140,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Scourge Hook on Aggro'),
(@ENTRY,0,2,0,9,0,100,30,0,5,3000,5000,11,40504,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Cleave on Close'),
(@ENTRY,0,3,0,0,0,100,30,5000,11000,24000,32000,11,71150,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Plague Cloud');

-- Blood Beast
SET @ENTRY := 38508;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,31,0,0,0,0,11,72723,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Resistant Skin on Spawn'),
(@ENTRY,0,1,0,4,0,100,31,0,0,0,0,11,72176,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Blood Link on Aggro');

-- Chosen Zealot
SET @ENTRY := 32175;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,30,0,5,9000,12000,11,13445,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend on Close'),
(@ENTRY,0,1,0,0,0,100,30,4000,4500,18000,25000,11,12530,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frailty');

-- Cultist Shard Watcher <Cult of the Damned>
SET @ENTRY := 32349;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,31,0,0,0,0,11,69127,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Chill of the Throne on Spawn'),
(@ENTRY,0,1,0,0,0,100,30,5000,6000,12000,15000,11,39175,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shadow Bolt Volley'),
(@ENTRY,0,2,0,0,0,100,30,4000,4000,17000,18000,11,34441,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Word: Pain'),
(@ENTRY,0,3,0,0,0,100,30,7000,11000,20000,28000,11,31117,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Unstable Affliction'),
(@ENTRY,0,4,0,1,0,100,31,1000,1000,1000,1000,11,51733,2,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Shadow Aura on Spawn');

-- Darkfallen Advisor
SET @ENTRY := 37571;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,31,0,0,0,0,11,69127,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Chill of the Throne on Spawn'),
(@ENTRY,0,1,0,0,0,100,30,5000,9000,6000,11000,11,72057,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Lich Slap'),
(@ENTRY,0,2,0,16,0,100,30,72066,40,10000,20000,11,72066,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Shroud of Spell Warding on Friendlies Missing Buff'),
(@ENTRY,0,3,0,16,0,100,30,72065,50,10000,20000,11,72065,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Shroud of Protection on Friendlies Missing Buff');

-- Darkfallen Archmage <The San'layn>
SET @ENTRY := 37664;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,31,0,0,0,0,11,69127,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Chill of the Throne on Spawn'),
(@ENTRY,0,1,0,0,0,100,10,0,0,9000,13000,11,70409,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball'),
(@ENTRY,0,2,0,0,0,100,20,0,0,9000,13000,11,71153,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fireball'),
(@ENTRY,0,3,0,9,0,100,10,0,8,7000,11000,11,70407,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Blast Wave on Close'),
(@ENTRY,0,4,0,9,0,100,20,0,8,7000,11000,11,70407,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Blast Wave on Close'),
(@ENTRY,0,5,0,0,0,100,10,5000,12000,25000,35000,11,70408,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Amplify Magic'),
(@ENTRY,0,6,0,0,0,100,20,5000,12000,25000,35000,11,72336,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Amplify Magic'),
(@ENTRY,0,7,0,0,0,100,30,10000,16000,15000,21000,11,70410,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Polymorph: Spider');

-- Darkfallen Blood Knight <The San'layn>
SET @ENTRY := 37595;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,31,0,0,0,0,11,69127,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Chill of the Throne on Spawn'),
(@ENTRY,0,1,0,4,0,100,31,0,0,0,0,11,71736,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Vampiric Aura on Aggro'),
(@ENTRY,0,2,0,9,0,100,30,0,5,3000,6000,11,70437,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Unholy Strike on Close'),
(@ENTRY,0,3,0,0,0,100,30,8000,13000,8000,14000,11,70450,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Blood Mirror');

-- Darkfallen Commander <The San'layn>
SET @ENTRY := 37662;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,31,0,0,0,0,11,69127,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Chill of the Throne on Spawn'),
(@ENTRY,0,1,0,4,0,100,31,0,0,0,0,11,70750,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Battle Shout on Aggro'),
(@ENTRY,0,2,0,0,0,100,10,2000,5000,12000,17000,11,70449,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Vampire Rush'),
(@ENTRY,0,3,0,0,0,100,20,2000,5000,12000,17000,11,71155,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Vampire Rush');





























 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 