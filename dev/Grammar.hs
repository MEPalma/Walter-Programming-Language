{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
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

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,234) ([0,64,0,0,512,0,0,0,16,0,0,0,0,0,8192,0,0,18448,256,0,128,16,0,4096,0,0,0,3072,0,0,512,0,0,0,0,0,0,512,0,0,0,0,16384,0,0,0,0,0,0,16,0,0,36896,512,0,256,520,0,0,4,0,24576,32,352,0,36864,0,0,0,0,0,0,4,0,0,8196,0,12288,16,48,32768,1153,0,0,9224,128,0,0,320,0,0,0,0,4096,0,0,49152,0,192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,960,0,0,0,0,0,0,0,0,0,0,0,49152,64,0,0,8710,0,0,3840,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,0,57344,1,0,0,0,0,0,0,6656,0,2048,53248,0,0,0,0,0,0,0,6144,8,88,49152,64,704,0,0,0,0,12032,0,0,0,1,26,0,16,0,24576,32,352,0,259,2816,0,2072,22528,0,16576,49152,2,1536,2,22,12288,16,176,32768,129,0,0,1036,0,0,8288,0,0,768,1,0,0,1152,0,0,0,0,0,8672,1,0,0,0,0,30720,1,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,1536,2,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9224,128,0,0,0,0,0,20480,0,0,0,0,0,9276,0,0,0,0,0,0,0,0,33152,0,0,0,16,0,16384,288,4,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","FuncDeclaration","Exp","Maths","Equals","T","B","Var","VarInit","Match","MatchRec","OutPattern","OutPatternRec","Comparables","ComparableExp","Cond","FuncBodyInitArea","FuncBodyInitAreaRec","intValue","var","funcName","'='","'+'","'-'","'*'","'/'","'('","')'","':'","'['","']'","'{'","'}'","','","'>>'","intType","eof","boolType","';'","if","else","main","trueValue","falseValue","'=='","'!'","'<'","'>'","%eof"]
        bit_start = st * 51
        bit_end = (st + 1) * 51
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..50]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (23) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (31) = happyShift action_4
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (51) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (34) = happyShift action_6
action_4 (19) = happyGoto action_5
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (22) = happyShift action_15
action_5 (29) = happyShift action_16
action_5 (32) = happyShift action_17
action_5 (42) = happyShift action_18
action_5 (5) = happyGoto action_11
action_5 (7) = happyGoto action_12
action_5 (12) = happyGoto action_13
action_5 (18) = happyGoto action_14
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (22) = happyShift action_9
action_6 (35) = happyShift action_10
action_6 (10) = happyGoto action_7
action_6 (11) = happyGoto action_8
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (24) = happyShift action_30
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (35) = happyShift action_28
action_8 (36) = happyShift action_29
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (31) = happyShift action_27
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_58

action_11 (41) = happyShift action_26
action_11 _ = happyReduce_1

action_12 _ = happyReduce_3

action_13 (24) = happyShift action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_2

action_15 (24) = happyShift action_24
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (22) = happyShift action_15
action_16 (29) = happyShift action_16
action_16 (32) = happyShift action_17
action_16 (42) = happyShift action_18
action_16 (5) = happyGoto action_23
action_16 (7) = happyGoto action_12
action_16 (12) = happyGoto action_13
action_16 (18) = happyGoto action_14
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (22) = happyShift action_9
action_17 (33) = happyShift action_21
action_17 (39) = happyShift action_22
action_17 (10) = happyGoto action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (29) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (21) = happyShift action_59
action_19 (22) = happyShift action_60
action_19 (29) = happyShift action_61
action_19 (45) = happyShift action_34
action_19 (46) = happyShift action_35
action_19 (48) = happyShift action_62
action_19 (6) = happyGoto action_55
action_19 (9) = happyGoto action_56
action_19 (16) = happyGoto action_57
action_19 (17) = happyGoto action_58
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (33) = happyShift action_53
action_20 (36) = happyShift action_54
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_26

action_22 (33) = happyShift action_52
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (30) = happyShift action_51
action_23 (41) = happyShift action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (21) = happyShift action_44
action_24 (22) = happyShift action_50
action_24 (29) = happyShift action_46
action_24 (45) = happyShift action_34
action_24 (46) = happyShift action_35
action_24 (6) = happyGoto action_48
action_24 (9) = happyGoto action_49
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (21) = happyShift action_44
action_25 (22) = happyShift action_45
action_25 (29) = happyShift action_46
action_25 (32) = happyShift action_47
action_25 (6) = happyGoto action_42
action_25 (14) = happyGoto action_43
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (22) = happyShift action_15
action_26 (29) = happyShift action_16
action_26 (32) = happyShift action_17
action_26 (42) = happyShift action_18
action_26 (5) = happyGoto action_41
action_26 (7) = happyGoto action_12
action_26 (12) = happyGoto action_13
action_26 (18) = happyGoto action_14
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (38) = happyShift action_39
action_27 (40) = happyShift action_40
action_27 (8) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_59

action_29 (22) = happyShift action_9
action_29 (10) = happyGoto action_7
action_29 (11) = happyGoto action_36
action_29 (20) = happyGoto action_37
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (21) = happyShift action_32
action_30 (22) = happyShift action_33
action_30 (45) = happyShift action_34
action_30 (46) = happyShift action_35
action_30 (9) = happyGoto action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_24

action_32 _ = happyReduce_23

action_33 _ = happyReduce_25

action_34 _ = happyReduce_20

action_35 _ = happyReduce_21

action_36 (35) = happyShift action_82
action_36 (36) = happyShift action_83
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_60

action_38 _ = happyReduce_22

action_39 _ = happyReduce_19

action_40 _ = happyReduce_18

action_41 (41) = happyShift action_26
action_41 _ = happyReduce_5

action_42 (25) = happyShift action_73
action_42 (26) = happyShift action_74
action_42 (27) = happyShift action_75
action_42 (28) = happyShift action_76
action_42 _ = happyReduce_14

action_43 _ = happyReduce_13

action_44 _ = happyReduce_11

action_45 _ = happyReduce_12

action_46 (21) = happyShift action_44
action_46 (22) = happyShift action_45
action_46 (29) = happyShift action_46
action_46 (6) = happyGoto action_81
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (21) = happyShift action_44
action_47 (22) = happyShift action_45
action_47 (29) = happyShift action_46
action_47 (33) = happyShift action_80
action_47 (6) = happyGoto action_79
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (25) = happyShift action_73
action_48 (26) = happyShift action_74
action_48 (27) = happyShift action_75
action_48 (28) = happyShift action_76
action_48 _ = happyReduce_15

action_49 _ = happyReduce_16

action_50 (30) = happyReduce_17
action_50 (41) = happyReduce_17
action_50 (43) = happyReduce_17
action_50 (51) = happyReduce_17
action_50 _ = happyReduce_12

action_51 _ = happyReduce_4

action_52 _ = happyReduce_27

action_53 _ = happyReduce_28

action_54 (22) = happyShift action_9
action_54 (10) = happyGoto action_77
action_54 (13) = happyGoto action_78
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (25) = happyShift action_73
action_55 (26) = happyShift action_74
action_55 (27) = happyShift action_75
action_55 (28) = happyShift action_76
action_55 _ = happyReduce_38

action_56 (30) = happyReduce_56
action_56 (47) = happyReduce_56
action_56 (49) = happyReduce_56
action_56 (50) = happyReduce_56
action_56 _ = happyReduce_56

action_57 (47) = happyShift action_70
action_57 (49) = happyShift action_71
action_57 (50) = happyShift action_72
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (30) = happyShift action_66
action_58 (47) = happyShift action_67
action_58 (49) = happyShift action_68
action_58 (50) = happyShift action_69
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (30) = happyReduce_39
action_59 (47) = happyReduce_39
action_59 (49) = happyReduce_39
action_59 (50) = happyReduce_39
action_59 _ = happyReduce_11

action_60 (30) = happyReduce_55
action_60 (47) = happyReduce_55
action_60 (49) = happyReduce_55
action_60 (50) = happyReduce_55
action_60 _ = happyReduce_12

action_61 (21) = happyShift action_59
action_61 (22) = happyShift action_60
action_61 (29) = happyShift action_61
action_61 (45) = happyShift action_34
action_61 (46) = happyShift action_35
action_61 (48) = happyShift action_62
action_61 (6) = happyGoto action_64
action_61 (9) = happyGoto action_56
action_61 (16) = happyGoto action_57
action_61 (17) = happyGoto action_65
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (21) = happyShift action_59
action_62 (22) = happyShift action_60
action_62 (29) = happyShift action_61
action_62 (45) = happyShift action_34
action_62 (46) = happyShift action_35
action_62 (48) = happyShift action_62
action_62 (6) = happyGoto action_55
action_62 (9) = happyGoto action_56
action_62 (16) = happyGoto action_57
action_62 (17) = happyGoto action_63
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_53

action_64 (25) = happyShift action_73
action_64 (26) = happyShift action_74
action_64 (27) = happyShift action_75
action_64 (28) = happyShift action_76
action_64 (30) = happyShift action_85
action_64 _ = happyReduce_38

action_65 (30) = happyShift action_107
action_65 (47) = happyShift action_67
action_65 (49) = happyShift action_68
action_65 (50) = happyShift action_69
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (31) = happyShift action_106
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (21) = happyShift action_59
action_67 (22) = happyShift action_60
action_67 (29) = happyShift action_61
action_67 (45) = happyShift action_34
action_67 (46) = happyShift action_35
action_67 (48) = happyShift action_62
action_67 (6) = happyGoto action_55
action_67 (9) = happyGoto action_56
action_67 (16) = happyGoto action_104
action_67 (17) = happyGoto action_105
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (21) = happyShift action_59
action_68 (22) = happyShift action_60
action_68 (29) = happyShift action_61
action_68 (45) = happyShift action_34
action_68 (46) = happyShift action_35
action_68 (48) = happyShift action_62
action_68 (6) = happyGoto action_55
action_68 (9) = happyGoto action_56
action_68 (16) = happyGoto action_102
action_68 (17) = happyGoto action_103
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (21) = happyShift action_59
action_69 (22) = happyShift action_60
action_69 (29) = happyShift action_61
action_69 (45) = happyShift action_34
action_69 (46) = happyShift action_35
action_69 (48) = happyShift action_62
action_69 (6) = happyGoto action_55
action_69 (9) = happyGoto action_56
action_69 (16) = happyGoto action_100
action_69 (17) = happyGoto action_101
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (21) = happyShift action_59
action_70 (22) = happyShift action_60
action_70 (29) = happyShift action_61
action_70 (45) = happyShift action_34
action_70 (46) = happyShift action_35
action_70 (48) = happyShift action_62
action_70 (6) = happyGoto action_55
action_70 (9) = happyGoto action_56
action_70 (16) = happyGoto action_98
action_70 (17) = happyGoto action_99
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (21) = happyShift action_59
action_71 (22) = happyShift action_60
action_71 (29) = happyShift action_61
action_71 (45) = happyShift action_34
action_71 (46) = happyShift action_35
action_71 (48) = happyShift action_62
action_71 (6) = happyGoto action_55
action_71 (9) = happyGoto action_56
action_71 (16) = happyGoto action_96
action_71 (17) = happyGoto action_97
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (21) = happyShift action_59
action_72 (22) = happyShift action_60
action_72 (29) = happyShift action_61
action_72 (45) = happyShift action_34
action_72 (46) = happyShift action_35
action_72 (48) = happyShift action_62
action_72 (6) = happyGoto action_55
action_72 (9) = happyGoto action_56
action_72 (16) = happyGoto action_94
action_72 (17) = happyGoto action_95
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (21) = happyShift action_44
action_73 (22) = happyShift action_45
action_73 (29) = happyShift action_46
action_73 (6) = happyGoto action_93
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (21) = happyShift action_44
action_74 (22) = happyShift action_45
action_74 (29) = happyShift action_46
action_74 (6) = happyGoto action_92
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (21) = happyShift action_44
action_75 (22) = happyShift action_45
action_75 (29) = happyShift action_46
action_75 (6) = happyGoto action_91
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (21) = happyShift action_44
action_76 (22) = happyShift action_45
action_76 (29) = happyShift action_46
action_76 (6) = happyGoto action_90
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (33) = happyShift action_88
action_77 (36) = happyShift action_89
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_29

action_79 (25) = happyShift action_73
action_79 (26) = happyShift action_74
action_79 (27) = happyShift action_75
action_79 (28) = happyShift action_76
action_79 (33) = happyShift action_86
action_79 (36) = happyShift action_87
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_32

action_81 (25) = happyShift action_73
action_81 (26) = happyShift action_74
action_81 (27) = happyShift action_75
action_81 (28) = happyShift action_76
action_81 (30) = happyShift action_85
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_61

action_83 (22) = happyShift action_9
action_83 (10) = happyGoto action_7
action_83 (11) = happyGoto action_36
action_83 (20) = happyGoto action_84
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_62

action_85 _ = happyReduce_10

action_86 _ = happyReduce_33

action_87 (21) = happyShift action_44
action_87 (22) = happyShift action_45
action_87 (29) = happyShift action_46
action_87 (6) = happyGoto action_110
action_87 (15) = happyGoto action_111
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_30

action_89 (22) = happyShift action_9
action_89 (10) = happyGoto action_77
action_89 (13) = happyGoto action_109
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_9

action_91 _ = happyReduce_8

action_92 _ = happyReduce_7

action_93 _ = happyReduce_6

action_94 _ = happyReduce_52

action_95 _ = happyReduce_51

action_96 _ = happyReduce_48

action_97 _ = happyReduce_47

action_98 _ = happyReduce_44

action_99 _ = happyReduce_43

action_100 _ = happyReduce_50

action_101 _ = happyReduce_49

action_102 _ = happyReduce_46

action_103 _ = happyReduce_45

action_104 _ = happyReduce_42

action_105 _ = happyReduce_41

action_106 (22) = happyShift action_15
action_106 (29) = happyShift action_16
action_106 (32) = happyShift action_17
action_106 (42) = happyShift action_18
action_106 (5) = happyGoto action_108
action_106 (7) = happyGoto action_12
action_106 (12) = happyGoto action_13
action_106 (18) = happyGoto action_14
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_54

action_108 (41) = happyShift action_26
action_108 (43) = happyShift action_114
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_31

action_110 (25) = happyShift action_73
action_110 (26) = happyShift action_74
action_110 (27) = happyShift action_75
action_110 (28) = happyShift action_76
action_110 (33) = happyShift action_112
action_110 (36) = happyShift action_113
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_34

action_112 _ = happyReduce_35

action_113 (21) = happyShift action_44
action_113 (22) = happyShift action_45
action_113 (29) = happyShift action_46
action_113 (6) = happyGoto action_110
action_113 (15) = happyGoto action_116
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (31) = happyShift action_115
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (22) = happyShift action_15
action_115 (29) = happyShift action_16
action_115 (32) = happyShift action_17
action_115 (42) = happyShift action_18
action_115 (5) = happyGoto action_117
action_115 (7) = happyGoto action_12
action_115 (12) = happyGoto action_13
action_115 (18) = happyGoto action_14
action_115 _ = happyFail (happyExpListPerState 115)

action_116 _ = happyReduce_36

action_117 _ = happyReduce_57

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenFuncName _ happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (FuncDeclaration_ happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_1  5 happyReduction_2
happyReduction_2 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn5
		 (CondExp happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (EqualsExp happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (SequenceExp happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (MathsPlus happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  6 happyReduction_7
happyReduction_7 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (MathsMinus happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  6 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (MathsTimes happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  6 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (MathsDevide happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  6 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  6 happyReduction_11
happyReduction_11 (HappyTerminal (TokenIntValue _ happy_var_1))
	 =  HappyAbsSyn6
		 (MathsInt happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  6 happyReduction_12
happyReduction_12 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn6
		 (MathsVar happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn7
		 (EqualsInOut happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn7
		 (EqualsInMaths happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (EqualsVarMaths happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  7 happyReduction_16
happyReduction_16 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (EqualsVarBool happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  7 happyReduction_17
happyReduction_17 (HappyTerminal (TokenVar _ happy_var_3))
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (EqualsVarVar happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  8 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn8
		 (TBool
	)

happyReduce_19 = happySpecReduce_1  8 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn8
		 (TInt
	)

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn9
		 (True
	)

happyReduce_21 = happySpecReduce_1  9 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn9
		 (False
	)

happyReduce_22 = happySpecReduce_3  10 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn10
		 (Var_ happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyTerminal (TokenIntValue _ happy_var_3))
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 (VarIntInit_ happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  11 happyReduction_24
happyReduction_24 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 (VarBoolInit_ happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyTerminal (TokenVar _ happy_var_3))
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn11
		 (VarStrInit_ happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  12 happyReduction_26
happyReduction_26 _
	_
	 =  HappyAbsSyn12
		 (EmptyMatch
	)

happyReduce_27 = happySpecReduce_3  12 happyReduction_27
happyReduction_27 _
	_
	_
	 =  HappyAbsSyn12
		 (EOFMatch
	)

happyReduce_28 = happySpecReduce_3  12 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (SingleMatch happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 12 happyReduction_29
happyReduction_29 ((HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (MultipleMatch happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_2  13 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn13
		 (SingleMatch happy_var_1
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  13 happyReduction_31
happyReduction_31 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn13
		 (MultipleMatch happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  14 happyReduction_32
happyReduction_32 _
	_
	 =  HappyAbsSyn14
		 (EmptyOutPatter
	)

happyReduce_33 = happySpecReduce_3  14 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (SingleOutPattern happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 4 14 happyReduction_34
happyReduction_34 ((HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (MultipleOutPattern happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_2  15 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn15
		 (SingleOutPattern happy_var_1
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  15 happyReduction_36
happyReduction_36 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn15
		 (MultipleOutPattern happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  16 happyReduction_37
happyReduction_37 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn16
		 (ComparablesVar happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  16 happyReduction_38
happyReduction_38 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn16
		 (ComparablesMaths happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  16 happyReduction_39
happyReduction_39 (HappyTerminal (TokenIntValue _ happy_var_1))
	 =  HappyAbsSyn16
		 (ComparablesInt happy_var_1
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  16 happyReduction_40
happyReduction_40 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn16
		 (ComparablesBool happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  17 happyReduction_41
happyReduction_41 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (EqualsToLR happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  17 happyReduction_42
happyReduction_42 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (EqualsToL happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  17 happyReduction_43
happyReduction_43 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn17
		 (EqualsToR happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  17 happyReduction_44
happyReduction_44 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn17
		 (EqualsTo happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  17 happyReduction_45
happyReduction_45 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (SmallerThanLR happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  17 happyReduction_46
happyReduction_46 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (SmallerThanL happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  17 happyReduction_47
happyReduction_47 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn17
		 (SmallerThanR happy_var_1 happy_var_3
	)
happyReduction_47 _ _ _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_3  17 happyReduction_48
happyReduction_48 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn17
		 (SmallerThan happy_var_1 happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  17 happyReduction_49
happyReduction_49 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (GreaterThanLR happy_var_1 happy_var_3
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_3  17 happyReduction_50
happyReduction_50 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn17
		 (GreaterThanL happy_var_1 happy_var_3
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  17 happyReduction_51
happyReduction_51 (HappyAbsSyn17  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn17
		 (GreaterThanR happy_var_1 happy_var_3
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  17 happyReduction_52
happyReduction_52 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn17
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_2  17 happyReduction_53
happyReduction_53 (HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (Not happy_var_2
	)
happyReduction_53 _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  17 happyReduction_54
happyReduction_54 _
	(HappyAbsSyn17  happy_var_2)
	_
	 =  HappyAbsSyn17
		 (happy_var_2
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  17 happyReduction_55
happyReduction_55 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn17
		 (ComparableExpVar happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_1  17 happyReduction_56
happyReduction_56 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn17
		 (ComparableExpBool happy_var_1
	)
happyReduction_56 _  = notHappyAtAll 

happyReduce_57 = happyReduce 9 18 happyReduction_57
happyReduction_57 ((HappyAbsSyn5  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Cond_ happy_var_3 happy_var_6 happy_var_9
	) `HappyStk` happyRest

happyReduce_58 = happySpecReduce_2  19 happyReduction_58
happyReduction_58 _
	_
	 =  HappyAbsSyn19
		 (EmptyInitArea
	)

happyReduce_59 = happySpecReduce_3  19 happyReduction_59
happyReduction_59 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (SingleInitArea happy_var_2
	)
happyReduction_59 _ _ _  = notHappyAtAll 

happyReduce_60 = happyReduce 4 19 happyReduction_60
happyReduction_60 ((HappyAbsSyn20  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (MultipleInitArea happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_61 = happySpecReduce_2  20 happyReduction_61
happyReduction_61 _
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn20
		 (SingleInitArea happy_var_1
	)
happyReduction_61 _ _  = notHappyAtAll 

happyReduce_62 = happySpecReduce_3  20 happyReduction_62
happyReduction_62 (HappyAbsSyn20  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn20
		 (MultipleInitArea happy_var_1 happy_var_3
	)
happyReduction_62 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenIntValue _ happy_dollar_dollar -> cont 21;
	TokenVar _ happy_dollar_dollar -> cont 22;
	TokenFuncName _ happy_dollar_dollar -> cont 23;
	TokenEq _ -> cont 24;
	TokenPlus _ -> cont 25;
	TokenMinus _ -> cont 26;
	TokenTimes _ -> cont 27;
	TokenDiv _ -> cont 28;
	TokenLParen _ -> cont 29;
	TokenRParen _ -> cont 30;
	TokenColon _ -> cont 31;
	TokenLBracket _ -> cont 32;
	TokenRBracket _ -> cont 33;
	TokenLCurlyBracket _ -> cont 34;
	TokenRCurlyBracket _ -> cont 35;
	TokenComma _ -> cont 36;
	TokenPipe _ -> cont 37;
	TokenTypeInt _ -> cont 38;
	TokenEOF _ -> cont 39;
	TokenTypeBool _ -> cont 40;
	TokenSemiColon _ -> cont 41;
	TokenIf _ -> cont 42;
	TokenElse _ -> cont 43;
	TokenMain _ -> cont 44;
	TokenTrueValue _ -> cont 45;
	TokenFalseValue _ -> cont 46;
	TokenCompare _ -> cont 47;
	TokenNot _ -> cont 48;
	TokenSmallerThan _ -> cont 49;
	TokenGreaterThan _ -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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

data Exp_ = CondExp Cond_
          | EqualsExp Equals_
          | SequenceExp Exp_ Exp_
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
             | EqualsVarVar String String -- add comparable for bool assignments
             deriving Show

data Comparables_ = ComparablesVar String
                  | ComparablesMaths Maths_
                  | ComparablesInt Int
                  | ComparablesBool Bool --Functions to be added!
                  deriving Show

data ComparableExp_ = EqualsTo Comparables_ Comparables_
                    | EqualsToR Comparables_ ComparableExp_
                    | EqualsToL ComparableExp_ Comparables_
                    | EqualsToLR ComparableExp_ ComparableExp_

                    | SmallerThan Comparables_ Comparables_
                    | SmallerThanR Comparables_ ComparableExp_
                    | SmallerThanL ComparableExp_ Comparables_
                    | SmallerThanLR ComparableExp_ ComparableExp_

                    | GreaterThan Comparables_ Comparables_
                    | GreaterThanR Comparables_ ComparableExp_
                    | GreaterThanL ComparableExp_ Comparables_
                    | GreaterThanLR ComparableExp_ ComparableExp_

                    | Not ComparableExp_

                    | ComparableExpVar String
                    | ComparableExpBool Bool
                    deriving Show

data Cond_ = Cond_ ComparableExp_ Exp_ Exp_ deriving Show

data FuncBodyInitArea_ = EmptyInitArea
                       | SingleInitArea VarInit_
                       | MultipleInitArea VarInit_ FuncBodyInitArea_
                       deriving Show

data FuncDeclaration_ = FuncDeclaration_ String FuncBodyInitArea_ Exp_ deriving Show
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

