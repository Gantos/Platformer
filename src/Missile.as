package
{
	import org.flixel.*;
	public class Missile extends FlxSprite
	{
		public function Missile(x:Number, y:Number, d:Number)
		{
			super(x,y);
			createGraphic(16, 4, 0xFF597137);
			if (d==1){
			velocity.x = 1000;
			}
			else{
				velocity.x = -1000;
			}
		}
	}
}