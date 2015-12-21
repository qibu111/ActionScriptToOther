(function(how){
    (function(as2js){
        (function(codeDom){
            (function(temp){
                TempOperator = (function (_super) {
                    __extends(TempOperator, _super);
                    var d = __define,c=TempOperator;p=c.prototype;
                    TempOperatornull = function (){
                        if(this._operators){
                            this._operators = new flash.utils.Dictionary();
                            this._operators[how.as2js.compiler.TokenType.InclusiveOr] = new this.TempOperator(how.as2js.compiler.TokenType.InclusiveOr,1);
                            this._operators[how.as2js.compiler.TokenType.Combine] = new this.TempOperator(how.as2js.compiler.TokenType.Combine,1);
                            this._operators[how.as2js.compiler.TokenType.XOR] = new this.TempOperator(how.as2js.compiler.TokenType.XOR,1);
                            this._operators[how.as2js.compiler.TokenType.Shi] = new this.TempOperator(how.as2js.compiler.TokenType.Shi,1);
                            this._operators[how.as2js.compiler.TokenType.Shr] = new this.TempOperator(how.as2js.compiler.TokenType.Shr,1);
                            this._operators[how.as2js.compiler.TokenType.And] = new this.TempOperator(how.as2js.compiler.TokenType.And,1);
                            this._operators[how.as2js.compiler.TokenType.Or] = new this.TempOperator(how.as2js.compiler.TokenType.Or,1);
                            this._operators[how.as2js.compiler.TokenType.Equal] = new this.TempOperator(how.as2js.compiler.TokenType.Equal,2);
                            this._operators[how.as2js.compiler.TokenType.NotEqual] = new this.TempOperator(how.as2js.compiler.TokenType.NotEqual,2);
                            this._operators[how.as2js.compiler.TokenType.Greater] = new this.TempOperator(how.as2js.compiler.TokenType.Greater,2);
                            this._operators[how.as2js.compiler.TokenType.GreaterOrEqual] = new this.TempOperator(how.as2js.compiler.TokenType.GreaterOrEqual,2);
                            this._operators[how.as2js.compiler.TokenType.Less] = new this.TempOperator(how.as2js.compiler.TokenType.Less,2);
                            this._operators[how.as2js.compiler.TokenType.LessOrEqual] = new this.TempOperator(how.as2js.compiler.TokenType.LessOrEqual,2);
                            this._operators[how.as2js.compiler.TokenType.Plus] = new this.TempOperator(how.as2js.compiler.TokenType.Plus,3);
                            this._operators[how.as2js.compiler.TokenType.Minus] = new this.TempOperator(how.as2js.compiler.TokenType.Minus,3);
                            this._operators[how.as2js.compiler.TokenType.Multiply] = new this.TempOperator(how.as2js.compiler.TokenType.Multiply,4);
                            this._operators[how.as2js.compiler.TokenType.Divide] = new this.TempOperator(how.as2js.compiler.TokenType.Divide,4);
                            this._operators[how.as2js.compiler.TokenType.Modulo] = new this.TempOperator(how.as2js.compiler.TokenType.Modulo,4);

                        }
                        return this._operators;
                    };
                    TempOperatornull = function (){
                    };
                    function TempOperator(oper,level){
                        this.operator = oper;
                        this.level = this.level;
                    };
                    TempOperator.TempOperator = function (oper){
                        if(this.Operators.hasOwnProperty(oper)){
                            return this.Operators[oper];

                        }
                        return null;
                    };
                    p[".init"] = function (){
                        this.operator = null;
                        this.level = null;
                    };
                    d(p,"Operators",p[".getOperators"],null);
                    TempOperator._operators = null;
                    return TempOperator;
                })();
                how.as2js.codeDom.temp.TempOperator = TempOperator;
                egret.registerClass(TempOperator,"how.as2js.codeDom.temp.TempOperator");
            })(how.as2js.codeDom.temp || (how.as2js.codeDom.temp = {}));
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            (function(temp){
                TempCase = (function (_super) {
                    __extends(TempCase, _super);
                    var d = __define,c=TempCase;p=c.prototype;
                    function TempCase(allow,executable){
                        this.allow = allow;
                        this.executable = this.executable;
                    };
                    p[".init"] = function (){
                        this.allow = null;
                        this.executable = null;
                    };
                    return TempCase;
                })();
                how.as2js.codeDom.temp.TempCase = TempCase;
                egret.registerClass(TempCase,"how.as2js.codeDom.temp.TempCase");
            })(how.as2js.codeDom.temp || (how.as2js.codeDom.temp = {}));
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            (function(temp){
                TempCondition = (function (_super) {
                    __extends(TempCondition, _super);
                    var d = __define,c=TempCondition;p=c.prototype;
                    function TempCondition(allow,executable){
                        this.allow = allow;
                        this.executable = this.executable;
                    };
                    p[".init"] = function (){
                        this.allow = null;
                        this.executable = null;
                    };
                    return TempCondition;
                })();
                how.as2js.codeDom.temp.TempCondition = TempCondition;
                egret.registerClass(TempCondition,"how.as2js.codeDom.temp.TempCondition");
            })(how.as2js.codeDom.temp || (how.as2js.codeDom.temp = {}));
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            (function(temp){
                TempData = (function (_super) {
                    __extends(TempData, _super);
                    var d = __define,c=TempData;p=c.prototype;
                    function TempData(){
                    };
                    p[".init"] = function (){
                        this.tempData = null;
                        this.thisTempData = null;
                        this.staticTempData = null;
                        this.importTempData = null;
                    };
                    return TempData;
                })();
                how.as2js.codeDom.temp.TempData = TempData;
                egret.registerClass(TempData,"how.as2js.codeDom.temp.TempData");
            })(how.as2js.codeDom.temp || (how.as2js.codeDom.temp = {}));
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(error){
            ParseError = (function (_super) {
                __extends(ParseError, _super);
                var d = __define,c=ParseError;p=c.prototype;
                function ParseError(token,message){
                    token = token!=null||token!=undefined?token:"";
                    var msg = " Line:" + token.SourceLine + 1 + "  Column:" + token.SourceChar + "  Type:" + how.as2js.compiler.TokenType.getTypeName(token.Type) + "  value[" + token.Lexeme + "]    " + message;
                    _super.call(this,);
                    this[".init"]();
                };
                p[".init"] = function (){
                };
                return ParseError;
            })(Error);
            how.as2js.error.ParseError = ParseError;
            egret.registerClass(ParseError,"how.as2js.error.ParseError");
        })(how.as2js.error || (how.as2js.error = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(error){
            StackInfo = (function (_super) {
                __extends(StackInfo, _super);
                var d = __define,c=StackInfo;p=c.prototype;
                function StackInfo(breviary,line){
                    this.Breviary = breviary;
                    this.Line = line;
                };
                p[".init"] = function (){
                    this.Breviary = "";
                    this.Line = 1;
                };
                return StackInfo;
            })();
            how.as2js.error.StackInfo = StackInfo;
            egret.registerClass(StackInfo,"how.as2js.error.StackInfo");
        })(how.as2js.error || (how.as2js.error = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(runtime){
            ToJavaScript = (function (_super) {
                __extends(ToJavaScript, _super);
                var d = __define,c=ToJavaScript;p=c.prototype;
                function ToJavaScript(){
                };
                p.to = function (codeClass){
                    var imports = codeClass.imports;
                };
                p.getVar = function (key){
                    return "var " + key + ";";
                };
                p[".init"] = function (){
                };
                return ToJavaScript;
            })();
            how.as2js.runtime.ToJavaScript = ToJavaScript;
            egret.registerClass(ToJavaScript,"how.as2js.runtime.ToJavaScript");
        })(how.as2js.runtime || (how.as2js.runtime = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(runtime){
            Runtime = (function (_super) {
                __extends(Runtime, _super);
                var d = __define,c=Runtime;p=c.prototype;
                function Runtime(){
                };
                p.getClasses = function (packAge){
                    var result = new Vector();
                    if(packAge && this._classes[packAge]){
                        var classes = this._classes[packAge];
                        for(var key in classes){
                            result.push(classes[key]);
                        }

                    }
                    return result;
                };
                p.getClass = function (packAge,className){
                    if(packAge){
                        if(this._classes[packAge]){
                            return this._classes[packAge][className];

                        }
                        else{
                            return null;

                        }

                    }
                    else{
                        return this._classes[className];

                    }
                };
                p.registerClass = function (codeClass){
                    if(codeClass.packAge.length){
                        this._classes[codeClass.packAge] = this._classes[codeClass.packAge] || new flash.utils.Dictionary();
                        this._classes[codeClass.packAge][codeClass.name] = codeClass;

                    }
                    else{
                        this._classes[codeClass.name] = codeClass;

                    }
                };
                p.unRegisterClass = function (codeClass){
                    if(codeClass.packAge){
                        delete this._classes[codeClass.packAge][codeClass.name];

                    }
                    else{
                        delete this._classes[codeClass.name];

                    }
                };
                p.outClass = function (modol){
                    modol = modol!=null||modol!=undefined?modol:1;
                    var result = "";
                    how.as2js.Config.modol = modol;
                    for(var key in this._classes){
                        var codeClass = null;
                        if(this._classes[key] instanceof how.as2js.codeDom.CodeClass){
                            codeClass = this._classes[key];
                            result += codeClass.outClass(this) + "\n";

                        }
                        for(var className in this._classes[key]){
                            codeClass = this._classes[key][className];
                            result += codeClass.outClass(this) + "\n";
                        }
                    }
                    return result;
                };
                p[".init"] = function (){
                    this._classes = new flash.utils.Dictionary();
                };
                return Runtime;
            })();
            how.as2js.runtime.Runtime = Runtime;
            egret.registerClass(Runtime,"how.as2js.runtime.Runtime");
        })(how.as2js.runtime || (how.as2js.runtime = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(runtime){
            Opcode = (function (_super) {
                __extends(Opcode, _super);
                var d = __define,c=Opcode;p=c.prototype;
                p[".init"] = function (){
                };
                Opcode.Class = 0;
                Opcode.Extends = 1;
                Opcode.MOV = 2;
                Opcode.VAR = 3;
                Opcode.CALL_IF = 4;
                Opcode.CALL_FOR = 5;
                Opcode.CALL_FORSIMPLE = 6;
                Opcode.CALL_FOREACH = 7;
                Opcode.CALL_FORIN = 8;
                Opcode.CALL_WHILE = 9;
                Opcode.CALL_SWITCH = 10;
                Opcode.CALL_TRY = 11;
                Opcode.CALL_FUNCTION = 12;
                Opcode.THROW = 13;
                Opcode.RESOLVE = 14;
                Opcode.RET = 15;
                Opcode.BREAK = 16;
                Opcode.CONTINUE = 17;
                Opcode.NEW = 18;
                Opcode.SUPER = 19;
                Opcode.ISAS = 20;
                Opcode.DELETE = 21;
                return Opcode;
            })();
            how.as2js.runtime.Opcode = Opcode;
            egret.registerClass(Opcode,"how.as2js.runtime.Opcode");
        })(how.as2js.runtime || (how.as2js.runtime = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeSuper = (function (_super) {
                __extends(CodeSuper, _super);
                var d = __define,c=CodeSuper;p=c.prototype;
                p.outJS = function (tabCount){
                    this.superObject.owner = owner;
                    if(this.superObject instanceof how.as2js.codeDom.CodeCallFunction){
                        return "this.base()";

                    }
                    else{
                        var result = this.superObject.out(tabCount);
                        if(result.substring(0,5) != "this."){
                            result = "this." + result;

                        }
                        return result;

                    }
                };
                p.outEgret = function (tabCount){
                    this.superObject.owner = owner;
                    var result = "";
                    if(this.superObject instanceof how.as2js.codeDom.CodeCallFunction){
                        var member = ((this.superObject instanceof how.as2js.codeDom.CodeCallFunction)?this.superObject:null).member instanceof how.as2js.codeDom.CodeMember)?(this.superObject instanceof how.as2js.codeDom.CodeCallFunction)?this.superObject:null).member:null);
                        if(member && member.parent){
                            var superParam = (this.superObject instanceof how.as2js.codeDom.CodeCallFunction)?this.superObject:null).parameters;
                            var thisParam = new Vector();
                            thisParam.push(new how.as2js.codeDom.CodeMember("this"));
                            (this.superObject instanceof how.as2js.codeDom.CodeCallFunction)?this.superObject:null).parameters = thisParam.concat(superParam);
                            result = "_super.call" + this.superObject.out(tabCount) + ";\n";
                            result += getTab(tabCount) + "this[\".init\"]()";

                        }
                        else{
                            result = "_super.prototype." + this.superObject.out(tabCount) + ".call(this)";

                        }
                        return result;

                    }
                    else{
                        insertString = ".call";
                        result = "_super." + this.superObject.out(tabCount);
                        return result;

                    }
                };
                p.outCocos = function (tabCount){
                    this.superObject.owner = owner;
                    if(this.superObject instanceof how.as2js.codeDom.CodeCallFunction){
                        return "this._super()";

                    }
                    else{
                        var result = this.superObject.out(tabCount);
                        if(result.substring(0,5) != "this."){
                            result = "this." + result;

                        }
                        return result;

                    }
                };
                p[".init"] = function (){
                    this.superObject = null;
                };
                return CodeSuper;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeSuper = CodeSuper;
            egret.registerClass(CodeSuper,"how.as2js.codeDom.CodeSuper");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CALC = (function (_super) {
                __extends(CALC, _super);
                var d = __define,c=CALC;p=c.prototype;
                p[".init"] = function (){
                };
                CALC.NONE = 0;
                CALC.PRE_INCREMENT = 1;
                CALC.POST_INCREMENT = 2;
                CALC.PRE_DECREMENT = 3;
                CALC.POST_DECREMENT = 4;
                return CALC;
            })();
            how.as2js.codeDom.CALC = CALC;
            egret.registerClass(CALC,"how.as2js.codeDom.CALC");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeIsAs = (function (_super) {
                __extends(CodeIsAs, _super);
                var d = __define,c=CodeIsAs;p=c.prototype;
                function CodeIsAs(leftObject,rightObject,type){
                    this.leftObject = leftObject;
                    this.rightObject = this.rightObject;
                    this.type = this.type;
                };
                p.out = function (tabCount){
                    this.leftObject.owner = owner;
                    this.rightObject.owner = owner;
                    if(this.type == how.as2js.compiler.TokenType.Is){
                        return this.leftObject.out(0) + " instanceof " + this.rightObject.out(0);

                    }
                    else{
                        return "(" + this.leftObject.out(0) + " instanceof " + this.rightObject.out(0) + ")?" + this.leftObject.out(0) + ":null)";

                    }
                };
                p[".init"] = function (){
                    this.leftObject = null;
                    this.rightObject = null;
                    this.type = null;
                };
                return CodeIsAs;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeIsAs = CodeIsAs;
            egret.registerClass(CodeIsAs,"how.as2js.codeDom.CodeIsAs");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeAssign = (function (_super) {
                __extends(CodeAssign, _super);
                var d = __define,c=CodeAssign;p=c.prototype;
                function CodeAssign(member,value,assignType,breviary,line){
                    this.member = member;
                    this.value = this.value;
                    this.assignType = this.assignType;
                    _super.call(this,breviary,line);
                    this[".init"]();
                };
                p.out = function (tabCount){
                    var type = null;
                    switch(this.assignType){
                        case how.as2js.compiler.TokenType.Assign:
                            type = "=";
                            break;
                        case how.as2js.compiler.TokenType.AssignPlus:
                            type = "+=";
                            break;
                        case how.as2js.compiler.TokenType.AssignMinus:
                            type = "-=";
                            break;
                        case how.as2js.compiler.TokenType.AssignMultiply:
                            type = "*=";
                            break;
                        case how.as2js.compiler.TokenType.AssignDivide:
                            type = "/=";
                            break;
                        case how.as2js.compiler.TokenType.AssignModulo:
                            type = "%=";
                            break;
                        case how.as2js.compiler.TokenType.AssignCombine:
                            type = "&=";
                            break;
                        case how.as2js.compiler.TokenType.AssignInclusiveOr:
                            type = "|=";
                            break;
                        case how.as2js.compiler.TokenType.AssignXOR:
                            type = "^=";
                            break;
                        case how.as2js.compiler.TokenType.AssignShr:
                            type = ">>=";
                            break;
                        case how.as2js.compiler.TokenType.AssignShi:
                            type = "<<=";
                            break;
                        default:
                            type = "未知运算符";
                            break;

                    }
                    var v = null;
                    this.member.owner = owner;
                    this.value.owner = owner;
                    v = this.value.out(tabCount);
                    return this.member.out(tabCount) + " " + type + " " + v;
                };
                p[".init"] = function (){
                    this.member = null;
                    this.value = null;
                    this.assignType = null;
                };
                return CodeAssign;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeAssign = CodeAssign;
            egret.registerClass(CodeAssign,"how.as2js.codeDom.CodeAssign");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeCallFunction = (function (_super) {
                __extends(CodeCallFunction, _super);
                var d = __define,c=CodeCallFunction;p=c.prototype;
                p.outJS = function (tabCount){
                    this.member.owner = owner;
                    var arg = "";
                    for(var i = 0;i < this.parameters.length;i++){
                        this.parameters[i].owner = owner;
                        arg += this.parameters[i].out(tabCount);
                        if(i != this.parameters.length - 1){
                            arg += ",";

                        }
                    }
                    return this.member.out(tabCount) + "(" + arg + ")";
                };
                p.outEgret = function (tabCount){
                    this.member.owner = owner;
                    var arg = "";
                    for(var i = 0;i < this.parameters.length;i++){
                        this.parameters[i].owner = owner;
                        arg += this.parameters[i].out(tabCount);
                        if(i != this.parameters.length - 1){
                            arg += ",";

                        }
                    }
                    return this.member.out(tabCount) + insertString + "(" + arg + ")";
                };
                p[".init"] = function (){
                    this.member = null;
                    this.parameters = null;
                };
                return CodeCallFunction;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeCallFunction = CodeCallFunction;
            egret.registerClass(CodeCallFunction,"how.as2js.codeDom.CodeCallFunction");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeWhile = (function (_super) {
                __extends(CodeWhile, _super);
                var d = __define,c=CodeWhile;p=c.prototype;
                function CodeWhile(){
                };
                p.out = function (tabCount){
                    this.While.allow.owner = owner;
                    this.While.executable.parent = owner;
                    this.While.executable.owner = owner;
                    this.While.executable.tempData = owner.tempData;
                    var result = getTab(tabCount) + "while(" + this.While.allow.out(tabCount) + ")" + getLeftBrace(tabCount) + this.While.executable.out(tabCount + 1) + "\n" + getTab(tabCount) + "}";
                    return result;
                };
                p[".init"] = function (){
                    this.While = null;
                };
                return CodeWhile;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeWhile = CodeWhile;
            egret.registerClass(CodeWhile,"how.as2js.codeDom.CodeWhile");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeFunction = (function (_super) {
                __extends(CodeFunction, _super);
                var d = __define,c=CodeFunction;p=c.prototype;
                function CodeFunction(strName,listParameters,listParameterTypes,listValues,executable,bParams,IsStatic,type){
                    this.name = strName;
                    this.type = this.type;
                    this.IsStatic = this.IsStatic;
                    this.listParameters = this.listParameters;
                    this.listParameterTypes = this.listParameterTypes;
                    this.listValues = this.listValues;
                    this.executable = this.executable;
                    this.parameterCount = this.listParameters.length;
                    this.params = bParams;
                };
                p.outJS = function (tabCount){
                    if(owner){
                        this.executable.tempData = owner.tempData;

                    }
                    this.executable.tempData.tempData = new flash.utils.Dictionary();
                    var valuesString = "";
                    for(var i = 0;i < this.listValues.length;i++){
                        valuesString += getTab(tabCount + 1) + this.listParameters[i] + " = " + this.listParameters[i] + "!=null||" + this.listParameters[i] + "!=undefined?" + this.listParameters[i] + ":" + this.listValues[i].out(0) + ";\n";
                    }
                    return "function" +  + "(" + this.toParam(tabCount) + ")" + getLeftBrace(tabCount) + valuesString + this.executable.out(tabCount + 1) + insertString + getTab(tabCount) + "}";
                };
                p.outEgret = function (tabCount){
                    if(owner){
                        this.executable.tempData = owner.tempData;

                    }
                    this.executable.tempData.tempData = new flash.utils.Dictionary();
                    var valuesString = "";
                    for(var i = 0;i < this.listValues.length;i++){
                        valuesString += getTab(tabCount + 1) + this.listParameters[i] + " = " + this.listParameters[i] + "!=null||" + this.listParameters[i] + "!=undefined?" + this.listParameters[i] + ":" + this.listValues[i].out(0) + ";\n";
                    }
                    return "function " +  + "(" + this.toParam(tabCount) + ")" + getLeftBrace(tabCount) + valuesString + this.executable.out(tabCount + 1) + getTab(tabCount) + "}";
                };
                p.toParam = function (tabCount){
                    var paramString = "";
                    for(var i = 0;i < this.listParameters.length;i++){
                        if(this.params && i == this.parameterCount - 1){
                            paramString = paramString + "..." + this.listParameters[i];

                        }
                        else{
                            paramString += this.listParameters[i];

                        }
                        this.executable.tempData.tempData[paramString] = null;
                        if(i < this.listParameters.length - 1){
                            paramString += ",";

                        }
                    }
                    return paramString;
                };
                p[".init"] = function (){
                    this.type = null;
                    this.IsStatic = null;
                    this.listParameters = null;
                    this.listParameterTypes = null;
                    this.listValues = null;
                    this.executable = null;
                    this.parameterCount = null;
                    this.params = null;
                    this.name = null;
                    this.isCtor = null;
                };
                CodeFunction.TYPE_NORMAL = 0;
                CodeFunction.TYPE_GET = 1;
                CodeFunction.TYPE_SET = 2;
                return CodeFunction;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeFunction = CodeFunction;
            egret.registerClass(CodeFunction,"how.as2js.codeDom.CodeFunction");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeSwitch = (function (_super) {
                __extends(CodeSwitch, _super);
                var d = __define,c=CodeSwitch;p=c.prototype;
                function CodeSwitch(){
                };
                p.AddCase = function (con){
                    this.cases.push(con);
                };
                p.out = function (tabCount){
                    this.condition.owner = owner;
                    var caseString = "";
                    var defaultString = "";
                    for(var i = 0;i < this.cases.length;i++){
                        for(var j = 0;j < this.cases[i].allow.length;j++){
                            this.cases[i].allow[j].owner = owner;
                            caseString += getTab(tabCount + 1) + "case " + this.cases[i].allow[j].out(tabCount) + ":\n";
                        }
                        if(this.cases[i].executable){
                            this.cases[i].executable.parent = owner;
                            this.cases[i].executable.owner = owner;
                            this.cases[i].executable.tempData = owner.tempData;
                            caseString += this.cases[i].executable.out(tabCount + 2);

                        }
                        caseString += getTab(tabCount + 2) + "break;\n";
                    }
                    if(this.def){
                        defaultString += getTab(tabCount + 1) + "default:\n";
                        this.def.executable.parent = owner;
                        this.def.executable.owner = owner;
                        this.def.executable.tempData = owner.tempData;
                        defaultString += this.def.executable.out(tabCount + 2) + getTab(tabCount + 2) + "break;\n";

                    }
                    return getTab(tabCount) + "switch(" + this.condition.out(0) + ")" + getLeftBrace(tabCount) + caseString + defaultString + "\n" + getTab(tabCount) + "}";
                };
                p[".init"] = function (){
                    this.condition = null;
                    this.def = null;
                    this.cases = new Vector();
                };
                return CodeSwitch;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeSwitch = CodeSwitch;
            egret.registerClass(CodeSwitch,"how.as2js.codeDom.CodeSwitch");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeIf = (function (_super) {
                __extends(CodeIf, _super);
                var d = __define,c=CodeIf;p=c.prototype;
                p.AddElseIf = function (con){
                    this.ElseIf.push(con);
                };
                p.out = function (tabCount){
                    this.If.allow.owner = owner;
                    this.If.executable.parent = owner;
                    this.If.executable.owner = owner;
                    this.If.executable.tempData = owner.tempData;
                    var result = getTab(tabCount) + "if(" + this.If.allow.out(tabCount) + ")" + getLeftBrace(tabCount) + this.If.executable.out(tabCount + 1) + "\n" + getTab(tabCount) + "}\n";
                    var elseifString = "";
                    if(this.ElseIf.length){
                        for(var i = 0;i < this.ElseIf.length;i++){
                            this.ElseIf[i].allow.owner = owner;
                            this.ElseIf[i].executable.parent = owner;
                            this.ElseIf[i].executable.owner = owner;
                            this.ElseIf[i].executable.tempData = owner.tempData;
                            elseifString += getTab(tabCount) + "else if(" + this.ElseIf[i].allow.out(tabCount) + ")" + getLeftBrace(tabCount) + this.ElseIf[i].executable.out(tabCount + 1) + "\n" + getTab(tabCount) + "}\n";
                        }

                    }
                    var elseString = "";
                    if(this.Else){
                        this.Else.executable.parent = owner;
                        this.Else.executable.owner = owner;
                        this.Else.executable.tempData = owner.tempData;
                        elseString = getTab(tabCount) + "else" + getLeftBrace(tabCount) + this.Else.executable.out(tabCount + 1) + "\n" + getTab(tabCount) + "}\n";

                    }
                    result += elseifString;
                    result += elseString;
                    result = result.substring(0,result.length - 1);
                    return result;
                };
                p[".init"] = function (){
                    this.If = null;
                    this.Else = null;
                    this.ElseIf = new Vector();
                };
                return CodeIf;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeIf = CodeIf;
            egret.registerClass(CodeIf,"how.as2js.codeDom.CodeIf");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeArray = (function (_super) {
                __extends(CodeArray, _super);
                var d = __define,c=CodeArray;p=c.prototype;
                p.out = function (tabCount){
                    var result = "[";
                    for(var i = 0;i < this.elements.length;i++){
                        this.elements[i].owner = owner;
                        result += this.elements[i].out(tabCount) + ",";
                    }
                    result += "]";
                    return result;
                };
                p[".init"] = function (){
                    this.elements = new Vector();
                };
                return CodeArray;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeArray = CodeArray;
            egret.registerClass(CodeArray,"how.as2js.codeDom.CodeArray");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeOperator = (function (_super) {
                __extends(CodeOperator, _super);
                var d = __define,c=CodeOperator;p=c.prototype;
                CodeOperatornull = function (){
                    if(this._operators){
                        this._operators = new flash.utils.Dictionary();
                        this._operators[how.as2js.compiler.TokenType.InclusiveOr] = "|";
                        this._operators[how.as2js.compiler.TokenType.Combine] = "&";
                        this._operators[how.as2js.compiler.TokenType.XOR] = "^";
                        this._operators[how.as2js.compiler.TokenType.Shi] = "<<";
                        this._operators[how.as2js.compiler.TokenType.Shr] = ">>";
                        this._operators[how.as2js.compiler.TokenType.And] = "&&";
                        this._operators[how.as2js.compiler.TokenType.Or] = "||";
                        this._operators[how.as2js.compiler.TokenType.Equal] = "==";
                        this._operators[how.as2js.compiler.TokenType.NotEqual] = "!=";
                        this._operators[how.as2js.compiler.TokenType.Greater] = ">";
                        this._operators[how.as2js.compiler.TokenType.GreaterOrEqual] = ">=";
                        this._operators[how.as2js.compiler.TokenType.Less] = "<";
                        this._operators[how.as2js.compiler.TokenType.LessOrEqual] = "<=";
                        this._operators[how.as2js.compiler.TokenType.Plus] = "+";
                        this._operators[how.as2js.compiler.TokenType.Minus] = "-";
                        this._operators[how.as2js.compiler.TokenType.Multiply] = "*";
                        this._operators[how.as2js.compiler.TokenType.Divide] = "/";
                        this._operators[how.as2js.compiler.TokenType.Modulo] = "%";

                    }
                    return this._operators;
                };
                function CodeOperator(Right,Left,type){
                    this.left = Left;
                    this.right = Right;
                    this.operator = type;
                };
                p.out = function (tabCount){
                    this.left.owner = this.right.owner = owner;
                    return this.left.out(tabCount) + " " + how.as2js.codeDom.CodeOperator[this.operator] + " " + this.right.out(tabCount);
                };
                p[".init"] = function (){
                    this.left = null;
                    this.right = null;
                    this.operator = null;
                };
                d(p,"operators",p[".getoperators"],null);
                CodeOperator._operators = null;
                return CodeOperator;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeOperator = CodeOperator;
            egret.registerClass(CodeOperator,"how.as2js.codeDom.CodeOperator");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeExecutable = (function (_super) {
                __extends(CodeExecutable, _super);
                var d = __define,c=CodeExecutable;p=c.prototype;
                p[".getblock"] = function (){
                    return this._block;
                };
                p[".getcount"] = function (){
                    return this._count;
                };
                function CodeExecutable(block,parent){
                    block = block!=null||block!=undefined?block:null;
                    this.parent = this.parent;
                    this._block = block;
                    this.instructions = new Vector();
                };
                p.addInstruction = function (val){
                    val.owner = this;
                    this.instructions.push(val);
                };
                p.endInstruction = function (){
                    this._count = this.instructions.length;
                };
                p.getInstruction = function (index){
                    return this.instructions[index];
                };
                p.outJS = function (tabCount){
                    var result = "";
                    for(this.currentIndex = 0;this.currentIndex < this.instructions.length;this.currentIndex++){
                        result += this.instructions[this.currentIndex].out(tabCount);
                    }
                    return result;
                };
                p.outEgret = function (tabCount){
                    var result = ;
                    result = "";
                    for(this.currentIndex = 0;this.currentIndex < this.instructions.length;this.currentIndex++){
                        result += this.instructions[this.currentIndex].out(tabCount);
                    }
                    return result;
                };
                p.hasSuper = function (){
                    for(var i = 0;i < this.instructions.length;i++){
                        if(this.instructions[i].operand0 instanceof how.as2js.codeDom.CodeSuper){
                            return true;

                        }
                    }
                    return false;
                };
                p[".init"] = function (){
                    this._block = null;
                    this.instructions = null;
                    this._count = null;
                    this.parent = null;
                    this.tempData = null;
                    this.currentIndex = 0;
                };
                d(p,"block",p[".getblock"],null);
                d(p,"count",p[".getcount"],null);
                CodeExecutable.Block_Class = 0;
                CodeExecutable.Block_None = 1;
                CodeExecutable.Block_Block = 2;
                CodeExecutable.Block_Function = 3;
                CodeExecutable.Block_If = 4;
                CodeExecutable.Block_ForBegin = 5;
                CodeExecutable.Block_ForLoop = 6;
                CodeExecutable.Block_For = 7;
                CodeExecutable.Block_Foreach = 8;
                CodeExecutable.Block_While = 9;
                CodeExecutable.Block_Switch = 10;
                return CodeExecutable;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeExecutable = CodeExecutable;
            egret.registerClass(CodeExecutable,"how.as2js.codeDom.CodeExecutable");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeForeach = (function (_super) {
                __extends(CodeForeach, _super);
                var d = __define,c=CodeForeach;p=c.prototype;
                function CodeForeach(){
                };
                p.out = function (tabCount){
                    this.loopObject.owner = owner;
                    if(this.executable){
                        this.executable.parent = owner;
                        this.executable.owner = owner;
                        this.executable.tempData = owner.tempData;

                    }
                    return getTab(tabCount) + "for each(var " + this.identifier + " in " + this.loopObject.out(0) + ")" + getLeftBrace(tabCount) +  + getTab(tabCount) + "}";
                };
                p[".init"] = function (){
                    this.identifier = null;
                    this.loopObject = null;
                    this.executable = null;
                };
                return CodeForeach;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeForeach = CodeForeach;
            egret.registerClass(CodeForeach,"how.as2js.codeDom.CodeForeach");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeVariable = (function (_super) {
                __extends(CodeVariable, _super);
                var d = __define,c=CodeVariable;p=c.prototype;
                function CodeVariable(key,value,modifierType,isStatic,isConst,isOverride,type){
                    this.key = key;
                    this.value = this.value;
                    this.modifierType = this.modifierType;
                    this.isStatic = this.isStatic;
                    this.isConst = this.isConst;
                    this.isOverride = this.isOverride;
                    this.type = this.type;
                };
                p[".init"] = function (){
                    this.key = null;
                    this.value = null;
                    this.modifierType = null;
                    this.isStatic = true;
                    this.isConst = true;
                    this.type = null;
                    this.isOverride = false;
                };
                return CodeVariable;
            })();
            how.as2js.codeDom.CodeVariable = CodeVariable;
            egret.registerClass(CodeVariable,"how.as2js.codeDom.CodeVariable");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeForin = (function (_super) {
                __extends(CodeForin, _super);
                var d = __define,c=CodeForin;p=c.prototype;
                function CodeForin(){
                };
                p.out = function (tabCount){
                    this.loopObject.owner = owner;
                    if(this.executable){
                        this.executable.parent = owner;
                        this.executable.owner = owner;
                        this.executable.tempData = owner.tempData;

                    }
                    return getTab(tabCount) + "for(var " + this.identifier + " in " + this.loopObject.out(0) + ")" + getLeftBrace(tabCount) + this.executable.out(tabCount + 1) + getTab(tabCount) + "}";
                };
                p[".init"] = function (){
                    this.identifier = null;
                    this.loopObject = null;
                    this.executable = null;
                };
                return CodeForin;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeForin = CodeForin;
            egret.registerClass(CodeForin,"how.as2js.codeDom.CodeForin");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeTernary = (function (_super) {
                __extends(CodeTernary, _super);
                var d = __define,c=CodeTernary;p=c.prototype;
                p[".init"] = function (){
                    this.allow = null;
                    this.True = null;
                    this.False = null;
                };
                return CodeTernary;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeTernary = CodeTernary;
            egret.registerClass(CodeTernary,"how.as2js.codeDom.CodeTernary");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeMember = (function (_super) {
                __extends(CodeMember, _super);
                var d = __define,c=CodeMember;p=c.prototype;
                function CodeMember(name,member,num,parent){
                    name = name!=null||name!=undefined?name:null;
                    member = member!=null||member!=undefined?member:null;
                    num = num!=null||num!=undefined?num:0;
                    parent = parent!=null||parent!=undefined?parent:null;
                    if(name){
                        this.parent = this.parent;
                        this.memberString = name;
                        this.type = how.as2js.codeDom.CodeMember;

                    }
                    else if(member){
                        this.parent = this.parent;
                        this.memberObject = member;
                        this.type = how.as2js.codeDom.CodeMember;

                    }
                    else{
                        this.parent = this.parent;
                        this.memberNumber = num;
                        this.type = how.as2js.codeDom.CodeMember;

                    }
                };
                p.out = function (tabCount){
                    var thisString = "";
                    if(this.parent){
                        if(owner.tempData.tempData.hasOwnProperty(this.memberString)){
                            if(owner.tempData.thisTempData.hasOwnProperty(this.memberString)){
                                thisString = "this.";

                            }
                            else if(owner.tempData.staticTempData.hasOwnProperty(this.memberString)){
                                return owner.tempData.staticTempData..this;

                            }
                            else if(owner.tempData.importTempData.hasOwnProperty(this.memberString)){
                                return owner.tempData.importTempData[this.memberString];

                            }

                        }

                    }
                    else{
                        this.parent.owner = owner;

                    }
                    var mem = null;
                    if(this.type == how.as2js.codeDom.CodeMember){
                        mem = this.memberString;

                    }
                    else if(this.type == how.as2js.codeDom.CodeMember){
                        var codeMember = (this.memberObject instanceof how.as2js.codeDom.CodeMember)?this.memberObject:null);
                        if(codeMember){
                            codeMember.owner = owner;
                            mem = codeMember.out(0);

                        }
                        else{
                            mem = this.memberObject;

                        }

                    }
                    else if(this.type == how.as2js.codeDom.CodeMember){
                        mem = this.memberNumber;

                    }
                    else{
                        mem = "";

                    }
                    if(this.calc == how.as2js.codeDom.CALC.POST_DECREMENT){
                        mem = mem + "--";

                    }
                    else if(this.calc == how.as2js.codeDom.CALC.PRE_DECREMENT){
                        mem = "--" + mem;

                    }
                    else if(this.calc == how.as2js.codeDom.CALC.POST_INCREMENT){
                        mem = mem + "++";

                    }
                    else if(this.calc == how.as2js.codeDom.CALC.PRE_INCREMENT){
                        mem = "++" + mem;

                    }
                    if(this.parent){
                        if(this.type == how.as2js.codeDom.CodeMember){
                            return this.parent.out(tabCount) + "." + mem;

                        }
                        else{
                            return this.parent.out(tabCount) + "[" + mem + "]";

                        }

                    }
                    else{
                        return thisString + mem + "";

                    }
                };
                p[".init"] = function (){
                    this.parent = null;
                    this.memberObject = null;
                    this.memberString = null;
                    this.memberNumber = null;
                    this.type = how.as2js.codeDom.CodeMember;
                    this.calc = null;
                    this.memType = null;
                };
                CodeMember.TYPE_NULL = 0;
                CodeMember.TYPE_STRING = 1;
                CodeMember.TYPE_NUMBER = 2;
                CodeMember.TYPE_OBJECT = 3;
                return CodeMember;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeMember = CodeMember;
            egret.registerClass(CodeMember,"how.as2js.codeDom.CodeMember");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeThrow = (function (_super) {
                __extends(CodeThrow, _super);
                var d = __define,c=CodeThrow;p=c.prototype;
                p.out = function (tabCount){
                    this.obj.owner = owner;
                    return "throw " + this.obj.out(0);
                };
                p[".init"] = function (){
                    this.obj = null;
                };
                return CodeThrow;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeThrow = CodeThrow;
            egret.registerClass(CodeThrow,"how.as2js.codeDom.CodeThrow");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeTry = (function (_super) {
                __extends(CodeTry, _super);
                var d = __define,c=CodeTry;p=c.prototype;
                p.out = function (tabCount){
                    this.tryExecutable.parent = owner;
                    this.tryExecutable.owner = owner;
                    this.tryExecutable.tempData = owner.tempData;
                    var catchString = "";
                    if(this.catchExecutable){
                        this.catchExecutable.parent = owner;
                        this.catchExecutable.owner = owner;
                        this.catchExecutable.tempData = owner.tempData;
                        catchString = "\n" + getTab(tabCount) + "catch(" + this.identifier + ")" + getLeftBrace(tabCount) + this.catchExecutable.out(tabCount + 1) + getTab(tabCount) + "}";

                    }
                    return getTab(tabCount) + "try" + getLeftBrace(tabCount) + this.tryExecutable.out(tabCount + 1) + getTab(tabCount) + "}" + catchString;
                };
                p[".init"] = function (){
                    this.tryExecutable = null;
                    this.catchExecutable = null;
                    this.identifier = null;
                };
                return CodeTry;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeTry = CodeTry;
            egret.registerClass(CodeTry,"how.as2js.codeDom.CodeTry");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeDelete = (function (_super) {
                __extends(CodeDelete, _super);
                var d = __define,c=CodeDelete;p=c.prototype;
                function CodeDelete(deleteObject){
                    this.deleteObject = deleteObject;
                };
                p.out = function (tabCount){
                    this.deleteObject.owner = owner;
                    return "delete " + this.deleteObject.out(tabCount);
                };
                p[".init"] = function (){
                    this.deleteObject = null;
                };
                return CodeDelete;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeDelete = CodeDelete;
            egret.registerClass(CodeDelete,"how.as2js.codeDom.CodeDelete");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeForSimple = (function (_super) {
                __extends(CodeForSimple, _super);
                var d = __define,c=CodeForSimple;p=c.prototype;
                function CodeForSimple(){
                    this.variables = new flash.utils.Dictionary();
                };
                p.SetContextExecutable = function (blockExecutable){
                    blockExecutable = blockExecutable;
                };
                p[".init"] = function (){
                    this.identifier = null;
                    this.begin = null;
                    this.finished = null;
                    this.step = null;
                    this.blockExecutable = null;
                    this.variables = null;
                };
                return CodeForSimple;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeForSimple = CodeForSimple;
            egret.registerClass(CodeForSimple,"how.as2js.codeDom.CodeForSimple");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeInstruction = (function (_super) {
                __extends(CodeInstruction, _super);
                var d = __define,c=CodeInstruction;p=c.prototype;
                p[".getopcode"] = function (){
                    return this._opcode;
                };
                p[".getoperand0"] = function (){
                    return this._operand0;
                };
                p[".getoperand1"] = function (){
                    return this._operand1;
                };
                p[".getvalue"] = function (){
                    return this._value;
                };
                function CodeInstruction(opcode,operand0,operand1,value){
                    opcode = opcode!=null||opcode!=undefined?opcode:null;
                    operand0 = operand0!=null||operand0!=undefined?operand0:null;
                    operand1 = operand1!=null||operand1!=undefined?operand1:null;
                    this._opcode = opcode;
                    this._operand0 = this.operand0;
                    this._operand1 = this.operand1;
                    this._value = this.value;
                };
                p.out = function (tabCount){
                    var result = "";
                    switch(this.opcode){
                        case how.as2js.runtime.Opcode.VAR:
                            result += this.convertVar(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.RET:
                            result += this.convertRet(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.RESOLVE:
                            result += this.convertResolve(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CONTINUE:
                            result += this.convertContinue(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.BREAK:
                            result += this.convertBreak(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_FUNCTION:
                            result += this.convertCallFunction(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_IF:
                            result += this.convertCallIf(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_FOR:
                            result += this.convertCallFor(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_FORSIMPLE:
                            result += this.convertCallForSimple(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_FOREACH:
                            result += this.convertCallForeach(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_FORIN:
                            result += this.convertCallForin(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_WHILE:
                            result += this.convertCallWhile(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_SWITCH:
                            result += this.convertCallSwitch(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.CALL_TRY:
                            result += this.convertTry(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.THROW:
                            result += this.convertThrow(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.NEW:
                            result += this.convertNew(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.SUPER:
                            result += this.convertSuper(tabCount);
                            break;
                        case how.as2js.runtime.Opcode.DELETE:
                            result += this.convertDelete(tabCount);
                            break;

                    }
                    return result;
                };
                p.convertVar = function (tabCount){
                    var name = this.value + "";
                    owner.tempData.tempData[name] = null;
                    var nextInstruction = owner.instructions[[object CodeOperator]];
                    if(nextInstruction && nextInstruction._operand0 instanceof how.as2js.codeDom.CodeAssign && (nextInstruction._operand0 instanceof how.as2js.codeDom.CodeAssign)?nextInstruction._operand0:null).member.memberString == name){
                        nextInstruction._operand0.owner = owner;
                        owner.currentIndex++;
                        return getTab(tabCount) + "var " + nextInstruction._operand0.out(0) + ";\n";

                    }
                    else{
                        return getTab(tabCount) + "var " + name + " = null;\n";

                    }
                };
                p.convertResolve = function (tabCount){
                    this.operand0.owner = owner;
                    var result = getTab(tabCount) + this.operand0.out(tabCount) + ";\n";
                    return result;
                };
                p.convertRet = function (tabCount){
                    if(this.operand0){
                        this.operand0.owner = owner;
                        return getTab(tabCount) + "return " + this.operand0.out(tabCount) + ";\n";

                    }
                    else{
                        return getTab(tabCount) + "return;\n";

                    }
                };
                p.convertCallFunction = function (tabCount){
                    this.operand0.owner = owner;
                    return getTab(tabCount) + this.operand0.out(tabCount) + ";\n";
                };
                p.convertCallIf = function (tabCount){
                    this.operand0.owner = owner;
                    return this.operand0.out(tabCount) + "\n";
                };
                p.convertCallFor = function (tabCount){
                    this.operand0.owner = owner;
                    return this.operand0.out(tabCount) + "\n";
                };
                p.convertCallForSimple = function (tabCount){
                    this.operand0.owner = owner;
                    return this.operand0.out(tabCount) + "\n";
                };
                p.convertContinue = function (tabCount){
                    return getTab(tabCount) + "continue;\n";
                };
                p.convertBreak = function (tabCount){
                    return getTab(tabCount) + "break;\n";
                };
                p.convertCallWhile = function (tabCount){
                    this.operand0.owner = owner;
                    return this.operand0.out(tabCount) + "\n";
                };
                p.convertCallSwitch = function (tabCount){
                    this.operand0.owner = owner;
                    return this.operand0.out(tabCount) + "\n";
                };
                p.convertCallForeach = function (tabCount){
                    this.operand0.owner = owner;
                    return this.operand0.out(tabCount) + "\n";
                };
                p.convertCallForin = function (tabCount){
                    this.operand0.owner = owner;
                    return this.operand0.out(tabCount) + "\n";
                };
                p.convertTry = function (tabCount){
                    this.operand0.owner = owner;
                    return this.operand0.out(tabCount) + "\n";
                };
                p.convertThrow = function (tabCount){
                    this.operand0.owner = owner;
                    return getTab(tabCount) + this.operand0.out(tabCount) + ";\n";
                };
                p.convertNew = function (tabCount){
                    this.operand0.owner = owner;
                    return getTab(tabCount) + this.operand0.out(tabCount) + ";\n";
                };
                p.convertSuper = function (tabCount){
                    this.operand0.owner = owner;
                    return getTab(tabCount) + this.operand0.out(tabCount) + ";\n";
                };
                p.convertDelete = function (tabCount){
                    this.operand0.owner = owner;
                    return getTab(tabCount) + this.operand0.out(tabCount) + ";\n";
                };
                p[".init"] = function (){
                    this._opcode = null;
                    this._operand0 = null;
                    this._operand1 = null;
                    this._value = null;
                };
                d(p,"opcode",p[".getopcode"],null);
                d(p,"operand0",p[".getoperand0"],null);
                d(p,"operand1",p[".getoperand1"],null);
                d(p,"value",p[".getvalue"],null);
                return CodeInstruction;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeInstruction = CodeInstruction;
            egret.registerClass(CodeInstruction,"how.as2js.codeDom.CodeInstruction");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeObject = (function (_super) {
                __extends(CodeObject, _super);
                var d = __define,c=CodeObject;p=c.prototype;
                function CodeObject(breviary,line){
                    breviary = breviary!=null||breviary!=undefined?breviary:null;
                    line = line!=null||line!=undefined?line:0;
                    if(breviary){
                        this.stackInfo = new how.as2js.error.StackInfo(breviary,line);

                    }
                };
                p.outJS = function (tabCount){
                    return "";
                };
                p.out = function (tabCount){
                    if(how.as2js.Config.modol == 0){
                        return this.outJS(tabCount);

                    }
                    else if(how.as2js.Config.modol == 1){
                        return this.outEgret(tabCount);

                    }
                    else if(how.as2js.Config.modol == 2){
                        return this.outCocos(tabCount);

                    }
                    return "";
                };
                p.outCocos = function (tabCount){
                    return this.outJS(tabCount);
                };
                p.outEgret = function (tabCount){
                    return this.outJS(tabCount);
                };
                p.getTab = function (tabCount){
                    var tab = "";
                    if(how.as2js.Config.oneLine){
                        for(var i = 0;i < tabCount;i++){
                            tab += how.as2js.Config.tab;
                        }

                    }
                    return tab;
                };
                p.getLeftBrace = function (tabCount){
                    if(how.as2js.Config.leftBraceNextLine){
                        return how.as2js.Config.nextLine + this.getTab(tabCount) + "{\n";

                    }
                    else{
                        return "{\n";

                    }
                };
                p[".init"] = function (){
                    this.not = null;
                    this.negative = null;
                    this.stackInfo = null;
                    this.owner = null;
                    this.insertString = "";
                };
                return CodeObject;
            })();
            how.as2js.codeDom.CodeObject = CodeObject;
            egret.registerClass(CodeObject,"how.as2js.codeDom.CodeObject");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeScriptObject = (function (_super) {
                __extends(CodeScriptObject, _super);
                var d = __define,c=CodeScriptObject;p=c.prototype;
                function CodeScriptObject(obj){
                    this.object = obj;
                };
                p.out = function (tabCount){
                    var result = "";
                    if(this.object instanceof Number){
                        result = parseFloat(this.object + "") + "";

                    }
                    else if(this.object instanceof String){
                        result = "\"" + this.object + "\"";
                        var stringRegExp = new RegExp("(?<=\").*(?=\")","s");
                        var regExpResult = stringRegExp.exec(result);
                        if(regExpResult && regExpResult.length && regExpResult[0].indexOf("\"") != 1){
                            regExpResult[0] = regExpResult[0].replace(new RegExp("\"","g"),"\\"");
                            result = "\"" + regExpResult[0] + "\"";

                        }
                        result = result.replace(new RegExp("\n","g"),"\n");
                        result = result.replace(new RegExp("\r","g"),"\r");
                        result = result.replace(new RegExp("\t","g"),"\t");

                    }
                    else{
                        result = this.object + "";

                    }
                    return result;
                };
                p[".init"] = function (){
                    this.object = null;
                };
                return CodeScriptObject;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeScriptObject = CodeScriptObject;
            egret.registerClass(CodeScriptObject,"how.as2js.codeDom.CodeScriptObject");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeClass = (function (_super) {
                __extends(CodeClass, _super);
                var d = __define,c=CodeClass;p=c.prototype;
                p[".getclassPath"] = function (){
                    if(this.packAge.length){
                        return this.packAge + "." + this.name;

                    }
                    else{
                        return this.name;

                    }
                };
                p.outClass = function (runTime){
                    this.runTime = runTime;
                    return this.out(0);
                };
                p.out = function (tabCount){
                    tabCount++;
                    this.setTempData();
                    return this.getBody(tabCount);
                };
                p.getBody = function (tabCount){
                    return this.toPackage(tabCount - 1) + this.packAge +  + this.name + " = " + this.toParent() + ".extend" +  + "({\n" + this.toBindFunction(tabCount) + this.toVariable(tabCount) + this.toFunction(tabCount) + "})\n" + this.toGetSetFunction(tabCount - 1) + this.toStaticVariable(tabCount - 1) + this.toStaticFunction(tabCount - 1);
                };
                p.toParent = function (){
                    if(this.parent){
                        return ;

                    }
                    else{
                        return "Class";

                    }
                };
                p.toPackage = function (tabCount){
                    var result = "";
                    if(this.packAge.length){
                        var packs = this.packAge.split(".");
                        result = "" + packs[0] + " = " + packs[0] + " || {};\n";
                        this.tempData.thisTempData[packs[0]] = null;
                        if(packs.length > 1){
                            var pack = packs[0] + ".";
                            for(var i = 1;i < packs.length;i++){
                                result = getTab(tabCount) + result + pack + packs[i] + " = " + pack + packs[i] + " || {};\n";
                                pack += packs[i] + ".";
                            }

                        }

                    }
                    return result;
                };
                p.toImport = function (tabCount){
                    var importString = "";
                    if(this.packAge){
                        this.imports.push(this.packAge + "." + this.name);

                    }
                    for(var i = 0;i < this.imports.length;i++){
                        var importItems = this.imports[i].split(".");
                        this.tempData.importTempData[importItems[[object CodeOperator]]] = this.imports[i];
                    }
                    return getTab(tabCount) + "import:function()" + getLeftBrace(tabCount) + importString + getTab(tabCount) + "},\n";
                };
                p.setTempData = function (){
                    this.tempData.tempData = new flash.utils.Dictionary();
                    this.tempData.thisTempData = new flash.utils.Dictionary();
                    this.tempData.staticTempData = new flash.utils.Dictionary();
                    this.tempData.importTempData = new flash.utils.Dictionary();
                    this.tempData.staticTempData..this = this.packAge +  + this.name;
                    for(var i = 0;i < this.variables.length;i++){
                        if(this.variables[i].isStatic){
                            this.tempData.thisTempData[this.variables[i].key] = null;

                        }
                        else{
                            this.tempData.staticTempData[this.variables[i].key] = null;

                        }
                    }
                    for(i = 0;i < this.functions.length;i++){
                        var funName = this.functions[i].name;
                        if(this.functions[i].IsStatic && this.functions[i].name != this.name){
                            if(this.functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_GET){
                                this.tempData.thisTempData[[object CodeCallFunction]] = null;

                            }
                            else if(this.functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_SET){
                                this.tempData.thisTempData[[object CodeCallFunction]] = null;

                            }
                            else{
                                this.tempData.thisTempData[funName] = null;

                            }

                        }
                        else{
                            if(this.functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_GET){
                                this.tempData.staticTempData[[object CodeCallFunction]] = null;

                            }
                            else if(this.functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_SET){
                                this.tempData.staticTempData[[object CodeCallFunction]] = null;

                            }
                            else{
                                this.tempData.staticTempData[funName] = null;

                            }

                        }
                    }
                    var importString = "";
                    if(this.packAge){
                        this.imports.push(this.packAge + "." + this.name);

                    }
                    for(i = 0;i < this.imports.length;i++){
                        var importItems = this.imports[i].split(".");
                        this.tempData.importTempData[importItems[[object CodeOperator]]] = this.imports[i];
                    }
                    var samePackageClass = this.runTime.getClasses(this.packAge);
                    for(var j = 0;j < samePackageClass.length;j++){
                        this.tempData.importTempData[samePackageClass[j].name] = samePackageClass[j].classPath;
                    }
                    if(this.parent){
                        this.copyTemData();

                    }
                };
                p.copyTemData = function (){
                    var parentClass = this.runTime.getClass(this.tempData.importTempData[this.parent],this.parent);
                    if(parentClass){
                        return;

                    }
                    for(var i = 0;i < parentClass.functions.length;i++){
                        if(this.tempData.thisTempData.hasOwnProperty(parentClass.functions[i].name) && parentClass.functions[i].name != parentClass.name && parentClass.functions[i].IsStatic){
                            this.tempData.thisTempData[parentClass.functions[i].name] = parentClass.functions[i].name;

                        }
                    }
                    for(var j = 0;j < parentClass.variables.length;j++){
                        if(this.tempData.thisTempData.hasOwnProperty(parentClass.variables[j].key) && parentClass.variables[j].isStatic){
                            this.tempData.thisTempData[parentClass.variables[j].key] = parentClass.variables[j].key;

                        }
                    }
                };
                p.toVariable = function (tabCount){
                    var variableString = "";
                    for(var i = 0;i < this.variables.length;i++){
                        if(this.variables[i].isStatic){
                            var value = ;
                            variableString += getTab(tabCount) + this.variables[i].key + ":" + value + ",\n";

                        }
                    }
                    return variableString;
                };
                p.toFunction = function (tabCount){
                    var functionString = "";
                    for(var i = 0;i < this.functions.length;i++){
                        if(this.functions[i].IsStatic){
                            this.functions[i].executable.tempData = this.tempData;
                            this.functions[i].isCtor = this.functions[i].name == this.name;
                            if(this.functions[i].isCtor){
                                this.functions[i].insertString = this.toInsertFunction(tabCount + 1);

                            }
                            var funName = ;
                            funName = this.functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_GET || this.functions[i].type == ;
                            functionString += getTab(tabCount) + funName + ":" + this.functions[i].out(tabCount) + ",\n";

                        }
                    }
                    return functionString;
                };
                p.toStaticVariable = function (tabCount){
                    var variableString = "";
                    for(var i = 0;i < this.variables.length;i++){
                        if(this.variables[i].isStatic){
                            var value = ;
                            variableString += getTab(tabCount) + this.packAge +  + this.name + "." + this.variables[i].key + " = " + value + ";\n";

                        }
                    }
                    return variableString;
                };
                p.toStaticFunction = function (tabCount){
                    var functionString = "";
                    for(var i = 0;i < this.functions.length;i++){
                        if(this.functions[i].IsStatic){
                            this.functions[i].executable.tempData = new how.as2js.codeDom.temp.TempData();
                            this.functions[i].executable.tempData.staticTempData = new flash.utils.Dictionary();
                            this.functions[i].executable.tempData.thisTempData = this.tempData.staticTempData;
                            this.functions[i].executable.tempData.importTempData = this.tempData.importTempData;
                            var funName = this.functions[i].name;
                            functionString += getTab(tabCount) + this.packAge +  + this.name + "[\"" + funName + "\"] = " + this.functions[i].out(tabCount) + "\n";

                        }
                    }
                    return functionString;
                };
                p.toBindFunction = function (tabCount){
                    if(how.as2js.Config.bind){
                        return "";

                    }
                    var bindString = "";
                    for(var i = 0;i < this.functions.length;i++){
                        var funName = this.functions[i].name;
                        if(this.functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_NORMAL && this.functions[i].name != this.name){
                            bindString += getTab(tabCount + 1) + "this." + funName + " = " + "this." + funName + ".bind(this);\n";

                        }
                    }
                    return getTab(tabCount) + "binds:function()" + getLeftBrace(tabCount) + bindString + getTab(tabCount) + "},\n";
                };
                p.toInsertFunction = function (tabCount){
                    var insertString = "";
                    if(how.as2js.Config.bind){
                        insertString += getTab(tabCount) + "this.binds();\n";

                    }
                    return insertString;
                };
                p.toGetSetFunction = function (tabCount){
                    var functionString = "";
                    var gets = new Vector();
                    var sets = new Vector();
                    for(var i = 0;i < this.functions.length;i++){
                        var funName = this.functions[i].name;
                        if(this.functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_GET){
                            var getString = null;
                            if(sets.indexOf(this.getSetString(tabCount,funName.replace(".get",".set"),this.functions[i].IsStatic)) != 1){
                                getString = this.getSetString(tabCount,funName.replace(".get",".set"),this.functions[i].IsStatic).replace(",null","," + this.packAge +  + this.name +  + "[\"" + funName + "\"]");
                                functionString = functionString.replace(this.getSetString(tabCount,funName.replace(".get",".set"),this.functions[i].IsStatic),"");

                            }
                            else{
                                getString = this.getGetString(tabCount,funName,this.functions[i].IsStatic);

                            }
                            if(gets.indexOf(this.getGetString(tabCount,funName,this.functions[i].IsStatic)) == 1){
                                gets.push(getString);
                                functionString += getString;

                            }

                        }
                        if(this.functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_SET){
                            var setString = null;
                            if(gets.indexOf(this.getGetString(tabCount,funName.replace(".set",".get"),this.functions[i].IsStatic)) != 1){
                                setString = this.getGetString(tabCount,funName.replace(".set",".get"),this.functions[i].IsStatic).replace(",null","," + this.packAge +  + this.name +  + "[\"" + funName + "\"]");
                                functionString = functionString.replace(this.getGetString(tabCount,funName.replace(".set",".get"),this.functions[i].IsStatic),"");

                            }
                            else{
                                setString = this.getSetString(tabCount,funName,this.functions[i].IsStatic);

                            }
                            if(sets.indexOf(this.getSetString(tabCount,funName,this.functions[i].IsStatic)) == 1){
                                sets.push(setString);
                                functionString += setString;

                            }

                        }
                    }
                    return functionString;
                };
                p.getGetString = function (tabCount,funName,isStatic){
                    return getTab(tabCount) + "Object.defineProperty(" + this.packAge +  + this.name +  + ",\"" + funName.replace(".get","") + "\"," + this.packAge + "." + this.name + ".prototype[\"" + funName + "\"],null);\n";
                };
                p.getSetString = function (tabCount,funName,isStatic){
                    return getTab(tabCount) + "Object.defineProperty(" + this.packAge +  + this.name +  + ",\"" + funName.replace(".set","") + "\",null," + this.packAge + "." + this.name + ".prototype[\"" + funName + "\"]);\n";
                };
                p[".init"] = function (){
                    this.modifierType = null;
                    this.name = null;
                    this.parent = null;
                    this.packAge = null;
                    this.isDynamic = null;
                    this.isFinal = null;
                    this.imports = new Vector();
                    this.variables = new Vector();
                    this.functions = new Vector();
                    this.tempData = new how.as2js.codeDom.temp.TempData();
                    this.runTime = null;
                };
                d(p,"classPath",p[".getclassPath"],null);
                return CodeClass;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeClass = CodeClass;
            egret.registerClass(CodeClass,"how.as2js.codeDom.CodeClass");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeEgret = (function (_super) {
                __extends(CodeEgret, _super);
                var d = __define,c=CodeEgret;p=c.prototype;
                function CodeEgret(){
                    _super.call(this);
                    this[".init"]();
                };
                p.toParent = function (){
                    if(parent){
                        return ;

                    }
                    else{
                        return "";

                    }
                };
                p.out = function (tabCount){
                    setTempData();
                    var packageData = this.toEgretPackage(tabCount);
                    tabCount++;
                    return packageData[0] + this.getBody(packageData[2]) + packageData[1];
                };
                p.getBody = function (tabCount){
                    return getTab(tabCount) + name + " = (function (_super) {\n" + getTab(tabCount + 1) + "__extends(" + name + ", _super);\n" + getTab(tabCount + 1) + "var d = __define,c=" + name + ";p=c.prototype;\n" + this.toFunction(tabCount + 1) + this.toVariable(tabCount + 1) + this.toBindFunction(tabCount + 1) + this.toGetSetFunction(tabCount + 1) + this.toStaticVariable(tabCount + 1) + getTab(tabCount + 1) + "return " + name + ";\n" + getTab(tabCount) + "})(" + this.toParent() + ");\n" + getTab(tabCount) +  + getTab(tabCount) + "egret.registerClass(" + name + ",\"" + packAge +  + name + "\");";
                };
                p.toVariable = function (tabCount){
                    var variableString = "";
                    for(var i = 0;i < variables.length;i++){
                        if(variables[i].isStatic){
                            if(variables[i].value){
                                variables[i].value.owner = new how.as2js.codeDom.CodeExecutable(0);
                                variables[i].value.owner.tempData = tempData;

                            }
                            var value = ;
                            variableString += getTab(tabCount + 1) + "this." + variables[i].key + " = " + value + ";\n";

                        }
                    }
                    if(how.as2js.Config.bind){
                        variableString += getTab(tabCount + 1) + "this.binds();\n";

                    }
                    return getTab(tabCount) + "p[\".init\"] = " + "function ()" + getLeftBrace(tabCount) + variableString + getTab(tabCount) + "};\n";
                };
                p.toStaticVariable = function (tabCount){
                    var variableString = "";
                    for(var i = 0;i < variables.length;i++){
                        if(variables[i].isStatic){
                            if(variables[i].value){
                                variables[i].value.owner = new how.as2js.codeDom.CodeExecutable(0);
                                variables[i].value.owner.tempData = tempData;

                            }
                            var value = ;
                            variableString += getTab(tabCount) + name + "." + variables[i].key + " = " + value + ";\n";

                        }
                    }
                    return variableString;
                };
                p.toFunction = function (tabCount){
                    var functionString = "";
                    for(var i = 0;i < functions.length;i++){
                        if(functions[i].IsStatic){
                            functions[i].executable.tempData = tempData;
                            functions[i].isCtor = functions[i].name == name;
                            var funName = functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_GET || functions[i].type == ;
                            if(functions[i].isCtor){
                                functions[i].insertString = this.toVariable(tabCount + 1);
                                functionString += getTab(tabCount) + functions[i].out(tabCount) + ";\n";

                            }
                            else{
                                functionString += getTab(tabCount) + "p" + funName + " = " + functions[i].out(tabCount) + ";\n";

                            }

                        }
                        else{
                            functions[i].executable.tempData = new how.as2js.codeDom.temp.TempData();
                            functions[i].executable.tempData.staticTempData = new flash.utils.Dictionary();
                            functions[i].executable.tempData.thisTempData = tempData.staticTempData;
                            functions[i].executable.tempData.importTempData = tempData.importTempData;
                            functionString += getTab(tabCount) + name + funName + " = " + functions[i].out(tabCount) + ";\n";

                        }
                    }
                    return functionString;
                };
                p.toBindFunction = function (tabCount){
                    if(how.as2js.Config.bind){
                        return "";

                    }
                    var bindString = "";
                    for(var i = 0;i < functions.length;i++){
                        var funName = functions[i].name;
                        if(functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_NORMAL && functions[i].name != name){
                            bindString += getTab(tabCount + 1) + "this." + funName + " = " + "this." + funName + ".bind(this);\n";

                        }
                    }
                    return getTab(tabCount) + "p.binds = function()" + getLeftBrace(tabCount) + bindString + getTab(tabCount) + "},\n";
                };
                p.toEgretPackage = function (tabCount){
                    var frist = "";
                    var last = "";
                    var newTabCount = tabCount;
                    if(packAge.length){
                        var packs = packAge.split(".");
                        if(packs.length > 1){
                            var pack = "";
                            for(var i = 0;i < packs.length;i++){
                                var path = pack + packs[i];
                                frist = frist + getTab(tabCount + i) + "(function(" + packs[i] + "){\n";
                                last = "\n" + getTab(tabCount + i) + "})(" + path + " || (" + path + " = {}));" + last;
                                pack += packs[i] + ".";
                                newTabCount++;
                            }

                        }

                    }
                    return [frist,last,newTabCount,];
                };
                p.toGetSetFunction = function (tabCount){
                    var functionString = "";
                    var gets = new Vector();
                    var sets = new Vector();
                    for(var i = 0;i < functions.length;i++){
                        var funName = functions[i].name;
                        if(functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_GET){
                            var getString = null;
                            if(sets.indexOf(this.getSetString(tabCount,funName.replace(".get",".set"),functions[i].IsStatic)) != 1){
                                getString = this.getSetString(tabCount,funName.replace(".get",".set"),functions[i].IsStatic).replace(",null","," + packAge +  + name +  + "[\"" + funName + "\"]");
                                functionString = functionString.replace(this.getSetString(tabCount,funName.replace(".get",".set"),functions[i].IsStatic),"");

                            }
                            else{
                                getString = this.getGetString(tabCount,funName,functions[i].IsStatic);

                            }
                            if(gets.indexOf(this.getGetString(tabCount,funName,functions[i].IsStatic)) == 1){
                                gets.push(getString);
                                functionString += getString;

                            }

                        }
                        if(functions[i].type == how.as2js.codeDom.CodeFunction.TYPE_SET){
                            var setString = null;
                            if(gets.indexOf(this.getGetString(tabCount,funName.replace(".set",".get"),functions[i].IsStatic)) != 1){
                                setString = this.getGetString(tabCount,funName.replace(".set",".get"),functions[i].IsStatic).replace(",null","," + packAge +  + name +  + "[\"" + funName + "\"]");
                                functionString = functionString.replace(this.getGetString(tabCount,funName.replace(".set",".get"),functions[i].IsStatic),"");

                            }
                            else{
                                setString = this.getSetString(tabCount,funName,functions[i].IsStatic);

                            }
                            if(sets.indexOf(this.getSetString(tabCount,funName,functions[i].IsStatic)) == 1){
                                sets.push(setString);
                                functionString += setString;

                            }

                        }
                    }
                    return functionString;
                };
                p.getGetString = function (tabCount,funName,isStatic){
                    return getTab(tabCount) + "d(p" + ",\"" + funName.replace(".get","") + "\"," + "p[\"" + funName + "\"],null);\n";
                };
                p.getSetString = function (tabCount,funName,isStatic){
                    return getTab(tabCount) + "d(p" + ",\"" + funName.replace(".set","") + "\",null," + "p[\"" + funName + "\"]);\n";
                };
                p[".init"] = function (){
                };
                return CodeEgret;
            })(how.as2js.codeDom.CodeClass);
            how.as2js.codeDom.CodeEgret = CodeEgret;
            egret.registerClass(CodeEgret,"how.as2js.codeDom.CodeEgret");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeFor = (function (_super) {
                __extends(CodeFor, _super);
                var d = __define,c=CodeFor;p=c.prototype;
                function CodeFor(){
                };
                p.SetContextExecutable = function (blockExecutable){
                    this.blockExecutable = blockExecutable;
                };
                p.out = function (tabCount){
                    if(this.beginExecutable){
                        this.beginExecutable.parent = owner;
                        this.beginExecutable.owner = owner;
                        this.beginExecutable.tempData = owner.tempData;

                    }
                    if(this.condition){
                        this.condition.owner = owner;

                    }
                    if(this.loopExecutable){
                        this.loopExecutable.parent = owner;
                        this.loopExecutable.owner = owner;
                        this.loopExecutable.tempData = owner.tempData;

                    }
                    if(this.blockExecutable){
                        this.blockExecutable.parent = owner;
                        this.blockExecutable.owner = owner;
                        this.blockExecutable.tempData = owner.tempData;

                    }
                    return getTab(tabCount) + "for(" +  + ";" +  + ";" +  + ")" + getLeftBrace(tabCount) +  + getTab(tabCount) + "}";
                };
                p[".init"] = function (){
                    this.beginExecutable = null;
                    this.condition = null;
                    this.loopExecutable = null;
                    this.blockExecutable = null;
                };
                return CodeFor;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeFor = CodeFor;
            egret.registerClass(CodeFor,"how.as2js.codeDom.CodeFor");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeCocos = (function (_super) {
                __extends(CodeCocos, _super);
                var d = __define,c=CodeCocos;p=c.prototype;
                p.toParent = function (){
                    if(parent){
                        return ;

                    }
                    else{
                        return "cc.Class";

                    }
                };
                p[".init"] = function (){
                };
                return CodeCocos;
            })(how.as2js.codeDom.CodeClass);
            how.as2js.codeDom.CodeCocos = CodeCocos;
            egret.registerClass(CodeCocos,"how.as2js.codeDom.CodeCocos");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(codeDom){
            CodeNew = (function (_super) {
                __extends(CodeNew, _super);
                var d = __define,c=CodeNew;p=c.prototype;
                function CodeNew(){
                };
                p.out = function (tabCount){
                    this.newObject.owner = owner;
                    return "new " + this.newObject.out(tabCount);
                };
                p[".init"] = function (){
                    this.newObject = null;
                };
                return CodeNew;
            })(how.as2js.codeDom.CodeObject);
            how.as2js.codeDom.CodeNew = CodeNew;
            egret.registerClass(CodeNew,"how.as2js.codeDom.CodeNew");
        })(how.as2js.codeDom || (how.as2js.codeDom = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(compiler){
            Token = (function (_super) {
                __extends(Token, _super);
                var d = __define,c=Token;p=c.prototype;
                p[".getType"] = function (){
                    return this._Type;
                };
                p[".getLexeme"] = function (){
                    return this._lexeme;
                };
                p[".getSourceLine"] = function (){
                    return this._sourceLine;
                };
                p[".getSourceChar"] = function (){
                    return this._sourceChar;
                };
                function Token(tokenType,lexeme,sourceLine,sourceChar){
                    this._Type = tokenType;
                    this._lexeme = lexeme;
                    this._sourceLine = sourceLine;
                    this._sourceChar = sourceChar;
                };
                p.toString = function (){
                    return how.as2js.compiler.TokenType.getTypeName(this._Type) + ":" + this._lexeme.toString();
                };
                p[".init"] = function (){
                    this._Type = null;
                    this._lexeme = null;
                    this._sourceLine = null;
                    this._sourceChar = null;
                };
                d(p,"Type",p[".getType"],null);
                d(p,"Lexeme",p[".getLexeme"],null);
                d(p,"SourceLine",p[".getSourceLine"],null);
                d(p,"SourceChar",p[".getSourceChar"],null);
                return Token;
            })();
            how.as2js.compiler.Token = Token;
            egret.registerClass(Token,"how.as2js.compiler.Token");
        })(how.as2js.compiler || (how.as2js.compiler = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(compiler){
            LexState = (function (_super) {
                __extends(LexState, _super);
                var d = __define,c=LexState;p=c.prototype;
                p[".init"] = function (){
                };
                LexState.None = 1;
                LexState.AssignOrEqual = 1;
                LexState.CommentOrDivideOrAssignDivide = 2;
                LexState.LineComment = 3;
                LexState.BlockCommentStart = 4;
                LexState.BlockCommentEnd = 5;
                LexState.PeriodOrParams = 6;
                LexState.Params = 7;
                LexState.PlusOrIncrementOrAssignPlus = 8;
                LexState.MinusOrDecrementOrAssignMinus = 9;
                LexState.MultiplyOrAssignMultiply = 10;
                LexState.ModuloOrAssignModulo = 11;
                LexState.AndOrCombine = 12;
                LexState.OrOrInclusiveOr = 13;
                LexState.XorOrAssignXor = 14;
                LexState.ShiOrAssignShi = 15;
                LexState.ShrOrAssignShr = 16;
                LexState.NotOrNotEqual = 17;
                LexState.GreaterOrGreaterEqual = 18;
                LexState.LessOrLessEqual = 19;
                LexState.String = 20;
                LexState.StringEscape = 21;
                LexState.SingleString = 22;
                LexState.SingleStringEscape = 23;
                LexState.SimpleStringStart = 24;
                LexState.SimpleString = 25;
                LexState.SimpleStringQuotationMarkOrOver = 26;
                LexState.SingleSimpleString = 27;
                LexState.SingleSimpleStringQuotationMarkOrOver = 28;
                LexState.NumberOrHexNumber = 29;
                LexState.Number = 30;
                LexState.HexNumber = 31;
                LexState.Identifier = 32;
                return LexState;
            })();
            how.as2js.compiler.LexState = LexState;
            egret.registerClass(LexState,"how.as2js.compiler.LexState");
        })(how.as2js.compiler || (how.as2js.compiler = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(compiler){
            ScriptParser = (function (_super) {
                __extends(ScriptParser, _super);
                var d = __define,c=ScriptParser;p=c.prototype;
                function ScriptParser(listTokens,strBreviary){
                    this.m_strBreviary = strBreviary;
                    this.m_iNextToken = 0;
                    this.m_listTokens = listTokens.concat();
                };
                p.Parse = function (){
                    if(how.as2js.Config.modol == 0){
                        this.codeClass = new how.as2js.codeDom.CodeClass();

                    }
                    else if(how.as2js.Config.modol == 1){
                        this.codeClass = new how.as2js.codeDom.CodeEgret();

                    }
                    else if(how.as2js.Config.modol == 2){
                        this.codeClass = new how.as2js.codeDom.CodeCocos();

                    }
                    this.ReadPackage();
                    this.codeClass.packAge = this.GetPackageName();
                    this.ReadLeftBrace();
                    this.codeClass.imports = this.GetImports();
                    this.codeClass.modifierType = this.GetModifierType();
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Function){

                    }
                    else{
                        this.codeClass.isFinal = this.GetFinal();
                        this.codeClass.isDynamic = this.GetDynamic();
                        this.ReadClass();
                        this.codeClass.name = this.ReadIdentifier();
                        this.codeClass.parent = this.GetExtend();
                        this.GetMembers(this.codeClass);

                    }
                    this.ReadRightBrace();
                    return this.codeClass;
                };
                p.GetImports = function (){
                    var imports = new Vector();
                    while(this.PeekToken().Type == how.as2js.compiler.TokenType.Import){
                        this.ReadToken();
                        var importItem = this.ReadIdentifier();
                        while(this.PeekToken().Type == how.as2js.compiler.TokenType.Period){
                            this.ReadToken();
                            importItem += "." + this.ReadIdentifier();

                        }
                        imports.push(importItem);
                        if(this.PeekToken().Type == how.as2js.compiler.TokenType.SemiColon){
                            this.ReadToken();

                        }

                    }
                    return imports;
                };
                p.GetPackageName = function (){
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Identifier){
                        var packageName = this.ReadIdentifier();
                        while(this.PeekToken().Type == how.as2js.compiler.TokenType.Period){
                            this.ReadToken();
                            packageName += "." + this.ReadIdentifier();

                        }
                        return packageName;

                    }
                    return "";
                };
                p.GetModifierType = function (){
                    var token = this.ReadToken();
                    if(token.Type == how.as2js.compiler.TokenType.Public || token.Type == how.as2js.compiler.TokenType.Protected || token.Type == how.as2js.compiler.TokenType.Internal || token.Type == how.as2js.compiler.TokenType.Private){
                        return token.Type;

                    }
                    else{
                        this.UndoToken();
                        return how.as2js.compiler.TokenType.Internal;

                    }
                };
                p.GetFinal = function (){
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Final){
                        this.ReadToken();
                        return true;

                    }
                    return false;
                };
                p.GetDynamic = function (){
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Dynamic){
                        this.ReadToken();
                        return true;

                    }
                    return false;
                };
                p.GetExtend = function (){
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Extends){
                        this.ReadToken();
                        return this.ReadIdentifier();

                    }
                    return null;
                };
                p.GetMembers = function (thisCodeClass){
                    thisCodeClass = thisCodeClass!=null||thisCodeClass!=undefined?thisCodeClass:null;
                    var codeClass = thisCodeClass == ;
                    this.ReadLeftBrace();
                    while(this.PeekToken().Type != how.as2js.compiler.TokenType.RightBrace){
                        var token = this.ReadToken();
                        var modifierType = how.as2js.compiler.TokenType.Private;
                        var isStatic = false;
                        var isConst = false;
                        var isOverride = false;
                        var type = null;
                        if(token.Type == how.as2js.compiler.TokenType.Static){
                            isStatic = true;
                            token = this.ReadToken();

                        }
                        if(token.Type == how.as2js.compiler.TokenType.Override){
                            isOverride = true;
                            token = this.ReadToken();

                        }
                        if(token.Type == how.as2js.compiler.TokenType.Public || token.Type == how.as2js.compiler.TokenType.Private || token.Type == how.as2js.compiler.TokenType.Protected || token.Type == how.as2js.compiler.TokenType.Internal){
                            modifierType = token.Type;
                            token = this.ReadToken();

                        }
                        if(token.Type == how.as2js.compiler.TokenType.Override){
                            isOverride = true;
                            token = this.ReadToken();

                        }
                        if(token.Type == how.as2js.compiler.TokenType.Static){
                            isStatic = true;
                            token = this.ReadToken();

                        }
                        if(token.Type == how.as2js.compiler.TokenType.Var){
                            token = this.ReadToken();

                        }
                        if(token.Type == how.as2js.compiler.TokenType.Const){
                            isConst = true;
                            token = this.ReadToken();

                        }
                        if(token.Type == how.as2js.compiler.TokenType.Identifier){
                            var next = this.ReadToken();
                            if(next.Type == how.as2js.compiler.TokenType.Colon){
                                type = this.GetOneObject();
                                next = this.ReadToken();

                            }
                            if(next.Type == how.as2js.compiler.TokenType.Assign){
                                if(next.Type == how.as2js.compiler.TokenType.New){
                                    codeClass.variables.push(new how.as2js.codeDom.CodeVariable(token.Lexeme,this.GetNew(),modifierType,isStatic,isConst,isOverride,type));

                                }
                                else if(token.Lexeme instanceof int){
                                    codeClass.variables.push(new how.as2js.codeDom.CodeVariable(parseInt(token.Lexeme.toString()),this.GetObject(),modifierType,isStatic,isConst,isOverride,type));

                                }
                                else if(token.Lexeme instanceof Number){
                                    codeClass.variables.push(new how.as2js.codeDom.CodeVariable(parseFloat(token.Lexeme.toString()),this.GetObject(),modifierType,isStatic,isConst,isOverride,type));

                                }
                                else{
                                    codeClass.variables.push(new how.as2js.codeDom.CodeVariable(token.Lexeme,this.GetObject(),modifierType,isStatic,isConst,isOverride,type));

                                }
                                var peek = this.PeekToken();
                                if(peek.Type == how.as2js.compiler.TokenType.Comma || peek.Type == how.as2js.compiler.TokenType.SemiColon){
                                    this.ReadToken();

                                }

                            }
                            else{
                                codeClass.variables.push(new how.as2js.codeDom.CodeVariable(token.Lexeme,null,modifierType,isStatic,isConst,isOverride,type));
                                peek = this.PeekToken();
                                if(peek.Type == how.as2js.compiler.TokenType.Comma || peek.Type == how.as2js.compiler.TokenType.SemiColon){
                                    this.ReadToken();

                                }

                            }

                        }
                        else if(token.Type == how.as2js.compiler.TokenType.Function){
                            this.UndoToken();
                            codeClass.functions.push(this.ParseFunctionDeclaration(isStatic));

                        }
                        else{
                            throw new how.as2js.error.ParseError(token,"Table开始关键字必须为[变量名称]或者[function]关键字");

                        }

                    }
                    this.ReadRightBrace();
                    return codeClass;
                };
                p.GetNew = function (executable){
                    executable = executable!=null||executable!=undefined?executable:null;
                    var ret = new how.as2js.codeDom.CodeNew();
                    ret.newObject = this.GetObject();
                    return ret;
                };
                p.GetOneObject = function (){
                    var ret = null;
                    var token = this.ReadToken();
                    var not = false;
                    var negative = false;
                    var calc = how.as2js.codeDom.CALC.NONE;
                    if(token.Type == how.as2js.compiler.TokenType.Not){
                        not = true;
                        token = this.ReadToken();

                    }
                    else if(token.Type == how.as2js.compiler.TokenType.Minus){
                        negative = true;
                        token = this.ReadToken();

                    }
                    else if(token.Type == how.as2js.compiler.TokenType.Increment){
                        calc = how.as2js.codeDom.CALC.PRE_INCREMENT;
                        token = this.ReadToken();

                    }
                    else if(token.Type == how.as2js.compiler.TokenType.Decrement){
                        calc = how.as2js.codeDom.CALC.PRE_DECREMENT;
                        token = this.ReadToken();

                    }
                    switch(token.Type){
                        case how.as2js.compiler.TokenType.Super:
                            ret = new how.as2js.codeDom.CodeMember(null);
                            (ret instanceof how.as2js.codeDom.CodeMember)?ret:null).type = how.as2js.codeDom.CodeMember.TYPE_NULL;
                            break;
                        case how.as2js.compiler.TokenType.Identifier:
                            if(token.Lexeme == "Vector"){
                                if(this.PeekToken().Type == how.as2js.compiler.TokenType.Period){
                                    this.ReadToken();
                                    this.ReadToken();
                                    this.ReadToken();
                                    this.ReadToken();

                                }

                            }
                            ret = new how.as2js.codeDom.CodeMember(token.Lexeme.toString());
                            break;
                        case how.as2js.compiler.TokenType.Function:
                            this.UndoToken();
                            ret = this.ParseFunctionDeclaration(false);
                            break;
                        case how.as2js.compiler.TokenType.LeftPar:
                            ret = this.GetObject();
                            this.ReadRightParenthesis();
                            break;
                        case how.as2js.compiler.TokenType.LeftBracket:
                            this.UndoToken();
                            ret = this.GetArray();
                            break;
                        case how.as2js.compiler.TokenType.LeftBrace:
                            this.UndoToken();
                            ret = this.GetMembers();
                            break;
                        case how.as2js.compiler.TokenType.Null:
                        case how.as2js.compiler.TokenType.Boolean:
                        case how.as2js.compiler.TokenType.Number:
                        case how.as2js.compiler.TokenType.String:
                            ret = new how.as2js.codeDom.CodeScriptObject(token.Lexeme);
                            break;
                        case how.as2js.compiler.TokenType.New:
                            ret = this.GetNew();
                            break;
                        default:
                            throw new how.as2js.error.ParseError(token,"Object起始关键字错误 ");
                            break;

                    }
                    ret.stackInfo = new how.as2js.error.StackInfo(this.m_strBreviary,token.SourceLine);
                    ret = this.GetVariable(ret);
                    ret.not = not;
                    ret = this.GetTernary(ret);
                    ret.negative = negative;
                    if(ret instanceof how.as2js.codeDom.CodeMember){
                        if(calc != how.as2js.codeDom.CALC.NONE){
                            (ret instanceof how.as2js.codeDom.CodeMember)?ret:null).calc = calc;

                        }
                        else{
                            var peek = this.ReadToken();
                            if(peek.Type == how.as2js.compiler.TokenType.Increment){
                                calc = how.as2js.codeDom.CALC.POST_INCREMENT;

                            }
                            else if(peek.Type == how.as2js.compiler.TokenType.Decrement){
                                calc = how.as2js.codeDom.CALC.POST_DECREMENT;

                            }
                            else{
                                this.UndoToken();

                            }
                            if(calc != how.as2js.codeDom.CALC.NONE){
                                (ret instanceof how.as2js.codeDom.CodeMember)?ret:null).calc = calc;

                            }

                        }

                    }
                    else if(calc != how.as2js.codeDom.CALC.NONE){
                        throw new how.as2js.error.ParseError(token,"++ 或者 -- 只支持变量的操作");

                    }
                    return ret;
                };
                p.GetTernary = function (parent){
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.QuestionMark){
                        var ret = new how.as2js.codeDom.CodeTernary();
                        ret.allow = parent;
                        this.ReadToken();
                        ret.True = this.GetObject(false);
                        this.ReadColon();
                        ret.False = this.GetObject(false);
                        return ret;

                    }
                    return parent;
                };
                p.GetVariable = function (parent){
                    var ret = parent;
                    for(;;){
                        var m = this.ReadToken();
                        if(m.Type == how.as2js.compiler.TokenType.Period){
                            var identifier = this.ReadIdentifier();
                            ret = new how.as2js.codeDom.CodeMember(identifier,null,0,ret);

                        }
                        else if(m.Type == how.as2js.compiler.TokenType.LeftBracket){
                            var member = this.GetObject();
                            this.ReadRightBracket();
                            if(member instanceof how.as2js.codeDom.CodeScriptObject){
                                var obj = (member instanceof how.as2js.codeDom.CodeScriptObject)?member:null).object;
                                if(obj instanceof Number){
                                    ret = new how.as2js.codeDom.CodeMember(null,null,parseFloat(obj.toString()),ret);

                                }
                                else if(obj instanceof String){
                                    ret = new how.as2js.codeDom.CodeMember(obj.toString(),null,0,ret);

                                }
                                else{
                                    throw new how.as2js.error.ParseError(m,"获取变量只能是 number或string");

                                }

                            }
                            else{
                                ret = new how.as2js.codeDom.CodeMember(null,member,0,ret);

                            }

                        }
                        else if(m.Type == how.as2js.compiler.TokenType.LeftPar){
                            this.UndoToken();
                            ret = this.GetFunction(ret);

                        }
                        else{
                            this.UndoToken();
                            break;

                        }
                    }
                    return ret;
                };
                p.GetFunction = function (member){
                    var ret = new how.as2js.codeDom.CodeCallFunction();
                    this.ReadLeftParenthesis();
                    var pars = new Vector();
                    var token = this.PeekToken();
                    while(token.Type != how.as2js.compiler.TokenType.RightPar){
                        pars.push(this.GetObject());
                        token = this.PeekToken();
                        if(token.Type == how.as2js.compiler.TokenType.Comma){
                            this.ReadComma();

                        }
                        else if(token.Type == how.as2js.compiler.TokenType.RightPar){
                            break;

                        }
                        else{
                            throw new how.as2js.error.ParseError(token,"Comma ',' or right parenthesis ')' expected in function declararion.");

                        }

                    }
                    this.ReadRightParenthesis();
                    ret.member = member;
                    ret.parameters = pars;
                    return ret;
                };
                p.GetArray = function (){
                    this.ReadLeftBracket();
                    var token = this.PeekToken();
                    var ret = new how.as2js.codeDom.CodeArray();
                    while(token.Type != how.as2js.compiler.TokenType.RightBracket){
                        if(this.PeekToken().Type == how.as2js.compiler.TokenType.RightBracket){
                            break;

                        }
                        ret.elements.push(this.GetObject());
                        token = this.PeekToken();
                        if(token.Type == how.as2js.compiler.TokenType.Comma){
                            this.ReadComma();

                        }
                        else if(token.Type == how.as2js.compiler.TokenType.RightBracket){
                            break;

                        }
                        else{
                            throw new how.as2js.error.ParseError(token,"Comma ',' or right parenthesis ']' expected in array object.");

                        }

                    }
                    this.ReadRightBracket();
                    return ret;
                };
                p.GetObject = function (readColon){
                    readColon = readColon!=null||readColon!=undefined?readColon:true;
                    var operateStack = new Vector();
                    var objectStack = new Vector();
                    while(true){
                        objectStack.push(this.GetOneObject());
                        if(this.P_Operator(operateStack,objectStack)){
                            break;

                        }

                    }
                    while(true){
                        if(operateStack.length <= 0){
                            break;

                        }
                        var oper = operateStack.pop();
                        var binexp = new how.as2js.codeDom.CodeOperator(objectStack.pop(),objectStack.pop(),oper.operator);
                        objectStack.push(binexp);

                    }
                    var ret = objectStack.pop();
                    if(ret instanceof how.as2js.codeDom.CodeMember){
                        var member = (ret instanceof how.as2js.codeDom.CodeMember)?ret:null);
                        if(member.calc == how.as2js.codeDom.CALC.NONE){
                            var token = this.ReadToken();
                            if(token.Type == how.as2js.compiler.TokenType.Colon && readColon){
                                member.memType = this.GetOneObject();
                                token = this.ReadToken();

                            }
                            switch(token.Type){
                                case how.as2js.compiler.TokenType.Assign:
                                case how.as2js.compiler.TokenType.AssignPlus:
                                case how.as2js.compiler.TokenType.AssignMinus:
                                case how.as2js.compiler.TokenType.AssignMultiply:
                                case how.as2js.compiler.TokenType.AssignDivide:
                                case how.as2js.compiler.TokenType.AssignModulo:
                                case how.as2js.compiler.TokenType.AssignCombine:
                                case how.as2js.compiler.TokenType.AssignInclusiveOr:
                                case how.as2js.compiler.TokenType.AssignXOR:
                                case how.as2js.compiler.TokenType.AssignShr:
                                case how.as2js.compiler.TokenType.AssignShi:
                                    return new how.as2js.codeDom.CodeAssign(member,this.GetObject(),token.Type,this.m_strBreviary,token.SourceLine);
                                    break;
                                default:
                                    this.UndoToken();
                                    break;

                            }

                        }

                    }
                    var nextToken = this.ReadToken();
                    if(nextToken.Type == how.as2js.compiler.TokenType.Is || nextToken.Type == how.as2js.compiler.TokenType.As){
                        ret = new how.as2js.codeDom.CodeIsAs(ret,this.GetObject(),nextToken.Type);

                    }
                    else{
                        this.UndoToken();

                    }
                    return ret;
                };
                p.P_Operator = function (operateStack,objectStack){
                    var curr = how.as2js.codeDom.temp.TempOperator.getOper(this.PeekToken().Type);
                    if(curr == null){
                        return false;

                    }
                    this.ReadToken();
                    while(operateStack.length > 0){
                        var oper = operateStack[[object CodeOperator]];
                        if(oper.level >= curr.level){
                            operateStack.pop();
                            var binexp = new how.as2js.codeDom.CodeOperator(objectStack.pop(),objectStack.pop(),oper.operator);
                            objectStack.push(binexp);

                        }
                        else{
                            break;

                        }

                    }
                    operateStack.push(curr);
                    return true;
                };
                p.ParseFunctionDeclaration = function (isStatic){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.Function){
                        throw new how.as2js.error.ParseError(token,"Function declaration must start with the 'function' keyword.");

                    }
                    var scriptFunctionType = how.as2js.codeDom.CodeFunction.TYPE_NORMAL;
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Get){
                        token = this.ReadToken();
                        scriptFunctionType = how.as2js.codeDom.CodeFunction.TYPE_GET;

                    }
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Set){
                        token = this.ReadToken();
                        scriptFunctionType = how.as2js.codeDom.CodeFunction.TYPE_SET;

                    }
                    var strFunctionName = null;
                    if(this.PeekToken().Type != how.as2js.compiler.TokenType.LeftPar){
                        strFunctionName = this.ReadIdentifier();
                        strFunctionName = scriptFunctionType == ;
                        strFunctionName = scriptFunctionType == ;

                    }
                    this.ReadLeftParenthesis();
                    var listParameters = new Vector();
                    var listParameterTypes = new Vector();
                    var listValues = new Vector();
                    var bParams = false;
                    if(this.PeekToken().Type != how.as2js.compiler.TokenType.RightPar){
                        while(true){
                            token = this.ReadToken();
                            if(token.Type == how.as2js.compiler.TokenType.Params){
                                token = this.ReadToken();
                                bParams = true;

                            }
                            if(token.Type != how.as2js.compiler.TokenType.Identifier){
                                throw new how.as2js.error.ParseError(token,"Unexpected token '" + token.Lexeme + "' in function declaration.");

                            }
                            var strParameterName = token.Lexeme.toString();
                            token = this.PeekToken();
                            if(token.Type == how.as2js.compiler.TokenType.Colon){
                                this.ReadColon();
                                var param = this.GetObject();
                                if(param instanceof how.as2js.codeDom.CodeMember){
                                    listParameterTypes.push(param);

                                }
                                else if(param instanceof how.as2js.codeDom.CodeAssign){
                                    listValues.push((param instanceof how.as2js.codeDom.CodeAssign)?param:null).value);
                                    listParameterTypes.push((param instanceof how.as2js.codeDom.CodeAssign)?param:null).member);

                                }

                            }
                            else{
                                listParameterTypes.push(null);

                            }
                            listParameters.push(strParameterName);
                            token = this.PeekToken();
                            if(token.Type == how.as2js.compiler.TokenType.Comma && bParams){
                                this.ReadComma();

                            }
                            else if(token.Type == how.as2js.compiler.TokenType.RightPar){
                                break;

                            }
                            else{
                                throw new how.as2js.error.ParseError(token,"Comma ',' or right parenthesis ')' expected in function declararion.");

                            }

                        }

                    }
                    this.ReadRightParenthesis();
                    token = this.ReadToken();
                    if(token.Type == how.as2js.compiler.TokenType.Colon){
                        token = this.ReadToken();
                        if(token.Lexeme == "Vector"){
                            if(this.PeekToken().Type == how.as2js.compiler.TokenType.Period){
                                this.ReadToken();
                                this.ReadToken();
                                this.ReadToken();
                                this.ReadToken();

                            }

                        }

                    }
                    else{
                        this.UndoToken();

                    }
                    var executable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_Function);
                    this.ParseStatementBlock(executable);
                    return new how.as2js.codeDom.CodeFunction(strFunctionName,listParameters,listParameterTypes,listValues,executable,bParams,isStatic,scriptFunctionType);
                };
                p.ParseStatementBlock = function (executable,readLeftBrace,finished){
                    executable = executable!=null||executable!=undefined?executable:true;
                    readLeftBrace = readLeftBrace!=null||readLeftBrace!=undefined?readLeftBrace:4;
                    if(readLeftBrace){
                        this.ReadLeftBrace();

                    }
                    var tokenType = null;
                    while(this.HasMoreTokens()){
                        tokenType = this.ReadToken().Type;
                        if(tokenType == finished){
                            break;

                        }
                        this.UndoToken();
                        this.ParseStatement(executable);

                    }
                    executable.endInstruction();
                };
                p.ParseStatement = function (executable){
                    var token = this.ReadToken();
                    switch(token.Type){
                        case how.as2js.compiler.TokenType.Public:
                            throw new how.as2js.error.ParseError(token,"方法内的声明不支持public ");
                            break;
                        case how.as2js.compiler.TokenType.Protected:
                            throw new how.as2js.error.ParseError(token,"方法内的声明不支持protected ");
                            break;
                        case how.as2js.compiler.TokenType.Private:
                            throw new how.as2js.error.ParseError(token,"方法内的声明不支持private ");
                            break;
                        case how.as2js.compiler.TokenType.Internal:
                            throw new how.as2js.error.ParseError(token,"方法内的声明不支持internal ");
                            break;
                        case how.as2js.compiler.TokenType.Var:
                            this.ParseVar(executable);
                            break;
                        case how.as2js.compiler.TokenType.If:
                            this.ParseIf(executable);
                            break;
                        case how.as2js.compiler.TokenType.For:
                            this.ParseFor(executable);
                            break;
                        case how.as2js.compiler.TokenType.While:
                            this.ParseWhile(executable);
                            break;
                        case how.as2js.compiler.TokenType.Switch:
                            this.ParseSwtich(executable);
                            break;
                        case how.as2js.compiler.TokenType.Try:
                            this.ParseTry(executable);
                            break;
                        case how.as2js.compiler.TokenType.Throw:
                            this.ParseThrow(executable);
                            break;
                        case how.as2js.compiler.TokenType.Return:
                            this.ParseReturn(executable);
                            break;
                        case how.as2js.compiler.TokenType.Identifier:
                        case how.as2js.compiler.TokenType.Increment:
                        case how.as2js.compiler.TokenType.Decrement:
                            this.ParseExpression(executable);
                            break;
                        case how.as2js.compiler.TokenType.New:
                            executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.NEW,this.GetNew(executable)));
                            break;
                        case how.as2js.compiler.TokenType.Super:
                            executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.SUPER,this.GetSuper(executable)));
                            break;
                        case how.as2js.compiler.TokenType.Break:
                            executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.BREAK,new how.as2js.codeDom.CodeObject(this.m_strBreviary,token.SourceLine)));
                            break;
                        case how.as2js.compiler.TokenType.Continue:
                            executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CONTINUE,new how.as2js.codeDom.CodeObject(this.m_strBreviary,token.SourceLine)));
                            break;
                        case how.as2js.compiler.TokenType.Function:
                            this.ParseFunctionDeclaration(false);
                            break;
                        case how.as2js.compiler.TokenType.SemiColon:
                            break;
                        case how.as2js.compiler.TokenType.Delete:
                            executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.DELETE,new how.as2js.codeDom.CodeDelete(this.GetObject())));
                            break;
                        case how.as2js.compiler.TokenType.LeftPar:
                            this.UndoToken();
                            executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.RESOLVE,this.GetObject()));
                            break;
                        default:
                            throw new how.as2js.error.ParseError(token,"不支持的语法 ");
                            break;

                    }
                };
                p.ParseVar = function (executable){
                    for(;;){
                        var tokenIndex = this.m_iNextToken;
                        var identifier = this.ReadIdentifier();
                        var typeMem = null;
                        var peek = this.PeekToken();
                        if(peek.Type == how.as2js.compiler.TokenType.Colon){
                            this.ReadToken();
                            typeMem = this.GetOneObject();
                            peek = this.PeekToken();

                        }
                        executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.VAR,typeMem,null,identifier));
                        if(peek.Type == how.as2js.compiler.TokenType.Assign){
                            this.m_iNextToken = tokenIndex;
                            this.ParseStatement(executable);

                        }
                        peek = this.ReadToken();
                        if(peek.Type != how.as2js.compiler.TokenType.Comma){
                            this.UndoToken();
                            break;

                        }
                    }
                };
                p.ParseIf = function (executable){
                    var ret = new how.as2js.codeDom.CodeIf();
                    ret.If = this.ParseCondition(true,new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_If,executable));
                    for(;;){
                        var token = this.ReadToken();
                        if(token.Type == how.as2js.compiler.TokenType.Else){
                            if(this.PeekToken().Type == how.as2js.compiler.TokenType.If){
                                this.ReadToken();
                                ret.AddElseIf(this.ParseCondition(true,new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_If,executable)));

                            }
                            else{
                                this.UndoToken();
                                break;

                            }

                        }
                        else{
                            this.UndoToken();
                            break;

                        }
                    }
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Else){
                        this.ReadToken();
                        ret.Else = this.ParseCondition(false,new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_If,executable));

                    }
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_IF,ret));
                };
                p.ParseCondition = function (condition,executable){
                    var con = null;
                    if(condition){
                        this.ReadLeftParenthesis();
                        con = this.GetObject();
                        this.ReadRightParenthesis();

                    }
                    this.ParseStatementBlock(executable);
                    return new how.as2js.codeDom.temp.TempCondition(con,executable);
                };
                p.ParseFor = function (executable){
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Each){
                        this.ReadToken();
                        this.ParseForeach(executable);

                    }
                    else{
                        this.ReadLeftParenthesis();
                        var partIndex = this.m_iNextToken;
                        var token = this.ReadToken();
                        if(token.Type == how.as2js.compiler.TokenType.Identifier){
                            var assign = this.ReadToken();
                            if(assign.Type == how.as2js.compiler.TokenType.Assign){
                                var obj = this.GetObject();
                                var comma = this.ReadToken();
                                if(comma.Type == how.as2js.compiler.TokenType.Comma){
                                    this.ParseFor_Simple(executable,token.Lexeme.toString(),obj);
                                    return;

                                }

                            }

                        }
                        if(token.Type == how.as2js.compiler.TokenType.Var){
                            if(this.ReadToken().Type == how.as2js.compiler.TokenType.Identifier){
                                if(this.PeekToken().Type == how.as2js.compiler.TokenType.Colon){
                                    this.ReadColon();
                                    this.ReadIdentifier();

                                }
                                if(this.ReadToken().Type == how.as2js.compiler.TokenType.In){
                                    this.m_iNextToken = partIndex;
                                    this.ParseForin(executable);
                                    return;

                                }

                            }

                        }
                        this.m_iNextToken = partIndex;
                        this.ParseFor_impl(executable);

                    }
                };
                p.ParseFor_impl = function (executable){
                    var ret = new how.as2js.codeDom.CodeFor();
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.SemiColon){
                        this.UndoToken();
                        var forBeginExecutable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_ForBegin,executable);
                        this.ParseStatementBlock(forBeginExecutable,false,how.as2js.compiler.TokenType.SemiColon);
                        ret.beginExecutable = forBeginExecutable;

                    }
                    token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.SemiColon){
                        this.UndoToken();
                        ret.condition = this.GetObject();
                        this.ReadSemiColon();

                    }
                    token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.RightPar){
                        this.UndoToken();
                        var forLoopExecutable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_ForLoop,executable);
                        this.ParseStatementBlock(forLoopExecutable,false,how.as2js.compiler.TokenType.RightPar);
                        ret.loopExecutable = forLoopExecutable;

                    }
                    var forExecutable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_For,executable);
                    this.ParseStatementBlock(forExecutable);
                    ret.SetContextExecutable(forExecutable);
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_FOR,ret));
                };
                p.ParseForeach = function (executable){
                    var ret = new how.as2js.codeDom.CodeForeach();
                    this.ReadLeftParenthesis();
                    this.ReadVar();
                    ret.identifier = this.ReadIdentifier();
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Colon){
                        this.ReadColon();
                        this.ReadIdentifier();

                    }
                    this.ReadIn();
                    ret.loopObject = this.GetObject();
                    this.ReadRightParenthesis();
                    var forEachExecutable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_Foreach,executable);
                    this.ParseStatementBlock(forEachExecutable);
                    ret.executable = forEachExecutable;
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_FOREACH,ret));
                };
                p.ParseForin = function (executable){
                    var ret = new how.as2js.codeDom.CodeForin();
                    this.ReadVar();
                    ret.identifier = this.ReadIdentifier();
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Colon){
                        this.ReadColon();
                        this.ReadIdentifier();

                    }
                    this.ReadIn();
                    ret.loopObject = this.GetObject();
                    this.ReadRightParenthesis();
                    var forEachExecutable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_Foreach,executable);
                    this.ParseStatementBlock(forEachExecutable);
                    ret.executable = forEachExecutable;
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_FORIN,ret));
                };
                p.ParseFor_Simple = function (executable,Identifier,obj){
                    var ret = new how.as2js.codeDom.CodeForSimple();
                    ret.identifier = Identifier;
                    ret.begin = obj;
                    ret.finished = this.GetObject();
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Comma){
                        this.ReadToken();
                        ret.step = this.GetObject();

                    }
                    this.ReadRightParenthesis();
                    var forExecutable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_For,executable);
                    this.ParseStatementBlock(forExecutable);
                    ret.SetContextExecutable(forExecutable);
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_FORSIMPLE,ret));
                };
                p.ParseWhile = function (executable){
                    var ret = new how.as2js.codeDom.CodeWhile();
                    ret.While = this.ParseCondition(true,new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_While,executable));
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_WHILE,ret));
                };
                p.ParseSwtich = function (executable){
                    var ret = new how.as2js.codeDom.CodeSwitch();
                    this.ReadLeftParenthesis();
                    ret.condition = this.GetObject();
                    this.ReadRightParenthesis();
                    this.ReadLeftBrace();
                    var switchExecutable = null;
                    for(;;){
                        var token = this.ReadToken();
                        if(token.Type == how.as2js.compiler.TokenType.Case){
                            var vals = new Vector();
                            this.ParseCase(vals);
                            switchExecutable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_Switch,executable);
                            this.ParseStatementBlock(switchExecutable,false,how.as2js.compiler.TokenType.Break);
                            ret.AddCase(new how.as2js.codeDom.temp.TempCase(vals,switchExecutable));

                        }
                        else if(token.Type == how.as2js.compiler.TokenType.Default){
                            this.ReadColon();
                            switchExecutable = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_Switch,executable);
                            this.ParseStatementBlock(switchExecutable,false,how.as2js.compiler.TokenType.Break);
                            ret.def = new how.as2js.codeDom.temp.TempCase(null,switchExecutable);

                        }
                        else if(token.Type != how.as2js.compiler.TokenType.SemiColon){
                            this.UndoToken();
                            break;

                        }
                    }
                    this.ReadRightBrace();
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_SWITCH,ret));
                };
                p.ParseCase = function (vals){
                    vals.push(this.GetObject(false));
                    this.ReadColon();
                    if(this.ReadToken().Type == how.as2js.compiler.TokenType.Case){
                        this.ParseCase(vals);

                    }
                    else{
                        this.UndoToken();

                    }
                };
                p.ParseTry = function (executable){
                    var exec = null;
                    var ret = new how.as2js.codeDom.CodeTry();
                    exec = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_Function,executable);
                    this.ParseStatementBlock(exec);
                    ret.tryExecutable = exec;
                    this.ReadCatch();
                    this.ReadLeftParenthesis();
                    ret.identifier = this.ReadIdentifier();
                    var peek = this.PeekToken();
                    if(peek.Type == how.as2js.compiler.TokenType.Colon){
                        this.ReadToken();
                        this.ReadToken();
                        peek = this.PeekToken();

                    }
                    this.ReadRightParenthesis();
                    exec = new how.as2js.codeDom.CodeExecutable(how.as2js.codeDom.CodeExecutable.Block_Function,executable);
                    this.ParseStatementBlock(exec);
                    ret.catchExecutable = exec;
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_TRY,ret));
                };
                p.ParseThrow = function (executable){
                    var ret = new how.as2js.codeDom.CodeThrow();
                    ret.obj = this.GetObject();
                    executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.THROW,ret));
                };
                p.ParseReturn = function (executable){
                    var peek = this.PeekToken();
                    if(peek.Type == how.as2js.compiler.TokenType.RightBrace || peek.Type == how.as2js.compiler.TokenType.SemiColon || peek.Type == how.as2js.compiler.TokenType.Finished){
                        executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.RET,null));

                    }
                    else{
                        executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.RET,this.GetObject()));

                    }
                };
                p.ParseExpression = function (executable){
                    this.UndoToken();
                    var peek = this.PeekToken();
                    var member = this.GetObject();
                    if(member instanceof how.as2js.codeDom.CodeCallFunction){
                        executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.CALL_FUNCTION,member));

                    }
                    else if(member instanceof how.as2js.codeDom.CodeMember){
                        if((member instanceof how.as2js.codeDom.CodeMember)?member:null).calc != how.as2js.codeDom.CALC.NONE){
                            executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.RESOLVE,member));

                        }
                        else{
                            throw new how.as2js.error.ParseError(peek,"变量后缀不支持此操作符  " + this.PeekToken().Lexeme);

                        }

                    }
                    else if(member instanceof how.as2js.codeDom.CodeAssign){
                        executable.addInstruction(new how.as2js.codeDom.CodeInstruction(how.as2js.runtime.Opcode.RESOLVE,member));

                    }
                    else{
                        throw new how.as2js.error.ParseError(peek,"语法不支持起始符号为 " + member);

                    }
                };
                p.GetSuper = function (executable){
                    var ret = new how.as2js.codeDom.CodeSuper();
                    if(this.PeekToken().Type == how.as2js.compiler.TokenType.Period){
                        this.ReadToken();
                        ret.superObject = this.GetObject();

                    }
                    else{
                        this.UndoToken();
                        ret.superObject = this.GetObject();

                    }
                    return ret;
                };
                p.ParseFunction = function (){
                    return null;
                };
                p.ReadLeftBrace = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.LeftBrace){
                        throw new how.as2js.error.ParseError(token,"Left brace '{' expected.");

                    }
                };
                p.ReadRightBrace = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.RightBrace){
                        throw new how.as2js.error.ParseError(token,"Right brace '}' expected.");

                    }
                };
                p.UndoToken = function (){
                    if(this.m_iNextToken <= 0){
                        throw new how.as2js.error.ParseError(null,"No more tokens to undo.");

                    }
                    this.--m_iNextToken;
                };
                p.ReadClass = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.Class){
                        throw new how.as2js.error.ParseError(token,"Class 'class' expected.");

                    }
                };
                p.ReadPackage = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.Package){
                        throw new how.as2js.error.ParseError(token,"Package 'package' expected.");

                    }
                    return token.Lexeme.toString();
                };
                p.ReadToken = function (){
                    if(this.HasMoreTokens()){
                        throw new how.as2js.error.ParseError(null,"Unexpected end of token stream.");

                    }
                    return this.m_listTokens[this.m_iNextToken++];
                };
                p.HasMoreTokens = function (){
                    return this.m_iNextToken < this.m_listTokens.length;
                };
                p.PeekToken = function (){
                    if(this.HasMoreTokens()){
                        throw new how.as2js.error.ParseError(null,"Unexpected end of token stream.");

                    }
                    return this.m_listTokens[this.m_iNextToken];
                };
                p.ReadIdentifier = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.Identifier){
                        throw new how.as2js.error.ParseError(token,"Identifier expected.");

                    }
                    return token.Lexeme.toString();
                };
                p.ReadLeftParenthesis = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.LeftPar){
                        throw new how.as2js.error.ParseError(token,"Left parenthesis '(' expected.");

                    }
                };
                p.ReadRightParenthesis = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.RightPar){
                        throw new how.as2js.error.ParseError(token,"Right parenthesis ')' expected.");

                    }
                };
                p.ReadColon = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.Colon){
                        throw new how.as2js.error.ParseError(token,"Colon ':' expected.");

                    }
                };
                p.ReadComma = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.Comma){
                        throw new how.as2js.error.ParseError(token,"Comma ',' expected.");

                    }
                };
                p.ReadVar = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.Var){
                        throw new how.as2js.error.ParseError(token,"Var 'var' expected.");

                    }
                };
                p.ReadIn = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.In){
                        throw new how.as2js.error.ParseError(token,"In 'in' expected.");

                    }
                };
                p.ReadSemiColon = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.SemiColon){
                        throw new how.as2js.error.ParseError(token,"SemiColon ';' expected.");

                    }
                };
                p.ReadCatch = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.Catch){
                        throw new how.as2js.error.ParseError(token,"Catch 'catch' expected.");

                    }
                };
                p.ReadLeftBracket = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.LeftBracket){
                        throw new how.as2js.error.ParseError(token,"Left bracket '[' expected for array indexing expression.");

                    }
                };
                p.ReadRightBracket = function (){
                    var token = this.ReadToken();
                    if(token.Type != how.as2js.compiler.TokenType.RightBracket){
                        throw new how.as2js.error.ParseError(token,"Right bracket ']' expected for array indexing expression.");

                    }
                };
                p[".init"] = function (){
                    this.m_strBreviary = null;
                    this.m_iNextToken = null;
                    this.m_listTokens = null;
                    this.codeClass = null;
                };
                return ScriptParser;
            })();
            how.as2js.compiler.ScriptParser = ScriptParser;
            egret.registerClass(ScriptParser,"how.as2js.compiler.ScriptParser");
        })(how.as2js.compiler || (how.as2js.compiler = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        (function(compiler){
            TokenType = (function (_super) {
                __extends(TokenType, _super);
                var d = __define,c=TokenType;p=c.prototype;
                TokenTypenull = function (value){
                    return null;
                };
                p[".init"] = function (){
                };
                TokenType.None = 0;
                TokenType.Var = 1;
                TokenType.Const = 2;
                TokenType.LeftBrace = 3;
                TokenType.RightBrace = 4;
                TokenType.LeftPar = 5;
                TokenType.RightPar = 6;
                TokenType.LeftBracket = 7;
                TokenType.RightBracket = 8;
                TokenType.Period = 9;
                TokenType.Comma = 10;
                TokenType.Colon = 11;
                TokenType.SemiColon = 12;
                TokenType.QuestionMark = 13;
                TokenType.Plus = 14;
                TokenType.Increment = 15;
                TokenType.AssignPlus = 16;
                TokenType.Minus = 17;
                TokenType.Decrement = 18;
                TokenType.AssignMinus = 19;
                TokenType.Multiply = 20;
                TokenType.AssignMultiply = 21;
                TokenType.Divide = 22;
                TokenType.AssignDivide = 23;
                TokenType.Modulo = 24;
                TokenType.AssignModulo = 25;
                TokenType.InclusiveOr = 26;
                TokenType.AssignInclusiveOr = 27;
                TokenType.Or = 28;
                TokenType.Combine = 29;
                TokenType.AssignCombine = 30;
                TokenType.And = 31;
                TokenType.XOR = 32;
                TokenType.AssignXOR = 33;
                TokenType.Shi = 34;
                TokenType.AssignShi = 35;
                TokenType.Shr = 36;
                TokenType.AssignShr = 37;
                TokenType.Not = 38;
                TokenType.Assign = 39;
                TokenType.Equal = 40;
                TokenType.NotEqual = 41;
                TokenType.Greater = 42;
                TokenType.GreaterOrEqual = 43;
                TokenType.Less = 44;
                TokenType.LessOrEqual = 45;
                TokenType.Params = 46;
                TokenType.If = 47;
                TokenType.Else = 48;
                TokenType.For = 49;
                TokenType.Final = 50;
                TokenType.Dynamic = 51;
                TokenType.Each = 52;
                TokenType.In = 53;
                TokenType.Switch = 54;
                TokenType.Case = 55;
                TokenType.Default = 56;
                TokenType.Break = 57;
                TokenType.Continue = 58;
                TokenType.Return = 59;
                TokenType.While = 60;
                TokenType.Function = 61;
                TokenType.Try = 62;
                TokenType.Catch = 63;
                TokenType.Throw = 64;
                TokenType.Boolean = 65;
                TokenType.Number = 66;
                TokenType.String = 67;
                TokenType.Null = 68;
                TokenType.Package = 69;
                TokenType.Class = 70;
                TokenType.Interface = 71;
                TokenType.Public = 72;
                TokenType.Protected = 73;
                TokenType.Private = 74;
                TokenType.Internal = 75;
                TokenType.Extends = 76;
                TokenType.Static = 77;
                TokenType.Override = 78;
                TokenType.New = 79;
                TokenType.Void = 80;
                TokenType.Import = 81;
                TokenType.Get = 82;
                TokenType.Set = 83;
                TokenType.Super = 84;
                TokenType.Identifier = 85;
                TokenType.Finished = 86;
                TokenType.Is = 87;
                TokenType.As = 88;
                TokenType.Delete = 89;
                return TokenType;
            })();
            how.as2js.compiler.TokenType = TokenType;
            egret.registerClass(TokenType,"how.as2js.compiler.TokenType");
        })(how.as2js.compiler || (how.as2js.compiler = {}));
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        Utils = (function (_super) {
            __extends(Utils, _super);
            var d = __define,c=Utils;p=c.prototype;
            Utilsnull = function (str){
                if(new RegExp("[A-Za-z]").test(str)){
                    return true;

                }
                else{
                    return false;

                }
            };
            Utilsnull = function (str){
                if(new RegExp("[0-9]").test(str)){
                    return true;

                }
                else{
                    return false;

                }
            };
            Utilsnull = function (str){
                return str == null || str == "";
            };
            Utilsnull = function (str){
                if(new RegExp("[A-Za-z0-9]").test(str)){
                    return true;

                }
                else{
                    return false;

                }
            };
            p[".init"] = function (){
            };
            Utils.es6to5 = null;
            return Utils;
        })();
        how.as2js.Utils = Utils;
        egret.registerClass(Utils,"how.as2js.Utils");
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
(function(how){
    (function(as2js){
        Config = (function (_super) {
            __extends(Config, _super);
            var d = __define,c=Config;p=c.prototype;
            p[".init"] = function (){
            };
            Config.modol = 0;
            Config.oneLine = false;
            Config.tab = "    ";
            Config.nextLine = "\n";
            Config.leftBraceNextLine = false;
            Config.bind = false;
            return Config;
        })();
        how.as2js.Config = Config;
        egret.registerClass(Config,"how.as2js.Config");
    })(how.as2js || (how.as2js = {}));
})(how || (how = {}));
