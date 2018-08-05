private ["_rain", "_fog", "_overcast", "_date"];

_fog = fogParam / 10;
_overcast = overcast / 10;
// 1.13tf8
_rain = rainParam / 10;
if (rainParam > 0) then 
{
	if (_overcast < 0.7) then {_overcast = 0.7;};
};
0 setFog _fog;
0 setOvercast _overcast;
0 setRain _rain;

sleep 1;
skipTime 1;
sleep 5;
_date = date;
_date set [3, (_date select 3) - 1];
setDate _date;

while {true} do
{
	0 setFog _fog;
	0 setOvercast _overcast;
	0 setRain _rain;
	// 1.13tf5	
	sleep 5;
};