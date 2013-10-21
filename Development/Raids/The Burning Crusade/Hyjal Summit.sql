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
 
-- Anetheron
SET @ENTRY := 17808;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Aggro'),
(@ENTRY,0,1,2,0,0,100,2,20000,28000,10000,15000,11,31306,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Carrion Swarm'),
(@ENTRY,0,2,0,61,0,100,3,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,3,4,0,0,100,2,25000,32000,35000,48000,11,31298,0,0,0,0,0,5,0,0,0,0,0,0,0,'Cast Sleep'),
(@ENTRY,0,4,0,61,0,100,3,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,5,6,0,0,100,2,30000,48000,60000,70000,11,31299,0,0,0,0,0,4,0,0,0,0,0,0,0,'Cast Inferno'),
(@ENTRY,0,6,0,61,0,100,3,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Spell Cast'),
(@ENTRY,0,7,0,0,0,100,2,3000,11000,26000,35000,11,38196,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Vampiric Aura'),
(@ENTRY,0,8,0,0,0,100,2,600000,600000,300000,300000,11,26662,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cast Berserk'),
(@ENTRY,0,9,0,5,0,100,2,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Player Kill'),
(@ENTRY,0,10,0,6,0,100,3,0,0,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Say Text on Death');
-- NPC talk text insert
SET @ENTRY := 17808;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'You are defenders of a doomed world! Flee here, and perhaps you will prolong your pathetic lives!',14,0,100,0,0,10977, 'on Aggro Text'),
(@ENTRY,1,0, 'The swarm is eager to feed!',14,0,50,0,0,10979, 'on Spell Cast Text'),
(@ENTRY,1,1, 'Pestilence upon you!',14,0,50,0,0,11037, 'on Spell Cast Text'),
(@ENTRY,2,0, 'You look tired...',14,0,50,0,0,10978, 'on Spell Cast Text'),
(@ENTRY,2,1, 'Sweet dreams...',14,0,50,0,0,11545, 'on Spell Cast Text'),
(@ENTRY,3,0, 'Let fire rain from above!',14,0,50,0,0,10980, 'on Spell Cast Text'),
(@ENTRY,3,1, 'Earth and sky shall burn!',14,0,50,0,0,11036, 'on Spell Cast Text'),
(@ENTRY,4,0, 'Your hopes are lost!',14,0,50,0,0,10981, 'on Player Death Text'),
(@ENTRY,4,1, 'Scream for me!',14,0,50,0,0,11038, 'on Player Death Text'),
(@ENTRY,4,2, 'Pity, no time for a slow death!',14,0,50,0,0,11039, 'on Player Death Text'),
(@ENTRY,5,0, 'The clock... is still... ticking.',14,0,50,0,0,10982, 'on Death Text');




















