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
 
 
-- Allerian Defender
SET @ENTRY := 18999;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,1,2,61,0,100,1,0,0,0,0,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,2,3,61,0,100,1,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Melee Attack on Aggro'),
(@ENTRY,0,3,0,61,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,4,5,9,1,100,0,5,30,2300,3900,11,6660,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Ranged Weapon Model'),
(@ENTRY,0,6,7,9,1,100,0,30,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Melee Attack when not in Shoot Range'),
(@ENTRY,0,8,9,9,1,100,0,0,10,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,9,10,61,1,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Melee Weapon Model when not in Shoot Range'),
(@ENTRY,0,10,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Melee Attack when not in Shoot Range'),
(@ENTRY,0,11,12,9,1,100,0,11,25,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 25 Yards'),
(@ENTRY,0,12,13,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Melee Attack at 25 Yards'),
(@ENTRY,0,13,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Ranged Weapon Model at 25 Yards'),
(@ENTRY,0,14,15,7,1,100,1,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Melee Weapon Model on Evade'),
(@ENTRY,0,15,0,61,1,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,16,0,9,1,100,0,0,30,12000,12500,11,18396,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dismounting Blast on Close');

-- Alluvion
SET @ENTRY := 21730;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,38669,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Water Bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,38669,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Water Bolt'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Water Bolt Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Water Bolt Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,9,1,100,0,0,10,13600,14500,11,38669,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Water Bolt on Close');

-- Ashkaz
SET @ENTRY := 18539;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,26098,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt on Aggro'),
(@ENTRY,0,3,12,9,1,100,0,0,40,3400,4700,11,26098,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Lightning Bolt'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Lightning Bolt Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Lightning Bolt Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,0,1,100,0,6000,10000,12000,16000,11,32907,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arakkoa Blast'),
(@ENTRY,0,11,0,0,1,100,0,10000,14000,18000,25000,11,6728,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Enveloping Winds'),
(@ENTRY,0,12,0,61,1,100,1,0,0,0,0,11,32924,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Power of Kran\'aish on Aggro');

-- Auchenai Death-Speaker
SET @ENTRY := 21242;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shadow Bolt Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shadow Bolt Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,1,0,100,0,500,1000,1800000,1800000,11,13787,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Demon Armor on Spawn'),
(@ENTRY,0,11,0,0,1,100,0,3000,5000,35000,40000,11,18267,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Curse of Weakness');

-- Auchenai Doomsayer
SET @ENTRY := 21285;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,3000,5000,11,31516,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Mind Blast'),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,7000,10000,11,16568,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Mind Flay'),
(@ENTRY,0,2,0,2,0,100,0,0,40,15000,20000,11,11642,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Heal at 40% HP');

-- Auchenai Initiate
SET @ENTRY := 21284;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,9000,7000,9000,11,38618,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Whirlwind'),
(@ENTRY,0,1,0,0,0,100,0,2000,4000,8000,11000,11,37592,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Knockdown');

-- Auchenai Warrior
SET @ENTRY := 21852;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,9000,7000,9000,11,38618,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Whirlwind'),
(@ENTRY,0,1,0,0,0,100,0,2000,4000,8000,11000,11,37592,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Knockdown');

-- Ayit
SET @ENTRY := 18540;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,12000,15000,11,11972,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shield Bash on Close');

-- Blackwind Sabercat
SET @ENTRY := 21723;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,9000,16000,19000,11,33912,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rip');

-- Blackwind Warp Chaser
SET @ENTRY := 23219;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,32942,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Phasing Invisibility on Spawn'),
(@ENTRY,0,1,0,7,0,100,1,0,0,0,0,11,32942,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Phasing Invisibility on Evade'),
(@ENTRY,0,2,0,4,0,100,1,0,0,0,0,28,32942,0,0,0,0,0,2,0,0,0,0,0,0,0,'Remove Phasing Invisibility on Aggro'),
(@ENTRY,0,3,0,0,0,100,0,3000,6000,4000,7000,11,32739,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Venomous Bite'),
(@ENTRY,0,4,0,0,0,100,0,12000,15000,20000,40000,11,32920,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Warp');

-- Bone Crawler
SET @ENTRY := 21849;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sandworm Submerge Visual OOC'),
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,11,33928,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Tunnel Bore Passive OOC'),
(@ENTRY,0,2,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,3,0,4,1,100,1,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Remove Sandworm Submerge Visual on Aggro'),
(@ENTRY,0,4,0,4,1,100,1,0,0,0,0,28,33928,0,0,0,0,0,1,0,0,0,0,0,0,0,'Remove Tunnel Bore Passive on Aggro'),
(@ENTRY,0,5,0,4,1,100,1,0,0,0,0,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison on Aggro'),
(@ENTRY,0,6,0,4,1,100,1,0,0,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Change Flag for attack on Aggro'),
(@ENTRY,0,7,0,9,1,100,0,0,50,2100,4500,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison'),
(@ENTRY,0,8,0,9,1,100,0,0,50,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Poison Range'),
(@ENTRY,0,9,0,7,1,100,1,0,0,0,0,11,33928,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Tunnel Bore Passive on Evade'),
(@ENTRY,0,10,0,7,1,100,1,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sandworm Submerge Visual on Evade'),
(@ENTRY,0,11,0,7,1,100,1,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Change Flag on Evade'),
(@ENTRY,0,12,0,9,1,100,0,0,5,20000,22000,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bore on Close');

-- Bone Sifter
SET @ENTRY := 22466;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sandworm Submerge Visual OOC'),
(@ENTRY,0,1,0,1,0,100,1,0,0,0,0,11,33928,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Tunnel Bore Passive OOC'),
(@ENTRY,0,2,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,3,0,4,1,100,1,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Remove Sandworm Submerge Visual on Aggro'),
(@ENTRY,0,4,0,4,1,100,1,0,0,0,0,28,33928,0,0,0,0,0,1,0,0,0,0,0,0,0,'Remove Tunnel Bore Passive on Aggro'),
(@ENTRY,0,5,0,4,1,100,1,0,0,0,0,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison on Aggro'),
(@ENTRY,0,6,0,4,1,100,1,0,0,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Change Flag for attack on Aggro'),
(@ENTRY,0,7,0,9,1,100,0,0,50,2100,4500,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Poison'),
(@ENTRY,0,8,0,9,1,100,0,0,50,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Poison Range'),
(@ENTRY,0,9,0,7,1,100,1,0,0,0,0,11,33928,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Tunnel Bore Passive on Evade'),
(@ENTRY,0,10,0,7,1,100,1,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sandworm Submerge Visual on Evade'),
(@ENTRY,0,11,0,7,1,100,1,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,'Change Flag on Evade'),
(@ENTRY,0,12,0,9,1,100,0,0,5,20000,22000,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Bore on Close');

-- Bonechewer Backbreaker
SET @ENTRY := 16810;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shadow Bolt Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shadow Bolt Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,0,1,100,0,7000,11000,9000,14000,11,16583,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Shock'),
(@ENTRY,0,11,0,2,1,100,0,0,30,30000,30000,11,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bloodlust at 40% HP');

-- Bonechewer Devastator
SET @ENTRY := 16772;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,7000,6000,9000,11,8646,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Snap Kick');

-- Bonechewer Marauder
SET @ENTRY := 21245;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,7000,6000,9000,11,8646,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Snap Kick');

-- Bonelasher
SET @ENTRY := 18470;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,6000,5000,7000,11,34363,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fevered Disease');

-- Boulderfist Invader
SET @ENTRY := 18260;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,7000,12000,15000,11,2676,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Pulverize');

-- Broken Skeleton
SET @ENTRY := 16805;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,2000,10000,10000,11,17014,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bone Shards');

-- Cabal Abjurist
SET @ENTRY := 21660;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,34447,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Missiles on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,2500,3100,11,34447,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Missiles'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Arcane Missiles Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Arcane Missiles Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,9,1,100,0,0,8,13600,14500,11,11831,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Frost Nova on Close');

-- Cabal Initiate
SET @ENTRY := 21907;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP'),
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP'),
(@ENTRY,0,2,0,0,0,100,0,2000,5000,5000,9000,11,15691,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Eviscerate');
-- NPC talk text insert
SET @ENTRY := 21907;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage');

-- Cabal Interrogator
SET @ENTRY := 22378;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,5000,5000,9000,11,15691,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Eviscerate');

-- Cabal Skirmisher
SET @ENTRY := 21661;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP'),
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP'),
(@ENTRY,0,2,0,0,0,100,0,2000,5000,5000,8000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cleave');
-- NPC talk text insert
SET @ENTRY := 21661;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage');

-- Cabal Spell-weaver
SET @ENTRY := 21902;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,6000,8000,11,32707,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Incinerate'),
(@ENTRY,0,1,0,2,0,100,0,0,50,15000,20000,11,17173,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Drain Life at 50% HP');

-- Cabal Tomb-Raider
SET @ENTRY := 21662;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,67,0,100,0,9000,12000,0,0,11,37685,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Backstab'),
(@ENTRY,0,1,0,0,0,100,0,2000,4500,12000,16000,11,30981,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Crippling Poison');

-- Caravan Defender
SET @ENTRY := 22407;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,1,2,61,0,100,1,0,0,0,0,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot on Aggro'),
(@ENTRY,0,2,3,61,0,100,1,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Melee Attack on Aggro'),
(@ENTRY,0,3,0,61,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,4,5,9,1,100,0,5,30,2300,3900,11,95826,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shoot'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Ranged Weapon Model'),
(@ENTRY,0,6,7,9,1,100,0,30,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,7,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Melee Attack when not in Shoot Range'),
(@ENTRY,0,8,9,9,1,100,0,0,10,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shoot Range'),
(@ENTRY,0,9,10,61,1,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Melee Weapon Model when not in Shoot Range'),
(@ENTRY,0,10,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Melee Attack when not in Shoot Range'),
(@ENTRY,0,11,12,9,1,100,0,11,25,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 25 Yards'),
(@ENTRY,0,12,13,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Melee Attack at 25 Yards'),
(@ENTRY,0,13,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Ranged Weapon Model at 25 Yards'),
(@ENTRY,0,14,15,7,1,100,1,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Melee Weapon Model on Evade'),
(@ENTRY,0,15,0,61,1,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade');

-- Crippler
SET @ENTRY := 18689;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,12000,12500,11,38621,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Debilitating Strike on Close'),
(@ENTRY,0,1,0,4,0,100,1,0,0,0,0,11,38882,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Bone Armor on Aggro'),
(@ENTRY,0,2,0,0,0,100,0,2000,4500,15000,20000,11,39214,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Pierce Armor');

-- Crown Underling
SET @ENTRY := 38030;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,1,2,61,0,100,1,0,0,0,0,11,70074,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Spray Chemical on Aggro'),
(@ENTRY,0,2,3,61,0,100,1,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Melee Attack on Aggro'),
(@ENTRY,0,3,0,61,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,4,5,9,1,100,0,5,30,2300,3900,11,70074,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Spray Chemical'),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Ranged Weapon Model'),
(@ENTRY,0,6,7,9,1,100,0,30,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Spray Chemical Range'),
(@ENTRY,0,7,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Melee Attack when not in Spray Chemical Range'),
(@ENTRY,0,8,9,9,1,100,0,0,10,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Spray Chemical Range'),
(@ENTRY,0,9,10,61,1,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Melee Weapon Model when not in Spray Chemical Range'),
(@ENTRY,0,10,0,61,1,100,0,0,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Melee Attack when not in Spray Chemical Range'),
(@ENTRY,0,11,12,9,1,100,0,11,25,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 25 Yards'),
(@ENTRY,0,12,13,61,1,100,0,0,0,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Melee Attack at 25 Yards'),
(@ENTRY,0,13,0,61,1,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Ranged Weapon Model at 25 Yards'),
(@ENTRY,0,14,15,7,1,100,1,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Melee Weapon Model on Evade'),
(@ENTRY,0,15,0,61,1,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Reset on Evade'),
(@ENTRY,0,16,0,9,1,100,0,0,5,8000,9000,11,11978,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Kick on Close');

-- Dampscale Basilisk
SET @ENTRY := 18461;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,8000,30000,35000,11,32905,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Glare');

-- Dampscale Devourer
SET @ENTRY := 18463;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,4000,7000,11,32906,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Chomp');

-- Darkscreecher Akkarai
SET @ENTRY := 23161;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,40429,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frostbolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,40429,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frostbolt'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Frostbolt Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Frostbolt Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,0,1,100,0,8000,8000,22000,24000,11,15730,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Curse of Mending'),
(@ENTRY,0,11,0,0,1,100,0,4000,4500,12000,13000,11,13341,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fire Blast'),
(@ENTRY,0,12,0,0,1,100,0,7000,7500,19000,22000,11,40427,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Flock Call'),
(@ENTRY,0,13,0,0,1,100,0,11000,12000,10000,24000,11,40428,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt Volley');

-- Deathskitter
SET @ENTRY := 18647;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,7000,11000,11,32902,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dread Poison');

-- Deathtalon Spirit
SET @ENTRY := 21198;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,7000,9000,11,36093,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Ghost Strike');

-- Decrepit Clefthoof
SET @ENTRY := 22105;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Enrage at 30% HP'),
(@ENTRY,0,1,0,61,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text at 30% HP'),
(@ENTRY,0,2,0,9,0,100,0,0,10,15000,16000,11,12612,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Stomp on Close');
-- NPC talk text insert
SET @ENTRY := 22105;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage');

-- Doomsayer Jurim
SET @ENTRY := 18686;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,12471,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,12471,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shadow Bolt Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shadow Bolt Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,0,1,100,0,6000,8000,15000,16000,11,39212,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Corruption'),
(@ENTRY,0,11,0,0,1,100,0,7000,11000,22000,27000,11,12493,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Curse of Weakness'),
(@ENTRY,0,12,0,0,1,100,0,3000,9000,18000,25000,11,39210,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Fear'),
(@ENTRY,0,13,0,0,1,100,0,4000,15000,10000,28000,11,38401,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Incinerate');

-- Dreadfang Lurker
SET @ENTRY := 18466;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,7000,9000,12000,11,32902,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dread Poison');

-- Dreadfang Widow
SET @ENTRY := 18467;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,7000,9000,12000,11,32902,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Dread Poison');

-- Empoor
SET @ENTRY := 18482;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Spawn'),
(@ENTRY,0,1,0,16,0,100,0,12550,1,15000,30000,11,12550,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Lightning Shield on Repeat'),
(@ENTRY,0,2,0,9,0,100,0,0,20,9000,12000,11,12548,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Frost Shock on Close');

-- Empoor's Bodyguard
SET @ENTRY := 18483;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,10000,14500,11,11977,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Rend on Close'),
(@ENTRY,0,1,0,0,0,100,0,5000,5000,15000,20000,11,13730,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Demoralizing Shout');

-- Enslaved Doomguard
SET @ENTRY := 21963;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4500,12000,14000,11,11443,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Cripple'),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,17000,18000,11,31598,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Rain of Fire'),
(@ENTRY,0,2,0,9,0,100,0,0,5,14000,14500,11,11876,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast War Stomp on Close');

-- Ethereal Arcanist
SET @ENTRY := 21405;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,11,4,1,100,1,0,0,0,0,11,33833,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Missiles on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,2500,3100,11,33833,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Arcane Missiles'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Arcane Missiles Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Arcane Missiles Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,0,1,100,0,3000,6000,9000,15000,11,39039,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Force Blast'),
(@ENTRY,0,11,0,61,1,100,1,0,0,0,0,11,32936,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Der\'izu Focus on Aggro');

-- Ethereal Nethermancer
SET @ENTRY := 21370;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shadow Bolt Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shadow Bolt Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,2,1,100,1,0,50,0,0,11,17173,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Drain Life at 50% HP');

-- Ethereal Plunderer
SET @ENTRY := 21368;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,67,0,100,0,4000,5000,0,0,11,7159,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Backstab'),
(@ENTRY,0,1,0,0,0,100,0,6000,9000,15000,18000,11,32920,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Warp');

-- Firewing Bloodwarder
SET @ENTRY := 1410;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,5000,5000,7000,11,16583,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Shock'),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,12000,18000,11,33483,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Mana Tap'),
(@ENTRY,0,2,0,0,0,100,0,8000,13000,13000,19000,11,33390,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Arcane Torrent');

-- Firewing Defender
SET @ENTRY := 5355;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,3000,6000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Strike'),
(@ENTRY,0,1,0,0,0,100,0,6000,8000,12000,18000,11,33483,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Mana Tap'),
(@ENTRY,0,2,0,0,0,100,0,8000,13000,13000,19000,11,33390,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Arcane Torrent');

-- Firewing Warlock
SET @ENTRY := 16769;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 on Aggro'),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving on Aggro'),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt on Aggro'),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,9613,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt'),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving when not in Shadow Bolt Range'),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving at 15 Yards'),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stop Moving when in Shadow Bolt Range'),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 2 at 15% Mana'),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Start Moving at 15% Mana'),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Set Phase 1 When Mana is above 30%'),
(@ENTRY,0,10,0,0,1,100,0,6000,8000,12000,18000,11,33483,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Mana Tap'),
(@ENTRY,0,11,0,0,1,100,0,8000,13000,13000,19000,11,33390,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Arcane Torrent'),
(@ENTRY,0,12,0,0,1,100,0,3000,5000,18000,24000,11,11962,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Immolate'),
(@ENTRY,0,13,0,2,1,100,1,0,30,0,0,11,32932,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sun Shield at 30% HP');












































