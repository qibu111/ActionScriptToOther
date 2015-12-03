Demo = cc.Class.extend({
    binds:function(){
        this.start = this.start.bind(this);
        this.onLoaddingProgress = this.onLoaddingProgress.bind(this);
        this.onAllGroupComplete = this.onAllGroupComplete.bind(this);
        this.onBack = this.onBack.bind(this);
    },
    init:function Demo(){
        this.binds();
        this._super();
    },
    start:function start(){
        how.ComponentUtils.init("public.AlertSkin","public.DialogSkin",,"public.NoticeSkin","public.LoaddingSkin");
        AppModule.getInstance().initModule(LoginSceneModule,LoginSceneView,LoginSceneData);
        new how.behaviour.Exec("Test.action",,this).exec();
    },
    onLoaddingProgress:function onLoaddingProgress(percent,current,total){
        var loadingUI = this.loadingUI;
        loadingUI.setProgress(percent,current,total);
    },
    onAllGroupComplete:function onAllGroupComplete(){
        var loadingUI = this.loadingUI;
        loadingUI.setText("正在初始化...");
    },
    onBack:function onBack(){
        how.Dialog.show("你确定要退出游戏？",function null(){
            how.Application.exit();
        },,this);
    },
})