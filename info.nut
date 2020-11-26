/*
 * This file is part of WideIndustriesGS, which is a GameScript for OpenTTD
 * Copyright (C) 2020  Greentail
 *
 * WideIndustriesGS is free software; you can redistribute it and/or modify it 
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License
 *
 * WideIndustriesGS is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with WideIndustriesGS; If not, see <http://www.gnu.org/licenses/> or
 * write to the Free Software Foundation, Inc., 51 Franklin Street, 
 * Fifth Floor, Boston, MA 02110-1301 USA.
 *
 */

require("version.nut");

class FMainClass extends GSInfo {
	function GetAuthor()		{ return "Greentail"; }
	function GetName()			{ return "Wide Industries GS"; }
	function GetDescription() 	{ return "Wide Industries is a script that makes served industries multiply as their production grows"; }
	function GetVersion()		{ return SELF_VERSION; }
	function GetDate()			{ return "2020-11-05"; }
	function CreateInstance()	{ return "MainClass"; }
	function GetShortName()		{ return "WIGS"; }
	function GetAPIVersion()	{ return "1.9"; }
	function GetURL()			{ return "https://github.com/Greentaily/WideIndustriesGS"; }

	function GetSettings() {
		AddSetting({name = "log_level", description = "Debug: Log level (higher = print more)", easy_value = 3, medium_value = 3, hard_value = 3, custom_value = 3, flags = CONFIG_INGAME, min_value = 1, max_value = 3});
		AddLabels("log_level", {_1 = "1: Info", _2 = "2: Verbose", _3 = "3: Debug" } );

		AddSetting({name = "threshold", description = "Try and grow industries when they reach this production", easy_value = 512, medium_value = 1024, hard_value = 1024, custom_value = 512, flags = CONFIG_NONE, min_value = 1, max_value = 9999});
		AddSetting({name = "chance", description = "Probability of growth (percent)", easy_value = 4, medium_value = 2, hard_value = 1, custom_value = 4, flags = CONFIG_NONE, min_value = 1, max_value = 100});
		AddSetting({name = "limit", description = "Build a maximum of this many auxiliaries per industry", easy_value = 6, medium_value = 6, hard_value = 6, custom_value = 6, flags = CONFIG_NONE, min_value = 1, max_value = 99});
		AddSetting({name = "spacing", description = "Leave this number of tiles between auxiliaries", easy_value = 0, medium_value = 2, hard_value = 4, custom_value = 0, flags = CONFIG_NONE, min_value = 0, max_value = 10});
		AddSetting({name = "distance", description = "Maximum distance for auxiliaries", easy_value = 8, medium_value = 8, hard_value = 8, custom_value = 8, flags = CONFIG_NONE, min_value = 4, max_value = 64});
		AddSetting({name = "only_raw_industries", description = "Only grow raw industries", easy_value = 1, medium_value = 1, hard_value = 1, custom_value = 1, flags = CONFIG_BOOLEAN});

	}
}

RegisterGS(FMainClass());
