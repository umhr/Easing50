package
{
	import caurina.transitions.Tweener;
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author umhr
	 */
	public class Main extends MovieClip
	{
		private var _asCircle0:Shape = new Shape();
		private var _asCircle25:Shape = new Shape();
		private var _asCircle50:Shape = new Shape();
		private var _asCircle75:Shape = new Shape();
		private var _asCircle100:Shape = new Shape();
		private var _asCircleSine:Shape = new Shape();
		
		public function Main()
		{
			super();
			init();
		}
		
		private function init():void
		{
			setCircles();
			moveCircles();
			
			enterFrame(null);
			addEventListener(Event.ENTER_FRAME, enterFrame);
		}
		
		private function setCircles():void
		{
			_asCircle100.graphics.beginFill(0xFF0000);
			_asCircle100.graphics.drawRect(-10, -10, 20, 20);
			_asCircle100.graphics.endFill();
			addChild(_asCircle100);
			
			_asCircle75.graphics.beginFill(0x00FF00);
			_asCircle75.graphics.drawRect(-10, -10, 20, 20);
			_asCircle75.graphics.endFill();
			addChild(_asCircle75);
			
			_asCircle50.graphics.beginFill(0x0000FF);
			_asCircle50.graphics.drawRect(-10, -10, 20, 20);
			_asCircle50.graphics.endFill();
			addChild(_asCircle50);
			
			_asCircle25.graphics.beginFill(0xFFFF00);
			_asCircle25.graphics.drawRect(-10, -10, 20, 20);
			_asCircle25.graphics.endFill();
			addChild(_asCircle25);
			
			_asCircle0.graphics.beginFill(0x00FFFF);
			_asCircle0.graphics.drawRect(-10, -10, 20, 20);
			_asCircle0.graphics.endFill();
			addChild(_asCircle0);
			
			_asCircleSine.graphics.beginFill(0xFF00FF);
			_asCircleSine.graphics.drawRect(-10, -10, 20, 20);
			_asCircleSine.graphics.endFill();
			addChild(_asCircleSine);
		
		}
		
		private function moveCircles():void
		{
			_asCircle100.x = _asCircle75.x = _asCircle50.x = 0;
			_asCircle25.x = _asCircle0.x = _asCircleSine.x = 0;
			
			_asCircle100.y = 170;
			_asCircle75.y = 200;
			_asCircle50.y = 230;
			_asCircle25.y = 260;
			_asCircle0.y = 290;
			_asCircleSine.y = 320;
			Tweener.addTween(_asCircle0, {x: 500, time: 99, useFrames: true, transition: "linear"}); //0
			Tweener.addTween(_asCircle100, {x: 500, time: 99, useFrames: true, transition: "easeOutQuad"}); //100
			Tweener.addTween(_asCircleSine, {x: 500, time: 99, useFrames: true, transition: "easeOutSine"});
		}
		
		private function enterFrame(event:Event):void
		{
			_asCircle75.x = _asCircle0.x * 0.25 + _asCircle100.x * 0.75;
			_asCircle50.x = _asCircle0.x * 0.5 + _asCircle100.x * 0.5;
			_asCircle25.x = _asCircle0.x * 0.75 + _asCircle100.x * 0.25;
			if (currentFrame == 100)
			{
				moveCircles();
				gotoAndPlay(1);
			}
		}
	
	}

}