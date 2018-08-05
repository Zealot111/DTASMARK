#include "islandspecific.hpp"

//private ["];

// для будущих доработок, по аналогии с defendergearquality
//attackeGearQuality = 0;

// Фракция Ванилы
if (attackerFaction == 1) then
{
	aClasses =
	[
	// 0:Description (same as file, same as STR_ in stringtable)
	// 1:weapons string
	// (в будущем) 2:атака\защита\все (0,1,2)
		["fighter","m4a1"],
		["fighter3","m4a1bC"],
		["fighter2","m16a4"],
		["grenadier","m4a1-m203"],
		["support","m4a1"],
		["medic","m4a1"],
		["launcher2","m4a1, m136 hedp"],
		["machinegunner","m249"],
		["engineer","m4a1, m112 (c4)"],
		["sniper","sr25ec"],
		["specops","m4a1bC"],
		["specops2","m27iarC"],
		["diver","m4a1bC"],
		["aventador","m4a1bC-m203"]
	];
};	

if (defenderFaction == 1) then
{
	dClasses =
	[
	// 0:Description (same as file, same as STR_ in stringtable)
	// 1:weapons string
	// (в будущем) 2:атака\защита\все (0,1,2)
		["fighter","m4a1"],
		["fighter3","m4a1bC"],
		["fighter2","m16a4"],
		["grenadier","m4a1-m203"],
		["support","m4a1"],
		["medic","m4a1"],
		["launcher","m4a1, m153 smaw heaa"],
		["launcher2","m4a1, m136 hedp"],
		["machinegunner","m249"],
		["sapper","m4a1, wiremine"],
		["heavygunoperator","m4a1, m2 operator"],
		["heavygunoperator2","m4a1, m2 assistant"],
		["aventador","m4a1bC-m203"]
	];
};	    


if (attackerFaction == 2) then
{
	aClasses =
	[
	// 0:Description (same as file, same as STR_ in stringtable)
	// 1:weapons string
	// (в будущем) 2:атака\защита\все (0,1,2)
		["fighter","ak74m"],
		["fighter2","ak103"],
		["grenadier","ak74m-gp25"],
		["support","ak74m"],
		["medic","ak74m"],
		["launcher2","ak74m, rshg2"],
		["machinegunner","pkp"],
		["machinegunner2","pkm"],
		["engineer","ak74m, m112x4(c4)"],
		["sniper","svdm"],
		["specops","ak74m"],
		["specops2","val"],
		["diver","ak74m"],
		["aventador","ak74m-gp25"]
	];
};	


if (defenderFaction == 2) then
{
	dClasses =
	[
	// 0:Description (same as file, same as STR_ in stringtable)
	// 1:weapons string
	// (в будущем) 2:атака\защита\все (0,1,2)
		["fighter","ak74m"],
		["fighter2","ak103"],
		["grenadier","ak74m-gp25"],
		["support","ak74m"],
		["medic","ak74m"],
		["launcher","ak74m, rpg7 pg7vl"],
		["launcher2","ak74m, rshg2"],
		["machinegunner","pkp"],
		["machinegunner2","pkm"],
		["sapper","ak74m, wiremine"],
		["heavygunoperator","ak74m, kord operator"],
		["heavygunoperator2","ak74m, kord assistant"],
		["aventador","ak74m-gp25"]
	];
};	                        


if (defenderFaction == 3) then
{
	dClasses =
	[
	// 0:Description (same as file, same as STR_ in stringtable)
	// 1:weapons string
	// (в будущем) 2:атака\защита\все (0,1,2)
		["fighter","akm"],
		["officer","akm"],
//		["grenadier","ak74m-gp25"],
		["support","akm"],
//		["medic","akm"],
		["launcher","akm, rpg26"],
		["launcher2","ak4m, rshg2"],
		["machinegunner","pkm"],
		["sapper","akm, wiremine"],
		["heavygunoperator","akm, dshkm operator"],
		["heavygunoperator2","akm, dshkm assistant"]
//		["diver","ak74m"],
//		["aventador","ak74m-gp25"]
	];
};	                        
if (attackerFaction == 3) then
{
	aClasses =
	[
	// 0:Description (same as file, same as STR_ in stringtable)
	// 1:weapons string
	// (в будущем) 2:атака\защита\все (0,1,2)
		["fighter","akm"],
		["officer","akm"],
		["support","akm"],
		["launcher2","ak4m, rshg2"],
		["machinegunner","pkm"],
		["sniper","svdm"],
		["engineer","akm, wiremine"]
	];
};	                        
