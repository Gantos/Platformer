package 
{
	import org.flixel.*;
	import PlayState;

	[SWF(width = "512", height = "480", backgroundColor = "#000000")] 
	
	public class Main extends FlxGame
	{
		public function Main()
		{
			super(256,240,PlayState,2);
		}		
	}	
}