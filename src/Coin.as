package
{
	import org.flixel.*;
	
	public class Coin extends FlxSprite
	{
		[Embed(source="../res/coin.png")]
		private var ImgCoin:Class;
		
		public function Coin(x:Number, y:Number):void
		{
			super(x,y);
			loadGraphic(ImgCoin,true,false,16,16);
			addAnimation("Spinning",[0,1,2,3],7,true);
			//loadGraphic(ImgCoin,false,false,16,16);
		}
		override public function update():void
		{
			play("Spinning");
			super.update();
		}
	}
}