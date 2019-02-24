{ 
module Grammar where 
import Tokens 
}

%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    
    intValue { TokenIntValue _ $$ } 
    var { TokenVar _ $$ }
    funcName { TokenFuncName _ $$ }
     
    '=' { TokenEq _ } 
    '+' { TokenPlus _ } 
    '-' { TokenMinus _ } 
    '*' { TokenTimes _ } 
    '/' { TokenDiv _ } 
    '(' { TokenLParen _ } 
    ')' { TokenRParen _ }

    ':' { TokenColon _ }
    '[' { TokenLBracket _ }
    ']' { TokenRBracket _ }
    '{' { TokenLCurlyBracket _ }
    '}' { TokenRCurlyBracket _ }
    ',' { TokenComma _ }
    '>>' { TokenPipe _ }
    intType    { TokenTypeInt _ }
    eof        { TokenEOF _ } -- in reality EOF
    boolType   { TokenTypeBool _ }
    ';'        { TokenSemiColon _ }
    if         { TokenIf _ }
    else       { TokenElse _ }
    main       { TokenMain _ }
    trueValue  { TokenTrueValue _ }
    falseValue { TokenFalseValue _ }
    '=='       { TokenCompare _ }
    '!'         { TokenNot _ }

%left '+' '-' 
%left '*' '/'
%% 
Exp : Equals                 { EqualsExp $1 }
    | Maths                  { MathsExp $1 }
    | '(' Exp ')'            { $2 }
    | VarInit                { VarInitExp $1 }
    | Exp ';' Exp            { SequenceExpr $1 $3 } -- this will only appear on the left of a match statement -> refactor then

Maths : Maths '+' Maths      { MathsPlus $1 $3 }
      | Maths '-' Maths      { MathsMinus $1 $3 }
      | Maths '*' Maths      { MathsTimes $1 $3 }
      | Maths '/' Maths      { MathsDevide $1 $3 }
      | '(' Maths ')'        { $2 }
      | intValue             { MathsInt $1 }
      | var                  { MathsVar $1 }

Equals : Match '=' OutPattern { EqualsInOut $1 $3 }
       | Match '=' Maths      { EqualsInMaths $1 $3 }
       | var '=' Maths        { EqualsVarMaths $1 $3 }
       | var '=' B            { EqualsVarBool $1 $3 }
       | var '=' var          { EqualsVarVar $1 $3 }

T :  boolType { TBool }
  |  intType  { TInt }

B : trueValue { True }
  | falseValue { False }

Var : var ':' T { Var_ $1 $3 }

VarInit : Var '=' intValue { VarIntInit_ $1 $3}
        | Var '=' B        { VarBoolInit_ $1 $3}
        | Var '=' var      { VarStrInit_ $1 $3}

Match : '['']'                 { EmptyMatch }
      | '[' eof ']'            { EOFMatch }
      | '[' Var ']'            { SingleMatch $2 }
      | '[' Var ',' MatchRec   { MultipleMatch $2 $4 }

MatchRec : Var ']'           { SingleMatch $1 }
         | Var ',' MatchRec  {MultipleMatch $1 $3 }

OutPattern : '['']'                        { EmptyOutPatter }
           | '[' Maths ']'                 { SingleOutPattern $2 }
           | '[' Maths ',' OutPatternRec   { MultipleOutPattern $2 $4 }

OutPatternRec : Maths ']'                   { SingleOutPattern $1 }
              | Maths ',' OutPatternRec     {MultipleOutPattern $1 $3 }

{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data T_ = TInt | TBool | TFunc T_ T_ deriving Show

data Var_ = Var_ String T_ deriving Show

data VarInit_ = VarIntInit_ Var_ Int 
              | VarStrInit_ Var_ String 
              | VarBoolInit_ Var_ Bool 
              deriving Show

data Match_ = EmptyMatch
            | EOFMatch
            | MultipleMatch Var_ Match_ 
            | SingleMatch Var_
            deriving Show

data Exp_ = SequenceExpr Exp_ Exp_
          | MathsExp Maths_
          | EqualsExp Equals_
          | VarInitExp VarInit_ -- see comment
           deriving Show

data Maths_ = MathsPlus Maths_ Maths_
            | MathsMinus Maths_ Maths_
            | MathsTimes Maths_ Maths_
            | MathsDevide Maths_ Maths_
            | MathsInt Int
            | MathsVar String
            deriving Show

data OutPattern_ = EmptyOutPatter
                | MultipleOutPattern Maths_ OutPattern_ 
                | SingleOutPattern Maths_
                deriving Show

data Equals_ = EqualsInOut Match_ OutPattern_
             | EqualsInMaths Match_ Maths_
             | EqualsVarMaths String Maths_
             | EqualsVarBool String Bool
             | EqualsVarVar String String
             deriving Show

}