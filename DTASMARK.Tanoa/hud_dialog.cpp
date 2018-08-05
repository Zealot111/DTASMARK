#define CT_STATIC         0
#define ST_LEFT           0x00
#define ST_CENTER         0x02

	class DTASHUD
	{
      	idd = 9745;
     	movingEnable=0;
      	duration=1e+011;
      	name = "DTASHUD_name";
      	onLoad = "uiNamespace setVariable ['DTASHUD', _this select 0];";
		onUnLoad = "uiNamespace setVariable ['DTASHUD', nil]";
      	controlsBackground[] = {};
      	objects[] = {};
      	class controls
		{
			class BackgroundDisplay
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9753;
				text = "";
				x = 0.325 * safezoneW + safezoneX;
				y = 0.015 * safezoneH + safezoneY;
				w = 0.359 * safezoneW;
				h = 0.056 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {0,0,0,0.4};
				colorText[] = {1,1,1,1};
				sizeEx = 0.05;
			};
			class BackgroundDisplay2
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9755;
				text = "";
				x = 0.322 * safezoneW + safezoneX;
				y = 0.012 * safezoneH + safezoneY;
				w = 0.366 * safezoneW;
				h = 0.061 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {1,1,1,0.2};
				colorText[] = {1,1,1,1};
				sizeEx = 0.05;
			};

			class BalanceDisplay
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9750;
				text = "Balance:";
				x = 0.33 * safezoneW + safezoneX;
				y = 0.02 * safezoneH + safezoneY;
				w = 0.06 * safezoneW;
				h = 0.022 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {0,1,0,0.3};
				colorText[] = {0,0,0,0.5};
				sizeEx = 0.030;
			};
			class BalanceDisplayW
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9751;
				text = "11";
				x = 0.33 * safezoneW + safezoneX;
				y = 0.043 * safezoneH + safezoneY;
				w = 0.03 * safezoneW;
				h = 0.022 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {0,0,1,0.2};
				colorText[] = {0,0,0,0.5};
				sizeEx = 0.035;
			};
			class BalanceDisplayE
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9752;
				text = "22";
				x = 0.36 * safezoneW + safezoneX;
				y = 0.043 * safezoneH + safezoneY;
				w = 0.03 * safezoneW;
				h = 0.022 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {1,0,0,0.2};
				colorText[] = {0,0,0,0.5};
				sizeEx = 0.035;
			};

			class TimerDisplay
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9746;
				text = "";
				x = 0.393 * safezoneW + safezoneX;
				y = 0.02 * safezoneH + safezoneY;
				w = 0.07 * safezoneW;
				h = 0.045 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {0.05,0.05,0.05,0.5};
				colorText[] = {1,1,1,1};
				sizeEx = 0.057;
			};
			
			class MissionDisplay
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9747;
				text = "";
				x = 0.466 * safezoneW + safezoneX;
				y = 0.02 * safezoneH + safezoneY;
				w = 0.15 * safezoneW;
				h = 0.045 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {0.05,0.05,0.05,0.2};
				colorText[] = {1,1,1,1};
				sizeEx = 0.05;
			};
			
			class ScoreWDisplay
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9748;
				text = "";
				x = 0.619 * safezoneW + safezoneX;
				y = 0.02 * safezoneH + safezoneY;
				w = 0.03 * safezoneW;
				h = 0.045 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {0,0,1,0.3};
				colorText[] = {1,1,1,1};
				sizeEx = 0.05;
			};

			class ScoreEDisplay
			{
				type = CT_STATIC;
				style = ST_CENTER;
				idc = 9749;
				text = "";
				x = 0.649 * safezoneW + safezoneX;
				y = 0.02 * safezoneH + safezoneY;
				w = 0.03 * safezoneW;
				h = 0.045 * safezoneH;
				font = "PuristaMedium";
				colorBackground[] = {1,0,0,0.3};
				colorText[] = {1,1,1,1};
				sizeEx = 0.05;
			};

		};
	};

