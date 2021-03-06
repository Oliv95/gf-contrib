module SkelMinSQL where

-- Haskell module generated by the BNF converter

import AbsMinSQL
import ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transIdent :: Ident -> Result
transIdent x = case x of
  Ident str  -> failure x


transStr :: Str -> Result
transStr x = case x of
  Str str  -> failure x


transScript :: Script -> Result
transScript x = case x of
  SStm commands  -> failure x


transCommand :: Command -> Result
transCommand x = case x of
  CQuery table  -> failure x
  CInsert id values  -> failure x
  CUpdate id settings where'  -> failure x
  CDelete star id where'  -> failure x
  CCreateDatabase id  -> failure x
  CCreateTable id typings  -> failure x
  CAlterTable id alter  -> failure x
  CCreateView id table  -> failure x
  CCreateAssertion id condition  -> failure x
  CDescribe id  -> failure x


transQuery :: Query -> Result
transQuery x = case x of
  QSelect top distinct columns table where' group having order  -> failure x
  QSelectWith definitions query  -> failure x


transColumns :: Columns -> Result
transColumns x = case x of
  CCAll  -> failure x
  CCExps exps  -> failure x


transWHERE :: WHERE -> Result
transWHERE x = case x of
  WNone  -> failure x
  WCondition condition  -> failure x


transTable :: Table -> Result
transTable x = case x of
  TName id  -> failure x
  TNameAlias table id  -> failure x
  TProduct table1 table2  -> failure x
  TUnion table1 all2 table3  -> failure x
  TIntersect table1 all2 table3  -> failure x
  TExcept table1 all2 table3  -> failure x
  TJoin table1 table2 on3  -> failure x
  TNatJoin table1 table2  -> failure x
  TNatFullJoin table1 table2  -> failure x
  TLeftJoin table1 table2 on3  -> failure x
  TRightJoin table1 table2 on3  -> failure x
  TQuery query  -> failure x


transExp :: Exp -> Result
transExp x = case x of
  EName id  -> failure x
  EQual id1 id2  -> failure x
  ENameAlias exp id  -> failure x
  EQuery query  -> failure x
  EInt n  -> failure x
  EFloat d  -> failure x
  EStr str  -> failure x
  EString str  -> failure x
  ENull  -> failure x
  EList exp exps  -> failure x
  EAggr aggroper distinct exp  -> failure x
  EAggrAll aggroper distinct  -> failure x
  EDef  -> failure x
  EAny exp  -> failure x
  EAll exp  -> failure x
  EMul exp1 exp2  -> failure x
  EDiv exp1 exp2  -> failure x
  EAdd exp1 exp2  -> failure x
  ESub exp1 exp2  -> failure x


transON :: ON -> Result
transON x = case x of
  OnNone  -> failure x
  OnCondition condition  -> failure x


transALL :: ALL -> Result
transALL x = case x of
  ANone  -> failure x
  AAll  -> failure x


transDISTINCT :: DISTINCT -> Result
transDISTINCT x = case x of
  DNone  -> failure x
  DDISTINCT  -> failure x


transTOP :: TOP -> Result
transTOP x = case x of
  TNone  -> failure x
  TNumber n  -> failure x
  TPercent n  -> failure x


transGROUP :: GROUP -> Result
transGROUP x = case x of
  GNone  -> failure x
  GGroupBy exps  -> failure x


transHAVING :: HAVING -> Result
transHAVING x = case x of
  HNone  -> failure x
  HCondition condition  -> failure x


transORDER :: ORDER -> Result
transORDER x = case x of
  ONone  -> failure x
  OOrderBy exps desc  -> failure x


transDESC :: DESC -> Result
transDESC x = case x of
  DAsc  -> failure x
  DDesc  -> failure x


transVALUES :: VALUES -> Result
transVALUES x = case x of
  VColVal ids exps  -> failure x
  VVal exps  -> failure x
  VTable table  -> failure x
  VColTable id ids table  -> failure x


transSetting :: Setting -> Result
transSetting x = case x of
  SVal id exp  -> failure x


transSTAR :: STAR -> Result
transSTAR x = case x of
  StNone  -> failure x
  StStar  -> failure x


transAggrOper :: AggrOper -> Result
transAggrOper x = case x of
  AOMax  -> failure x
  AOMin  -> failure x
  AOAvg  -> failure x
  AOCount  -> failure x
  AOSum  -> failure x


transCondition :: Condition -> Result
transCondition x = case x of
  COper exp1 oper2 exp3  -> failure x
  CAnd condition1 condition2  -> failure x
  COr condition1 condition2  -> failure x
  CNot condition  -> failure x
  CExists exp  -> failure x
  CIsNotNull exp  -> failure x
  CBetween exp1 exp2 exp3  -> failure x
  CNotBetween exp1 exp2 exp3  -> failure x


transOper :: Oper -> Result
transOper x = case x of
  OEq  -> failure x
  ONeq  -> failure x
  OGt  -> failure x
  OLt  -> failure x
  OGeq  -> failure x
  OLeq  -> failure x
  OLike  -> failure x
  ONotLike  -> failure x
  OIn  -> failure x
  ONotIn  -> failure x


transTyping :: Typing -> Result
transTyping x = case x of
  TColumn id type' constraints default'  -> failure x
  TConstraint constraint ids  -> failure x
  TForeignKey exp id ids policys  -> failure x
  TReferences id1 id2 ids3 policys4  -> failure x
  TNamedConstraint id constraint  -> failure x


transType :: Type -> Result
transType x = case x of
  TIdent id  -> failure x
  TSized id n  -> failure x


transDEFAULT :: DEFAULT -> Result
transDEFAULT x = case x of
  DefNone  -> failure x
  DefExp exp  -> failure x


transConstraint :: Constraint -> Result
transConstraint x = case x of
  CNotNull  -> failure x
  CUnique  -> failure x
  CPrimaryKey  -> failure x
  CForeignKey exp id ids policys  -> failure x
  CReferences id ids policys  -> failure x
  CCheck condition  -> failure x
  CNamed id constraint  -> failure x


transPolicy :: Policy -> Result
transPolicy x = case x of
  PDelete action  -> failure x
  PUpdate action  -> failure x


transAction :: Action -> Result
transAction x = case x of
  ACascade  -> failure x
  ASetNull  -> failure x


transDefinition :: Definition -> Result
transDefinition x = case x of
  DTable id table query  -> failure x


transAlter :: Alter -> Result
transAlter x = case x of
  AAdd typing  -> failure x
  ADrop id  -> failure x
  AAlter id type'  -> failure x
  ADropPrimaryKey  -> failure x
  ADropConstraint id  -> failure x



