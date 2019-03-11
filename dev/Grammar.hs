{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,282) ([0,512,16384,0,0,32,1024,0,0,0,0,0,0,0,0,0,0,4,0,0,16384,0,0,0,2,64,0,0,0,0,0,0,0,512,0,0,2,0,0,2048,0,0,4096,1024,0,0,0,256,0,0,32,0,0,0,4,0,0,0,32768,0,0,0,4,0,0,0,0,0,0,0,0,0,4096,256,0,0,0,4,0,0,64,0,0,0,0,6,0,4096,1024,0,0,128,32768,1,0,0,16,0,0,2,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36880,256,0,0,0,2,0,0,2304,0,0,0,2048,0,0,0,0,0,0,0,0,0,4096,144,1,0,1024,0,0,0,36880,256,0,32768,4369,0,0,0,16,0,0,256,64,0,0,0,0,0,0,0,1,0,0,0,0,0,512,0,1024,0,0,0,0,0,0,0,0,6144,17,1048,0,63488,144,0,0,0,0,0,0,0,0,0,6144,17,0,0,4480,1,0,0,0,0,0,0,512,8,0,6144,17,1048,0,0,0,0,0,36880,256,0,0,4,0,0,4096,0,0,0,0,0,0,0,16384,0,0,0,2305,16,0,0,32768,0,0,63488,0,0,0,0,0,0,0,0,0,0,0,0,7136,0,4480,32769,65,0,4376,6144,4,0,0,0,0,32768,47,0,0,0,0,0,0,4376,0,0,32768,273,0,0,6144,17,0,0,4480,1,0,0,4376,0,0,0,0,0,0,6144,17,0,0,0,2,446,0,0,0,0,0,0,0,0,0,512,0,0,4480,32769,65,0,4376,6144,4,32768,273,16768,0,6144,17,1048,0,4480,32769,65,0,4376,6144,4,32768,273,16768,0,32768,2319,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,192,0,63488,0,0,0,8192,57344,27,0,0,8,0,0,8192,0,0,0,144,0,0,0,0,0,0,0,0,0,6144,17,0,0,0,0,12,0,0,49152,0,0,0,3072,0,0,0,192,0,0,0,0,0,0,0,0,0,0,3072,0,4096,144,1,0,0,2112,0,0,0,0,0,0,4,0,0,4096,0,0,0,0,0,0,0,36880,256,0,0,0,32,0,0,512,0,0,0,2048,0,0,36880,256,0,0,16384,8,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","prods","FuncDeclaration","Exp","Maths","Equals","T","B","Var","VarInit","Match","MatchRec","OutPattern","OutPatternRec","Comparables","ComparableExp","Cond","FuncBodyInitArea","FuncBodyInitAreaRec","Main","MainRec","intValue","var","funcName","'='","'+'","'-'","'*'","'%'","'/'","'('","')'","':'","'['","']'","'{'","'}'","','","'>>'","intType","boolType","';'","if","else","main","trueValue","falseValue","'=='","'>='","'<='","'&&'","'||'","'!'","'<'","'>'","stdin","stdout","%eof"]
        bit_start = st * 60
        bit_end = (st + 1) * 60
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..59]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (26) = happyShift action_4
action_0 (47) = happyShift action_5
action_0 (4) = happyGoto action_6
action_0 (5) = happyGoto action_2
action_0 (22) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (26) = happyShift action_4
action_1 (47) = happyShift action_5
action_1 (5) = happyGoto action_2
action_1 (22) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_4

action_4 (35) = happyShift action_9
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (35) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (26) = happyShift action_4
action_6 (47) = happyShift action_5
action_6 (60) = happyAccept
action_6 (5) = happyGoto action_7
action_6 (22) = happyGoto action_3
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_2

action_8 (58) = happyShift action_12
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (38) = happyShift action_11
action_9 (20) = happyGoto action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (36) = happyShift action_19
action_10 (13) = happyGoto action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (25) = happyShift action_16
action_11 (39) = happyShift action_17
action_11 (11) = happyGoto action_14
action_11 (12) = happyGoto action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (41) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (26) = happyShift action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (27) = happyShift action_24
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (44) = happyShift action_23
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (35) = happyShift action_22
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_52

action_18 _ = happyReduce_3

action_19 (25) = happyShift action_20
action_19 (37) = happyShift action_21
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (35) = happyShift action_38
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (27) = happyShift action_37
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (42) = happyShift action_35
action_22 (43) = happyShift action_36
action_22 (9) = happyGoto action_34
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (25) = happyShift action_16
action_23 (39) = happyShift action_33
action_23 (11) = happyGoto action_14
action_23 (12) = happyGoto action_31
action_23 (21) = happyGoto action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (24) = happyShift action_28
action_24 (48) = happyShift action_29
action_24 (49) = happyShift action_30
action_24 (10) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (41) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (26) = happyShift action_50
action_26 (59) = happyShift action_51
action_26 (23) = happyGoto action_49
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_28

action_28 _ = happyReduce_27

action_29 _ = happyReduce_24

action_30 _ = happyReduce_25

action_31 (44) = happyShift action_48
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_54

action_33 _ = happyReduce_53

action_34 _ = happyReduce_26

action_35 _ = happyReduce_23

action_36 _ = happyReduce_22

action_37 (25) = happyShift action_44
action_37 (33) = happyShift action_45
action_37 (36) = happyShift action_46
action_37 (45) = happyShift action_47
action_37 (6) = happyGoto action_40
action_37 (8) = happyGoto action_41
action_37 (15) = happyGoto action_42
action_37 (19) = happyGoto action_43
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (42) = happyShift action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (37) = happyShift action_66
action_39 (40) = happyShift action_67
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (44) = happyShift action_65
action_40 _ = happyReduce_29

action_41 _ = happyReduce_6

action_42 _ = happyReduce_7

action_43 (25) = happyShift action_44
action_43 (33) = happyShift action_45
action_43 (36) = happyShift action_46
action_43 (45) = happyShift action_47
action_43 (6) = happyGoto action_64
action_43 (8) = happyGoto action_41
action_43 (15) = happyGoto action_42
action_43 (19) = happyGoto action_43
action_43 _ = happyReduce_5

action_44 (27) = happyShift action_63
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (25) = happyShift action_44
action_45 (33) = happyShift action_45
action_45 (36) = happyShift action_46
action_45 (45) = happyShift action_47
action_45 (6) = happyGoto action_62
action_45 (8) = happyGoto action_41
action_45 (15) = happyGoto action_42
action_45 (19) = happyGoto action_43
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (24) = happyShift action_57
action_46 (25) = happyShift action_58
action_46 (29) = happyShift action_59
action_46 (33) = happyShift action_60
action_46 (37) = happyShift action_61
action_46 (7) = happyGoto action_56
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (33) = happyShift action_55
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (25) = happyShift action_16
action_48 (39) = happyShift action_54
action_48 (11) = happyGoto action_14
action_48 (12) = happyGoto action_31
action_48 (21) = happyGoto action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_57

action_50 (41) = happyShift action_52
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_58

action_52 (26) = happyShift action_50
action_52 (59) = happyShift action_90
action_52 (23) = happyGoto action_89
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_56

action_54 _ = happyReduce_55

action_55 (24) = happyShift action_57
action_55 (25) = happyShift action_58
action_55 (29) = happyShift action_59
action_55 (33) = happyShift action_76
action_55 (48) = happyShift action_29
action_55 (49) = happyShift action_30
action_55 (55) = happyShift action_77
action_55 (7) = happyGoto action_72
action_55 (10) = happyGoto action_73
action_55 (17) = happyGoto action_74
action_55 (18) = happyGoto action_88
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (28) = happyShift action_81
action_56 (29) = happyShift action_82
action_56 (30) = happyShift action_83
action_56 (31) = happyShift action_84
action_56 (32) = happyShift action_85
action_56 (37) = happyShift action_86
action_56 (40) = happyShift action_87
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_19

action_58 _ = happyReduce_20

action_59 (24) = happyShift action_57
action_59 (25) = happyShift action_58
action_59 (29) = happyShift action_59
action_59 (33) = happyShift action_60
action_59 (7) = happyGoto action_80
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (24) = happyShift action_57
action_60 (25) = happyShift action_58
action_60 (29) = happyShift action_59
action_60 (33) = happyShift action_60
action_60 (7) = happyGoto action_79
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_34

action_62 (34) = happyShift action_78
action_62 (44) = happyShift action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (24) = happyShift action_57
action_63 (25) = happyShift action_58
action_63 (29) = happyShift action_59
action_63 (33) = happyShift action_76
action_63 (48) = happyShift action_29
action_63 (49) = happyShift action_30
action_63 (55) = happyShift action_77
action_63 (7) = happyGoto action_72
action_63 (10) = happyGoto action_73
action_63 (17) = happyGoto action_74
action_63 (18) = happyGoto action_75
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (44) = happyShift action_65
action_64 _ = happyReduce_10

action_65 (25) = happyShift action_44
action_65 (33) = happyShift action_45
action_65 (36) = happyShift action_46
action_65 (45) = happyShift action_47
action_65 (6) = happyGoto action_71
action_65 (8) = happyGoto action_41
action_65 (15) = happyGoto action_42
action_65 (19) = happyGoto action_43
action_65 _ = happyReduce_11

action_66 (27) = happyShift action_70
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (25) = happyShift action_69
action_67 (14) = happyGoto action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_31

action_69 (35) = happyShift action_111
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (25) = happyShift action_44
action_70 (33) = happyShift action_45
action_70 (36) = happyShift action_46
action_70 (45) = happyShift action_47
action_70 (6) = happyGoto action_110
action_70 (8) = happyGoto action_41
action_70 (15) = happyGoto action_42
action_70 (19) = happyGoto action_43
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (44) = happyShift action_65
action_71 _ = happyReduce_9

action_72 (28) = happyShift action_81
action_72 (29) = happyShift action_82
action_72 (30) = happyShift action_83
action_72 (31) = happyShift action_84
action_72 (32) = happyShift action_85
action_72 _ = happyReduce_39

action_73 _ = happyReduce_40

action_74 _ = happyReduce_50

action_75 (50) = happyShift action_92
action_75 (51) = happyShift action_93
action_75 (52) = happyShift action_94
action_75 (53) = happyShift action_95
action_75 (54) = happyShift action_96
action_75 (56) = happyShift action_97
action_75 (57) = happyShift action_98
action_75 _ = happyReduce_21

action_76 (24) = happyShift action_57
action_76 (25) = happyShift action_58
action_76 (29) = happyShift action_59
action_76 (33) = happyShift action_76
action_76 (48) = happyShift action_29
action_76 (49) = happyShift action_30
action_76 (55) = happyShift action_77
action_76 (7) = happyGoto action_108
action_76 (10) = happyGoto action_73
action_76 (17) = happyGoto action_74
action_76 (18) = happyGoto action_109
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (24) = happyShift action_57
action_77 (25) = happyShift action_58
action_77 (29) = happyShift action_59
action_77 (33) = happyShift action_76
action_77 (48) = happyShift action_29
action_77 (49) = happyShift action_30
action_77 (55) = happyShift action_77
action_77 (7) = happyGoto action_72
action_77 (10) = happyGoto action_73
action_77 (17) = happyGoto action_74
action_77 (18) = happyGoto action_107
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_8

action_79 (28) = happyShift action_81
action_79 (29) = happyShift action_82
action_79 (30) = happyShift action_83
action_79 (31) = happyShift action_84
action_79 (32) = happyShift action_85
action_79 (34) = happyShift action_106
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_18

action_81 (24) = happyShift action_57
action_81 (25) = happyShift action_58
action_81 (29) = happyShift action_59
action_81 (33) = happyShift action_60
action_81 (7) = happyGoto action_105
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (24) = happyShift action_57
action_82 (25) = happyShift action_58
action_82 (29) = happyShift action_59
action_82 (33) = happyShift action_60
action_82 (7) = happyGoto action_104
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (24) = happyShift action_57
action_83 (25) = happyShift action_58
action_83 (29) = happyShift action_59
action_83 (33) = happyShift action_60
action_83 (7) = happyGoto action_103
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (24) = happyShift action_57
action_84 (25) = happyShift action_58
action_84 (29) = happyShift action_59
action_84 (33) = happyShift action_60
action_84 (7) = happyGoto action_102
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (24) = happyShift action_57
action_85 (25) = happyShift action_58
action_85 (29) = happyShift action_59
action_85 (33) = happyShift action_60
action_85 (7) = happyGoto action_101
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_36

action_87 (24) = happyShift action_57
action_87 (25) = happyShift action_58
action_87 (29) = happyShift action_59
action_87 (33) = happyShift action_60
action_87 (7) = happyGoto action_99
action_87 (16) = happyGoto action_100
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (34) = happyShift action_91
action_88 (50) = happyShift action_92
action_88 (51) = happyShift action_93
action_88 (52) = happyShift action_94
action_88 (53) = happyShift action_95
action_88 (54) = happyShift action_96
action_88 (56) = happyShift action_97
action_88 (57) = happyShift action_98
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_60

action_90 _ = happyReduce_59

action_91 (38) = happyShift action_123
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (24) = happyShift action_57
action_92 (25) = happyShift action_58
action_92 (29) = happyShift action_59
action_92 (33) = happyShift action_76
action_92 (48) = happyShift action_29
action_92 (49) = happyShift action_30
action_92 (55) = happyShift action_77
action_92 (7) = happyGoto action_72
action_92 (10) = happyGoto action_73
action_92 (17) = happyGoto action_74
action_92 (18) = happyGoto action_122
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (24) = happyShift action_57
action_93 (25) = happyShift action_58
action_93 (29) = happyShift action_59
action_93 (33) = happyShift action_76
action_93 (48) = happyShift action_29
action_93 (49) = happyShift action_30
action_93 (55) = happyShift action_77
action_93 (7) = happyGoto action_72
action_93 (10) = happyGoto action_73
action_93 (17) = happyGoto action_74
action_93 (18) = happyGoto action_121
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (24) = happyShift action_57
action_94 (25) = happyShift action_58
action_94 (29) = happyShift action_59
action_94 (33) = happyShift action_76
action_94 (48) = happyShift action_29
action_94 (49) = happyShift action_30
action_94 (55) = happyShift action_77
action_94 (7) = happyGoto action_72
action_94 (10) = happyGoto action_73
action_94 (17) = happyGoto action_74
action_94 (18) = happyGoto action_120
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (24) = happyShift action_57
action_95 (25) = happyShift action_58
action_95 (29) = happyShift action_59
action_95 (33) = happyShift action_76
action_95 (48) = happyShift action_29
action_95 (49) = happyShift action_30
action_95 (55) = happyShift action_77
action_95 (7) = happyGoto action_72
action_95 (10) = happyGoto action_73
action_95 (17) = happyGoto action_74
action_95 (18) = happyGoto action_119
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (24) = happyShift action_57
action_96 (25) = happyShift action_58
action_96 (29) = happyShift action_59
action_96 (33) = happyShift action_76
action_96 (48) = happyShift action_29
action_96 (49) = happyShift action_30
action_96 (55) = happyShift action_77
action_96 (7) = happyGoto action_72
action_96 (10) = happyGoto action_73
action_96 (17) = happyGoto action_74
action_96 (18) = happyGoto action_118
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (24) = happyShift action_57
action_97 (25) = happyShift action_58
action_97 (29) = happyShift action_59
action_97 (33) = happyShift action_76
action_97 (48) = happyShift action_29
action_97 (49) = happyShift action_30
action_97 (55) = happyShift action_77
action_97 (7) = happyGoto action_72
action_97 (10) = happyGoto action_73
action_97 (17) = happyGoto action_74
action_97 (18) = happyGoto action_117
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (24) = happyShift action_57
action_98 (25) = happyShift action_58
action_98 (29) = happyShift action_59
action_98 (33) = happyShift action_76
action_98 (48) = happyShift action_29
action_98 (49) = happyShift action_30
action_98 (55) = happyShift action_77
action_98 (7) = happyGoto action_72
action_98 (10) = happyGoto action_73
action_98 (17) = happyGoto action_74
action_98 (18) = happyGoto action_116
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (28) = happyShift action_81
action_99 (29) = happyShift action_82
action_99 (30) = happyShift action_83
action_99 (31) = happyShift action_84
action_99 (32) = happyShift action_85
action_99 (37) = happyShift action_114
action_99 (40) = happyShift action_115
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_35

action_101 _ = happyReduce_15

action_102 _ = happyReduce_16

action_103 _ = happyReduce_14

action_104 _ = happyReduce_13

action_105 _ = happyReduce_12

action_106 _ = happyReduce_17

action_107 (51) = happyShift action_93
action_107 (52) = happyShift action_94
action_107 _ = happyReduce_48

action_108 (28) = happyShift action_81
action_108 (29) = happyShift action_82
action_108 (30) = happyShift action_83
action_108 (31) = happyShift action_84
action_108 (32) = happyShift action_85
action_108 (34) = happyShift action_106
action_108 _ = happyReduce_39

action_109 (34) = happyShift action_113
action_109 (50) = happyShift action_92
action_109 (51) = happyShift action_93
action_109 (52) = happyShift action_94
action_109 (53) = happyShift action_95
action_109 (54) = happyShift action_96
action_109 (56) = happyShift action_97
action_109 (57) = happyShift action_98
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (44) = happyShift action_65
action_110 _ = happyReduce_30

action_111 (42) = happyShift action_112
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (37) = happyShift action_126
action_112 (40) = happyShift action_127
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_49

action_114 _ = happyReduce_37

action_115 (24) = happyShift action_57
action_115 (25) = happyShift action_58
action_115 (29) = happyShift action_59
action_115 (33) = happyShift action_60
action_115 (7) = happyGoto action_99
action_115 (16) = happyGoto action_125
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (51) = happyShift action_93
action_116 (52) = happyShift action_94
action_116 _ = happyReduce_43

action_117 (51) = happyShift action_93
action_117 (52) = happyShift action_94
action_117 _ = happyReduce_42

action_118 (51) = happyShift action_93
action_118 (52) = happyShift action_94
action_118 _ = happyReduce_47

action_119 (51) = happyShift action_93
action_119 (52) = happyShift action_94
action_119 _ = happyReduce_46

action_120 (51) = happyFail []
action_120 (52) = happyFail []
action_120 _ = happyReduce_45

action_121 (51) = happyFail []
action_121 (52) = happyFail []
action_121 _ = happyReduce_44

action_122 (51) = happyShift action_93
action_122 (52) = happyShift action_94
action_122 _ = happyReduce_41

action_123 (25) = happyShift action_44
action_123 (33) = happyShift action_45
action_123 (36) = happyShift action_46
action_123 (45) = happyShift action_47
action_123 (6) = happyGoto action_124
action_123 (8) = happyGoto action_41
action_123 (15) = happyGoto action_42
action_123 (19) = happyGoto action_43
action_123 _ = happyFail (happyExpListPerState 123)

action_124 (39) = happyShift action_130
action_124 (44) = happyShift action_65
action_124 _ = happyFail (happyExpListPerState 124)

action_125 _ = happyReduce_38

action_126 (27) = happyShift action_129
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (25) = happyShift action_69
action_127 (14) = happyGoto action_128
action_127 _ = happyFail (happyExpListPerState 127)

action_128 _ = happyReduce_33

action_129 (25) = happyShift action_44
action_129 (33) = happyShift action_45
action_129 (36) = happyShift action_46
action_129 (45) = happyShift action_47
action_129 (6) = happyGoto action_132
action_129 (8) = happyGoto action_41
action_129 (15) = happyGoto action_42
action_129 (19) = happyGoto action_43
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (46) = happyShift action_131
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (38) = happyShift action_133
action_131 _ = happyFail (happyExpListPerState 131)

action_132 (44) = happyShift action_65
action_132 _ = happyReduce_32

action_133 (25) = happyShift action_44
action_133 (33) = happyShift action_45
action_133 (36) = happyShift action_46
action_133 (45) = happyShift action_47
action_133 (6) = happyGoto action_134
action_133 (8) = happyGoto action_41
action_133 (15) = happyGoto action_42
action_133 (19) = happyGoto action_43
action_133 _ = happyFail (happyExpListPerState 133)

action_134 (39) = happyShift action_135
action_134 (44) = happyShift action_65
action_134 _ = happyFail (happyExpListPerState 134)

action_135 _ = happyReduce_51

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_2 : happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 4 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	(HappyAbsSyn20  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenFuncName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (NormalFuncDeclaration happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn5
		 (MainFuncDeclaration happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn6
		 (CondExp happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (EqualsExp happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn6
		 (OutPatternExp happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (SequenceExp happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  6 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn6
		 (SequenceExp (CondExp happy_var_1) happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  6 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsPlus happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsMinus happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsTimes happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsDevide happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsMod happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  7 happyReduction_18
happyReduction_18 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (MathsNegative happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  7 happyReduction_19
happyReduction_19 (HappyTerminal (TokenIntValue _ happy_var_1))
	 =  HappyAbsSyn7
		 (MathsInt happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (MathsVar happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 (HappyAbsSyn18  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 (Equals_ happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  9 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn9
		 (TBool
	)

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn9
		 (TInt
	)

happyReduce_24 = happySpecReduce_1  10 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn10
		 (True
	)

happyReduce_25 = happySpecReduce_1  10 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn10
		 (False
	)

happyReduce_26 = happySpecReduce_3  11 happyReduction_26
happyReduction_26 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn11
		 (Var_ happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  12 happyReduction_27
happyReduction_27 (HappyTerminal (TokenIntValue _ happy_var_3))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (VarIntInit_ happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  12 happyReduction_28
happyReduction_28 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (VarBoolInit_ happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 13 happyReduction_29
happyReduction_29 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (EmptyMatch happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 7 13 happyReduction_30
happyReduction_30 ((HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (SingleMatch (Var_ happy_var_2 TInt) happy_var_7
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 6 13 happyReduction_31
happyReduction_31 ((HappyAbsSyn14  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (MultipleMatch (Var_ happy_var_2 TInt) happy_var_6
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 6 14 happyReduction_32
happyReduction_32 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (SingleMatch (Var_ happy_var_1 TInt) happy_var_6
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 5 14 happyReduction_33
happyReduction_33 ((HappyAbsSyn14  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (MultipleMatch (Var_ happy_var_1 TInt) happy_var_5
	) `HappyStk` happyRest

happyReduce_34 = happySpecReduce_2  15 happyReduction_34
happyReduction_34 _
	_
	 =  HappyAbsSyn15
		 (EmptyOutPatter
	)

happyReduce_35 = happyReduce 4 15 happyReduction_35
happyReduction_35 ((HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (MultipleOutPattern happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_3  15 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (SingleOutPattern happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  16 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn16
		 (SingleOutPattern happy_var_1
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  16 happyReduction_38
happyReduction_38 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn16
		 (MultipleOutPattern happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  17 happyReduction_39
happyReduction_39 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn17
		 (ComparablesMaths happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  17 happyReduction_40
happyReduction_40 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn17
		 (ComparablesBool happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  18 happyReduction_41
happyReduction_41 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (EqualsTo happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  18 happyReduction_42
happyReduction_42 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (SmallerThan happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  18 happyReduction_43
happyReduction_43 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  18 happyReduction_44
happyReduction_44 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (GreaterOrEqual happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  18 happyReduction_45
happyReduction_45 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (SmallerOrEqual happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  18 happyReduction_46
happyReduction_46 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (And happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  18 happyReduction_47
happyReduction_47 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (Or happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_2  18 happyReduction_48
happyReduction_48 (HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (Not happy_var_2
	)
happyReduction_48 _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  18 happyReduction_49
happyReduction_49 _
	(HappyAbsSyn18  happy_var_2)
	_
	 =  HappyAbsSyn18
		 (happy_var_2
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_1  18 happyReduction_50
happyReduction_50 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn18
		 (ComparableExpSingle happy_var_1
	)
happyReduction_50 _  = notHappyAtAll 

happyReduce_51 = happyReduce 11 19 happyReduction_51
happyReduction_51 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn18  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Cond_ happy_var_3 happy_var_6 happy_var_10
	) `HappyStk` happyRest

happyReduce_52 = happySpecReduce_2  20 happyReduction_52
happyReduction_52 _
	_
	 =  HappyAbsSyn20
		 (EmptyInitArea
	)

happyReduce_53 = happyReduce 4 20 happyReduction_53
happyReduction_53 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (SingleInitArea happy_var_2
	) `HappyStk` happyRest

happyReduce_54 = happyReduce 4 20 happyReduction_54
happyReduction_54 ((HappyAbsSyn21  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (MultipleInitArea happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_55 = happySpecReduce_3  21 happyReduction_55
happyReduction_55 _
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn21
		 (SingleInitArea happy_var_1
	)
happyReduction_55 _ _ _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_3  21 happyReduction_56
happyReduction_56 (HappyAbsSyn21  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn21
		 (MultipleInitArea happy_var_1 happy_var_3
	)
happyReduction_56 _ _ _  = notHappyAtAll 

happyReduce_57 = happyReduce 7 22 happyReduction_57
happyReduction_57 ((HappyAbsSyn23  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenFuncName _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (MultipleSegue happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_58 = happyReduce 7 22 happyReduction_58
happyReduction_58 (_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenFuncName _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (SingleSegue happy_var_5
	) `HappyStk` happyRest

happyReduce_59 = happySpecReduce_3  23 happyReduction_59
happyReduction_59 _
	_
	(HappyTerminal (TokenFuncName _ happy_var_1))
	 =  HappyAbsSyn23
		 (SingleSegue happy_var_1
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happySpecReduce_3  23 happyReduction_60
happyReduction_60 (HappyAbsSyn23  happy_var_3)
	_
	(HappyTerminal (TokenFuncName _ happy_var_1))
	 =  HappyAbsSyn23
		 (MultipleSegue happy_var_1 happy_var_3
	)
happyReduction_60 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 60 60 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntValue _ happy_dollar_dollar -> cont 24;
	TokenVar _ happy_dollar_dollar -> cont 25;
	TokenFuncName _ happy_dollar_dollar -> cont 26;
	TokenEq _ -> cont 27;
	TokenPlus _ -> cont 28;
	TokenMinus _ -> cont 29;
	TokenTimes _ -> cont 30;
	TokenMod _ -> cont 31;
	TokenDiv _ -> cont 32;
	TokenLParen _ -> cont 33;
	TokenRParen _ -> cont 34;
	TokenColon _ -> cont 35;
	TokenLBracket _ -> cont 36;
	TokenRBracket _ -> cont 37;
	TokenLCurlyBracket _ -> cont 38;
	TokenRCurlyBracket _ -> cont 39;
	TokenComma _ -> cont 40;
	TokenPipe _ -> cont 41;
	TokenTypeInt _ -> cont 42;
	TokenTypeBool _ -> cont 43;
	TokenSemiColon _ -> cont 44;
	TokenIf _ -> cont 45;
	TokenElse _ -> cont 46;
	TokenMain _ -> cont 47;
	TokenTrueValue _ -> cont 48;
	TokenFalseValue _ -> cont 49;
	TokenCompare _ -> cont 50;
	TokenGreaterOrEqual _ -> cont 51;
	TokenSmallerOrEqual _ -> cont 52;
	TokenAnd _ -> cont 53;
	TokenOr _ -> cont 54;
	TokenNot _ -> cont 55;
	TokenSmallerThan _ -> cont 56;
	TokenGreaterThan _ -> cont 57;
	TokenStdin _ -> cont 58;
	TokenStdout _ -> cont 59;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 60 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data SuperExp = Func

data T_ = TInt | TBool deriving (Show, Eq)

data Var_ = Var_ String T_ deriving Show

data VarInit_ = VarIntInit_ Var_ Int
              | VarBoolInit_ Var_ Bool 
              deriving Show

data Match_ = EmptyMatch Exp_
            | MultipleMatch Var_ Match_
            | SingleMatch Var_ Exp_
            deriving Show

data Exp_ = CondExp Cond_
          | EqualsExp Equals_
          | OutPatternExp OutPattern_
          | SequenceExp Exp_ Exp_
          | SegueToFunction String [String] [Maths_]
          deriving Show

data Maths_ = MathsPlus Maths_ Maths_
            | MathsMinus Maths_ Maths_
            | MathsTimes Maths_ Maths_
            | MathsDevide Maths_ Maths_
            | MathsMod Maths_ Maths_
            | MathsNegative Maths_
            | MathsInt Int
            | MathsVar String
            deriving Show

data OutPattern_ = EmptyOutPatter
                 | MultipleOutPattern Maths_ OutPattern_ 
                 | SingleOutPattern Maths_
                 deriving Show

data Equals_ = Equals_ String ComparableExp_
             deriving Show

data Comparables_ = ComparablesVar String
                  | ComparablesMaths Maths_
                  | ComparablesInt Int
                  | ComparablesBool Bool --Functions to be added!
                  deriving Show

data ComparableExp_ = EqualsTo ComparableExp_ ComparableExp_
                    | SmallerThan ComparableExp_ ComparableExp_
                    | GreaterThan ComparableExp_ ComparableExp_
                    | SmallerOrEqual ComparableExp_ ComparableExp_
                    | GreaterOrEqual ComparableExp_ ComparableExp_
                    | And ComparableExp_ ComparableExp_
                    | Or ComparableExp_ ComparableExp_
                    | Not ComparableExp_
                    | ComparableExpSingle Comparables_
                    deriving Show

data Cond_ = Cond_ ComparableExp_ Exp_ Exp_ deriving Show

data FuncBodyInitArea_ = EmptyInitArea
                       | SingleInitArea VarInit_
                       | MultipleInitArea VarInit_ FuncBodyInitArea_
                       deriving Show

data FuncDeclaration_ = NormalFuncDeclaration String FuncBodyInitArea_ Match_
                      | MainFuncDeclaration Main_ 
                      deriving Show

data Main_ = MultipleSegue String Main_ 
           | SingleSegue String
           deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}

















































































































































































































-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 











data Happy_IntList = HappyCons Int Happy_IntList




















infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action




indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

