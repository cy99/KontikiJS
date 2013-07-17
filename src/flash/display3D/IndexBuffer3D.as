/*
Copyright 2012-2013 Renaun Erickson

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

@author Renaun Erickson / renaun.com / @renaun
*/

package flash.display3D
{
	import randori.webkit.html.canvas.ArrayBuffer;
	import randori.webkit.html.canvas.WebGLBuffer;
	import randori.webkit.html.canvas.WebGLRenderingContext;
	
	import renaun.html.stub.ArrayBuffer;
	import renaun.html.stub.Uint16Array;

public class IndexBuffer3D
{
	public function IndexBuffer3D()
	{
	}
	// WebGL implementation specific
	public var context3D:Context3D;
	public var buffer:WebGLBuffer;
	
	public function uploadFromVector(data:Vector.<uint>, startOffset:int, count:int):void
	{
		trace("IndexBuffer3D.uploadFromVector: " + data.length);
		var indices:renaun.html.stub.ArrayBuffer = new renaun.html.stub.ArrayBuffer(data.length * 2);
		var shortArr:Uint16Array = new Uint16Array(indices);
		for (var i:int = 0; i < data.length; i++)
		{
			shortArr[i] = data[i];
		}
		
		context3D.webglContext.bufferData(WebGLRenderingContext.ELEMENT_ARRAY_BUFFER, indices as randori.webkit.html.canvas.ArrayBuffer, WebGLRenderingContext.STATIC_DRAW);
		
	}
	
	public function dispose():void
	{
		
	}
}
}