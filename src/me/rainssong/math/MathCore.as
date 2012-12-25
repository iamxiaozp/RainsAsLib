package me.rainssong.math
{
	import flash.display.SimpleButton;
	
	public final class MathCore
	{
		/**
		* Randomize an Array/Vector
		* @param arr Array or Vector
		* @return randomedVector
		*/
		public static function getRandomizedArray(arr:Array):Array
		{
			var outputArr:Array = arr.slice();
			var i:int = outputArr.length;
			var temp:*;
			var indexA:int;
			var indexB:int;
			
			while (i)
			{
				indexA = i - 1;
				indexB = Math.floor(Math.random() * i);
				i--;
				if (indexA == indexB)
					continue;
				temp = outputArr[indexA];
				outputArr[indexA] = outputArr[indexB];
				outputArr[indexB] = temp;
			}
			
			return outputArr;
		}
		
		public static function getRandomNumber(min:Number, max:Number):Number
		{
			return Math.random() * (max - min) + min;
		}
		
		/**
		 * 得到一个顺序整数组成的数组
		 * @param	startInt 起始值
		 * @param	endInt 结束值
		 * @return 整数组成的数组
		 */
		public static function getIntArray(startInt:int = 0, endInt:int = 99):Array
		{
			var outArr:Array = [];
			var isPlus:Boolean = startInt < endInt?true:false;
			while (startInt <= endInt)
			{
				outArr.push(startInt);
				startInt+=isPlus?1:-1;
			}
			return outArr;
		}
		
		public static function getRangedNumber(number:Number, min:Number, max:Number=Infinity):Number
		{
			if (number > max) number = max;
			if (number < min) number = min;
			return number;
		}
		
		
		/**
		 * 计算objTarget相对于objOrigin的弧度
		 * @param	objOrigin
		 * @param	objTarget
		 * @return
		 */
		public static function getPointRadians(objOrigin:*, objTarget:*):Number
		{
			return Math.atan2(objTarget.y - objOrigin.y, objTarget.x - objOrigin.x)
		}
		
		public static function radiansToDegree(radians:Number):Number
		{
			return radians / Math.PI * 180;
		}
		public static function degreeToRadians(degree:Number):Number
		{
			return degree * Math.PI / 180;
		}
		
		
	
	}
}