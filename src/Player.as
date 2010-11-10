package
{
	import org.flixel.FlxG;
	import org.flixel.FlxPoint;
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Michael Baker and Sean Petrick
	 */
	public class Player extends FlxSprite
	{
		
		[Embed(source="../res/mario.png")]
		private var ImgPlayer:Class;
		private var hasMissile:Boolean = false;
		
		public function getMissile():Boolean
		{
			return hasMissile;
		}
		
		public function setMissile(b:Boolean):void
		{
			hasMissile = b;
		}
		
		public function Player(spawnX:Number, spawnY:Number):void
		{
			super(spawnX, spawnY);
			//createGraphic(8,16,0xffaa1111);
			loadGraphic(ImgPlayer, true, true, 16, 32);
			
			addAnimation("walking", [0, 1, 2], 10 , true);
			addAnimation("still", [2], 10);
			maxVelocity.x = 80;
			maxVelocity.y = 300;
			acceleration.y = 200;
			drag.x = maxVelocity.x * 4;
			
		}
		
		
		
		override public function update():void
        {
			//Player movement and controls
			acceleration.x = 0;
			
			
			if (FlxG.keys.LEFT) {
				facing = RIGHT;
				acceleration.x = -maxVelocity.x * 4;
			}
			if (FlxG.keys.RIGHT)
			{
				facing = LEFT;
				acceleration.x = maxVelocity.x*4;
			}
			if (FlxG.keys.SPACE && onFloor) {
				velocity.y = -maxVelocity.y/2;
			}
			
			if (velocity.x != 0)
			{
				play("walking");
			}
			else 
			{
				play("still");
			}
		//	if (FlxG.keys.Z) {
		//		if (_hasMissile){
					
		//		}
		//	}
			
			//Updates all the objects appropriately
			super.update();
		}
		public function getSpawnPt():FlxPoint
		{
			var p: FlxPoint = new FlxPoint(x+1,y+10);
			return p;
		}
		public function getDirection():Number
		{
			if(facing == LEFT){
				return 1;
			}else{
				return 0;
			}
		}
		
	}

}