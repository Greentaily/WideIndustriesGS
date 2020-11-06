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
	}
}

RegisterGS(FMainClass());
