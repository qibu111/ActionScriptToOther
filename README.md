###简要说明

可以把ActionScript3.0代码转换成JavaScript代码，成功规避了JavaScript的this问题

转换前：https://github.com/qibu111/ActionScriptToOther/blob/master/Demo.as 

转换后：https://github.com/qibu111/ActionScriptToOther/blob/master/Demo.js

转换后：https://github.com/qibu111/ActionScriptToOther/blob/master/Demo(egret).js

转换后：https://github.com/qibu111/ActionScriptToOther/blob/master/Demo(cocos).js

----------------------------------------------------------------------------------------------------------------------

###暂不支持

不支持强制转换

不支持Vector类型

不支持use namespace关键字

不支持对象作key

默认模式和cocos2d-js模式不支持重写get/set，egret模式不支持单独只重写get/set中的某一个

默认模式、cocos2d-js模式都不支持super调用父类其他方法和属性，egret完美支持

----------------------------------------------------------------------------------------------------------------------

###注意事项

egret模式可以继承egret引擎中的类，其他模式也一样，模式切换在Config类中

int、Number、Boolean默认值是null

js对象的方法都用了 bind(this) 来绑定上下文

api命名比较乱注释也不齐全，因为是用本人另一个C#版本的as3解释器的核心库翻译过来的，C#版本支持运行as3代码，不支持导出js，地址：http://git.oschina.net/jianyumofa/ActionScriptForUnity/

暂时不支持runtime，不能运行时解释as3代码，后续会支持

此库是as3版本，可以利用此库编译成js版本

暂时只支持导出js，后续会支持ts、c#、java

最终是as3可以导出大部分语言、也可以直接运行在cocos、unity3d、egret等引擎上

默认模式生成的js文件需要先导入how.js库才能运行

可以调用任何H5引擎的api

----------------------------------------------------------------------------------------------------------------------

附：ActionScriptForUnity地址：http://git.oschina.net/jianyumofa/ActionScriptForUnity/