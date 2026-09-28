package;

import flixel.FlxGame;
import openfl.display.Sprite;
import blaze.debug.DebugCounter;

class Main extends Sprite {
	public static var gameWidth:Int = 1280; // Width of the game in pixels (might be less / more in actual pixels depending on your zoom).
	public static var gameHeight:Int = 720; // Height of the game in pixels (might be less / more in actual pixels depending on your zoom).
	public static var initialState:Class<FlxState> = blaze.TitleState; // The FlxState the game starts with.
	public static var framerate:Int = 120; // How many frames per second the game should run at.
	public static var skipSplash:Bool = true; // Whether to skip the flixel splash screen that appears in release mode.
	public static var startFullscreen:Bool = false; // Whether to start the game in fullscreen on desktop targets

	public function new() {
		super();
		addChild(new FlxGame(initialState, gameWidth, gameHeight, framerate, skipSplash, startFullscreen));
		addChild(new DebugCounter(10, 10, 14));
	}
}
