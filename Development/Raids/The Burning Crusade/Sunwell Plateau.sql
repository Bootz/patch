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
 
 
  /* Raid Normal for 25 people */
 /* Bosses */
 
-- Entropius
SET @ENTRY := 25840;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,11,0,100,3,0,0,0,0,11,46223,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Entropius Cosmetic Spawn on Spawn'),
(@ENTRY,0,1,0,61,0,100,3,0,0,0,0,11,45769,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sunwell Radiance on Spawn'),
(@ENTRY,0,2,0,0,0,100,2,11000,15000,17000,24000,11,46282,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Black Hole'),
(@ENTRY,0,3,0,0,0,100,2,45000,60000,45000,60000,11,46269,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Darkness');

-- M'uru
SET @ENTRY := 25741;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,3,0,0,0,0,11,45769,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Sunwell Radiance on Spawn'),
(@ENTRY,0,1,0,0,0,100,2,3000,8000,4000,7000,11,46008,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Negative Energy'),
(@ENTRY,0,2,0,0,0,100,2,12000,18000,21000,26000,11,45996,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Darkness'),
(@ENTRY,0,3,0,0,0,90,2,9000,15000,10000,16000,11,46263,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Summon Dark Fiend'),
(@ENTRY,0,4,0,0,0,90,2,21000,25000,10000,16000,11,46037,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Summon Berserker'),
(@ENTRY,0,5,0,0,0,90,2,28000,35000,10000,16000,11,46038,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Fury Mage'),
(@ENTRY,0,6,0,0,0,90,2,39000,45000,10000,16000,11,45988,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Void Sentinel'),
(@ENTRY,0,7,8,6,0,100,3,0,0,0,0,11,46177,3,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Open All Portals on Death'),
(@ENTRY,0,8,0,61,0,100,3,0,0,0,0,11,46217,3,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Summon Entropius on Death');



























 
