package blaze;

import flixel.FlxG;
import flixel.FlxState;

import openfl.Lib;
import openfl.events.UncaughtErrorEvent;

class Init extends FlxState {
	public function create()
	{
		super.create();

		Lib.current.loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, (e) -> {
			trace(e.error);
		});

		FlxG.switchState(new PlayState());
	}
}
