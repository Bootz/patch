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
 
  /* Raid Normal for 10 & 25 people */
 /* Trash Mobs */
 
-- Ancient Rune Giant
SET @ENTRY := 32873;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,8000,9000,18000,25000,11,62526,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Rune Detonation'),
(@ENTRY,0,1,0,4,0,100,7,0,0,0,0,11,62942,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Runic Fortification on Aggro'),
(@ENTRY,0,2,0,0,0,100,2,4000,4500,15000,17000,11,62411,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Stomp'),
(@ENTRY,0,3,0,0,0,100,4,4000,4500,15000,17000,11,62413,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Stomp');

-- Arachnopod Destroyer
SET @ENTRY := 34183;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,11,64779,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Charged Leap on Aggro'),
(@ENTRY,0,1,0,0,0,100,6,7000,9000,17500,22500,11,64717,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Flame Spray'),
(@ENTRY,0,2,0,0,0,100,6,5000,5000,14000,16000,11,64776,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Machine Gun');

-- Captured Mercenary Captain
SET @ENTRY := 32908;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,2000,4500,12000,13500,11,62317,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Devastate'),
(@ENTRY,0,1,0,0,0,100,6,6000,8000,10000,17000,11,62444,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Heroic Strike'),
(@ENTRY,0,2,0,0,0,100,6,3000,7000,11000,18000,11,57807,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Sunder Armor');

-- Captured Mercenary Captain
SET @ENTRY := 32907;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,2000,4500,12000,13500,11,62317,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Devastate'),
(@ENTRY,0,1,0,0,0,100,6,6000,8000,10000,17000,11,62444,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Heroic Strike'),
(@ENTRY,0,2,0,0,0,100,6,3000,7000,11000,18000,11,57807,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Sunder Armor');

-- Captured Mercenary Soldier
SET @ENTRY := 32885;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,6000,6000,17000,20000,11,62318,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Barbed Shot'),
(@ENTRY,0,1,0,9,0,100,6,0,5,9000,10000,11,40652,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wing Clip on Close'),
(@ENTRY,0,2,0,0,0,100,6,0,0,2300,3900,11,16496,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot');

-- Captured Mercenary Soldier
SET @ENTRY := 32883;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,6000,6000,17000,20000,11,62318,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Barbed Shot'),
(@ENTRY,0,1,0,9,0,100,6,0,5,9000,10000,11,40652,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Wing Clip on Close'),
(@ENTRY,0,2,0,0,0,100,6,0,0,2300,3900,11,16496,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot');

-- Chamber Overseer
SET @ENTRY := 34197;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,6000,8000,15000,18000,11,64825,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Staggering Roar'),
(@ENTRY,0,1,0,0,0,100,4,6000,8000,15000,18000,11,64944,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Staggering Roar'),
(@ENTRY,0,2,0,9,0,100,2,10,80,22000,25000,11,64820,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Devastating Leap on Close'),
(@ENTRY,0,3,0,9,0,100,4,10,80,22000,25000,11,64943,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Devastating Leap on Close');

-- Champion of Hodir
SET @ENTRY := 34133;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,8000,9000,18000,22000,11,64649,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Freezing Breath'),
(@ENTRY,0,1,0,0,0,100,2,5000,6000,27000,32000,11,64639,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stomp'),
(@ENTRY,0,2,0,0,0,100,4,5000,6000,27000,32000,11,64652,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Stomp');

-- Clockwork Mechanic
SET @ENTRY := 34184;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,2000,4500,30000,35000,11,64966,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Ice Turret');

-- Clockwork Sapper
SET @ENTRY := 34193;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,2000,4500,12000,13000,11,64740,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Energy Sap');

-- Corrupted Servitor
SET @ENTRY := 33354;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,2000,4500,17000,20000,11,63169,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Petrify Joints'),
(@ENTRY,0,1,0,0,0,100,4,2000,4500,17000,20000,11,63549,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Petrify Joints'),
(@ENTRY,0,2,0,0,0,100,6,6000,9000,25000,27000,11,63149,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Violent Earth');

-- Dark Rune Acolyte
SET @ENTRY := 32886;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,8000,8000,33000,38000,11,61964,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Circle of Healing'),
(@ENTRY,0,1,0,2,0,100,6,0,40,14000,21000,11,62334,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Greater Heal at 40% HP'),
(@ENTRY,0,2,0,0,0,100,6,0,0,3400,4700,11,62335,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Holy Smite'),
(@ENTRY,0,3,0,14,0,100,6,100000,40,15000,18000,11,61967,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Renew on Friendlies');

-- Dark Rune Acolyte
SET @ENTRY := 32957;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,8000,8000,33000,38000,11,61964,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Circle of Healing'),
(@ENTRY,0,1,0,2,0,100,6,0,40,14000,21000,11,62334,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Greater Heal at 40% HP'),
(@ENTRY,0,2,0,0,0,100,6,0,0,3400,4700,11,62335,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Holy Smite'),
(@ENTRY,0,3,0,14,0,100,6,100000,40,15000,18000,11,61967,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Renew on Friendlies');

-- Dark Rune Acolyte
SET @ENTRY := 33110;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,8000,8000,33000,38000,11,61964,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Circle of Healing'),
(@ENTRY,0,1,0,2,0,100,6,0,40,14000,21000,11,62334,1,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Greater Heal at 40% HP'),
(@ENTRY,0,2,0,0,0,100,6,0,0,3400,4700,11,62335,64,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Holy Smite'),
(@ENTRY,0,3,0,14,0,100,6,100000,40,15000,18000,11,61967,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cast Renew on Friendlies');

-- Dark Rune Champion
SET @ENTRY := 32876;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,7,0,0,0,0,11,32323,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Charge on Aggro'),
(@ENTRY,0,1,0,0,0,100,6,5000,5000,14000,16000,11,35054,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Mortal Strike'),
(@ENTRY,0,2,0,0,0,100,6,8000,9000,22000,26000,11,33500,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Whirlwind');

-- Dark Rune Commoner
SET @ENTRY := 32904;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,2000,4500,12000,20000,11,62326,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Low Blow'),
(@ENTRY,0,1,0,0,0,100,6,6000,7500,10000,15500,11,38313,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Pummel');


































 