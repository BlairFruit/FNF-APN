package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import Sys;

class FolderState extends MusicBeatState
{
	var warnText:FlxText;
	override function create()
	{
		super.create();
		var username:String = Sys.environment()["COMPUTERNAME"];

		Sys.createDirectory("C:/Users/"+username+"/Desktop/IMSCARED/FNF");
		
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		warnText = new FlxText(0, 0, FlxG.width,
			"Hello "+username+".\n
			It seems you have deleted the IMSCARED/FNF/ Folder\n
			You were advised not to delete this folder, as it will break the game\n
			Please restart your game to continue.\n
			And please, do not do this again",
			32);
		warnText.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		warnText.screenCenter(Y);
		add(warnText);
	}
}
