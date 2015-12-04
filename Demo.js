how = how || {};
how.demo = how.demo || {};
how.demo.Demo = Class.extend({
    binds:function(){
        this.exec = this.exec.bind(this);
    },
    target:null,
    values:null,
    data:2,
    init:function (target,values){
        this.base();
        this.target = target;
        this.values = this.values;
        this.binds();
    },
    exec:function (){
        this.parseValue("target");
        this.parseValue("values");
        for(var at in this.values){
            this.target.at = this.values.at;
        }
        this.done();
    },
})
how.demo.Demo.data = 1;