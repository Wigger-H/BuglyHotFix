// HWMainVC类
defineClass("HWMainVC",["age","sex","array","dictionary"],{
    //实例方法
    btnClickAction: function() {
        console.log("我进来了哦");
        require('UIView, UIColor','HWFirstVC')
        var redColor = UIColor.yellowColor();
        self.view().setBackgroundColor(redColor);

        var view = UIView.alloc().initWithFrame({
        	x:100,
        	y:200,
        	width:100,
        	height:100
        });
        view.layer().setMasksToBounds(YES);
        view.layer().setCornerRadius(50);
        view.layer().setBorderColor(UIColor.blueColor().CGColor());
        view.setBackgroundColor(UIColor.redColor());
        self.view().addSubview(view);
        self.setAge(10);
        self.setSex("男");
        self.setDefaultStr(self.age());
        self.setArray(["1","2","3","4","5"]);
        console.log(self.array());
        console.log(self.array()[0]);
        self.setDictionary({"name":"小明","age":"20","sex":"1"});
        console.log(self.dictionary());
        console.log(self.dictionary()["name"]);
        self.printLogWithWidth_height(self.defaultStr(),self.sex());
        self.evaluateMaxValue();
        self.ORIGbtnClickAction();
        require('HWMainVC').evaluateMinValue();
    },
    printLogWithWidth_height:function(width,height){
        console.log("宽度:"+width+"&nbsp;&nbsp;&nbsp;&nbsp;"+"高度:"+height);
    console.log("Max已经被替换了哦");
        self.addNewMethod("小明",18);
    },
    addNewMethod:function(name,age){
        console.log(name+"今年"+age+"岁了");
        var vc = HWFirstVC.alloc().init();
        self.navigationController().pushViewController_animated(vc,YES);
    },
    
},{
    //类方法
    evaluateMinValue:function(){
        console.log("类方法被替换了哦");
        self.ORIGevaluateMinValue();
    },
});
// HWFirstVC类
defineClass("HWFirstVC",[],{
    clickAction:function(){
        console.log("点击了第一个界面的按钮");
        var vc = require('HWSecondVC').alloc().init();
        self.navigationController().pushViewController_animated(vc,YES);
        
//        var vc = require('HWThirdVC').alloc().init();
//        self.navigationController().pushViewController_animated(vc,YES);
    },
},{});
// HWSecondVC类
defineClass("HWSecondVC",[],{
    viewDidLoad:function(){
        self.super().viewDidLoad();
        self.view().setBackgroundColor(require('UIColor').yellowColor());
        self.setupContent();
    },
    setupContent:function(){
        var label = require('UILabel').alloc().initWithFrame({
        x:0,
        y:200,
        width:require('UIScreen').mainScreen().bounds().width,
        height:30
        });
        label.setBackgroundColor(require('UIColor').grayColor());
        label.setTextAlignment(1);
        label.setTextColor(require('UIColor').redColor());
        label.setFont(require('UIFont').systemFontOfSize(28));
        label.setText("这是第二个界面");
        self.view().addSubview(label);
        self.maxValue(10,20);
        
        var btn = require('UIButton').alloc().initWithFrame({
            x:0,
            y:400,
            width:require('UIScreen').mainScreen().bounds().width,
            height:30
        });
        btn.setBackgroundColor(require('UIColor').grayColor());
        btn.setTitle_forState("点击按钮",0);
        btn.setTitleColor_forState(require('UIColor').whiteColor(),0);
        btn.addTarget_action_forControlEvents(self,"buttonClickAction:",1);
        btn.setTag(1000);
        self.view().addSubview(btn);
    },
    maxValue:function(a,b){
        console.log(a+b);
        console.log(self.dataAtIndex(1));
    },
    dataAtIndex:function(idx){
        var data = ["JS","Patch"];
        return idx<data.length?data[idx]:"";
    },
    buttonClickAction:function(button){
        console.log(button.tag());
        var weakSelf = __weak(self);
        self.requestBlock(block("NSString *,BOOL",function(ctn,succ){
            if(succ){
                console.log(ctn);
            }
        }));
        self.genBlock()("返回给OC");

    },
    
},{});
//HWThirdVC
defineClass("HWThirdVC: UIViewController",[],{
    viewDidLoad:function(){
    self.super().viewDidLoad();
    self.view().setBackgroundColor(require('UIColor').blueColor());
    },
},{});
