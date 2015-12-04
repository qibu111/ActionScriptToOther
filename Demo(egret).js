(function(how){
    (function(demo){
        Demo = (function (_super) {
            __extends(Demo, _super);
            var d = __define,c=Demo;p=c.prototype;
            p[".init"] = function (){
                this.target = null;
                this.values = null;
                this.data = 2;
            };
            function Demo(target,values){
                _super();
                this[".init"]();
                this.target = target;
                this.values = this.values;
            };
            p.exec = function (){
                this.parseValue("target");
                this.parseValue("values");
                for(var at in this.values){
                    this.target.at = this.values.at;
                }
                this.done();
            };
            Demo.data = 1;
            return Demo;
        })();
        how.demo.Demo = Demo;
        egret.registerClass(Demo,"how.demo.Demo");
    })(how.demo || (how.demo = {}));
})(how || (how = {}));