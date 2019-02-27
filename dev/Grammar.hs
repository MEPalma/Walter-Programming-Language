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
happyExpList = Happy_Data_Array.listArray (0,235) ([0,512,16384,0,0,2,64,0,0,0,0,0,0,0,0,0,2,0,0,512,0,0,512,16384,0,0,0,0,0,0,0,32,0,4096,0,0,33024,4100,0,0,8193,0,0,0,128,0,0,2,0,0,1024,0,0,0,0,8,0,0,2,0,0,0,0,0,0,2048,0,0,0,0,0,1024,0,0,0,0,0,0,0,0,0,0,4,0,0,33024,4100,0,32768,2177,2,0,32768,0,0,32768,129,1408,0,30720,72,0,0,18432,0,0,0,0,0,0,512,0,0,33152,0,0,0,0,0,0,0,8,0,0,256,8,0,33152,32768,1,32768,1153,16,0,33024,4100,0,0,0,5,0,256,32,0,32768,1,384,0,0,128,0,0,2,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,30720,0,0,0,0,0,0,0,0,0,0,0,0,0,1024,0,0,0,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30720,1,0,0,0,0,0,256,0,0,32768,129,0,0,33152,0,0,32768,129,0,0,33152,0,0,0,0,0,0,33152,0,0,0,120,0,0,0,0,0,0,0,0,0,0,1,26,32768,129,1408,0,33152,32768,5,0,0,0,0,30720,0,0,0,256,6656,0,0,2,0,32768,129,1408,0,33152,32768,5,32768,129,1408,0,30720,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,72,0,0,0,0,0,0,0,0,0,8193,0,0,0,0,0,0,32768,0,0,0,0,0,0,2,16384,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,32768,129,0,0,0,0,0,0,0,0,0,0,0,0,0,1153,16,0,0,0,0,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,1153,16,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","prods","FuncDeclaration","Exp","Maths","Equals","T","B","Var","VarInit","Match","MatchRec","OutPattern","OutPatternRec","Comparables","ComparableExp","Cond","FuncBodyInitArea","FuncBodyInitAreaRec","Main","MainRec","intValue","var","funcName","'='","'+'","'-'","'*'","'/'","'('","')'","':'","'['","']'","'{'","'}'","','","'>>'","intType","eof","boolType","';'","if","else","main","trueValue","falseValue","'=='","'!'","'<'","'>'","stdin","stdout","%eof"]
        bit_start = st * 56
        bit_end = (st + 1) * 56
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..55]
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

action_4 (34) = happyShift action_9
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (34) = happyShift action_8
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (26) = happyShift action_4
action_6 (47) = happyShift action_5
action_6 (56) = happyAccept
action_6 (5) = happyGoto action_7
action_6 (22) = happyGoto action_3
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_2

action_8 (54) = happyShift action_12
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (37) = happyShift action_11
action_9 (20) = happyGoto action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (25) = happyShift action_23
action_10 (32) = happyShift action_24
action_10 (35) = happyShift action_25
action_10 (45) = happyShift action_26
action_10 (6) = happyGoto action_18
action_10 (8) = happyGoto action_19
action_10 (13) = happyGoto action_20
action_10 (15) = happyGoto action_21
action_10 (19) = happyGoto action_22
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (25) = happyShift action_16
action_11 (38) = happyShift action_17
action_11 (11) = happyGoto action_14
action_11 (12) = happyGoto action_15
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (40) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (26) = happyShift action_42
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (27) = happyShift action_41
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (44) = happyShift action_40
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (34) = happyShift action_39
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_52

action_18 (44) = happyShift action_38
action_18 _ = happyReduce_3

action_19 _ = happyReduce_6

action_20 (27) = happyShift action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_7

action_22 _ = happyReduce_5

action_23 (27) = happyShift action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (25) = happyShift action_23
action_24 (32) = happyShift action_24
action_24 (35) = happyShift action_25
action_24 (45) = happyShift action_26
action_24 (6) = happyGoto action_35
action_24 (8) = happyGoto action_19
action_24 (13) = happyGoto action_20
action_24 (15) = happyGoto action_21
action_24 (19) = happyGoto action_22
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (24) = happyShift action_30
action_25 (25) = happyShift action_31
action_25 (32) = happyShift action_32
action_25 (36) = happyShift action_33
action_25 (42) = happyShift action_34
action_25 (7) = happyGoto action_28
action_25 (11) = happyGoto action_29
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (32) = happyShift action_27
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (24) = happyShift action_30
action_27 (25) = happyShift action_63
action_27 (32) = happyShift action_79
action_27 (48) = happyShift action_47
action_27 (49) = happyShift action_48
action_27 (51) = happyShift action_80
action_27 (7) = happyGoto action_75
action_27 (10) = happyGoto action_76
action_27 (17) = happyGoto action_77
action_27 (18) = happyGoto action_78
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (28) = happyShift action_69
action_28 (29) = happyShift action_70
action_28 (30) = happyShift action_71
action_28 (31) = happyShift action_72
action_28 (36) = happyShift action_73
action_28 (39) = happyShift action_74
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (36) = happyShift action_67
action_29 (39) = happyShift action_68
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_16

action_31 (34) = happyShift action_39
action_31 _ = happyReduce_17

action_32 (24) = happyShift action_30
action_32 (25) = happyShift action_63
action_32 (32) = happyShift action_32
action_32 (7) = happyGoto action_66
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (27) = happyReduce_32
action_33 _ = happyReduce_38

action_34 (36) = happyShift action_65
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (33) = happyShift action_64
action_35 (44) = happyShift action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (24) = happyShift action_30
action_36 (25) = happyShift action_63
action_36 (32) = happyShift action_32
action_36 (48) = happyShift action_47
action_36 (49) = happyShift action_48
action_36 (7) = happyGoto action_61
action_36 (10) = happyGoto action_62
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (24) = happyShift action_30
action_37 (25) = happyShift action_60
action_37 (32) = happyShift action_32
action_37 (35) = happyShift action_25
action_37 (45) = happyShift action_26
action_37 (7) = happyGoto action_56
action_37 (8) = happyGoto action_57
action_37 (13) = happyGoto action_20
action_37 (15) = happyGoto action_58
action_37 (19) = happyGoto action_59
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (25) = happyShift action_23
action_38 (32) = happyShift action_24
action_38 (35) = happyShift action_25
action_38 (45) = happyShift action_26
action_38 (6) = happyGoto action_55
action_38 (8) = happyGoto action_19
action_38 (13) = happyGoto action_20
action_38 (15) = happyGoto action_21
action_38 (19) = happyGoto action_22
action_38 _ = happyReduce_10

action_39 (41) = happyShift action_53
action_39 (43) = happyShift action_54
action_39 (9) = happyGoto action_52
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (25) = happyShift action_16
action_40 (38) = happyShift action_51
action_40 (11) = happyGoto action_14
action_40 (12) = happyGoto action_49
action_40 (21) = happyGoto action_50
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (24) = happyShift action_45
action_41 (25) = happyShift action_46
action_41 (48) = happyShift action_47
action_41 (49) = happyShift action_48
action_41 (10) = happyGoto action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (40) = happyShift action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (26) = happyShift action_99
action_43 (55) = happyShift action_100
action_43 (23) = happyGoto action_98
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_30

action_45 _ = happyReduce_29

action_46 _ = happyReduce_31

action_47 _ = happyReduce_26

action_48 _ = happyReduce_27

action_49 (44) = happyShift action_97
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_54

action_51 _ = happyReduce_53

action_52 _ = happyReduce_28

action_53 _ = happyReduce_25

action_54 _ = happyReduce_24

action_55 (44) = happyShift action_38
action_55 _ = happyReduce_9

action_56 (28) = happyShift action_69
action_56 (29) = happyShift action_70
action_56 (30) = happyShift action_71
action_56 (31) = happyShift action_72
action_56 _ = happyReduce_19

action_57 _ = happyReduce_20

action_58 _ = happyReduce_18

action_59 _ = happyReduce_21

action_60 (27) = happyShift action_36
action_60 _ = happyReduce_17

action_61 (28) = happyShift action_69
action_61 (29) = happyShift action_70
action_61 (30) = happyShift action_71
action_61 (31) = happyShift action_72
action_61 _ = happyReduce_22

action_62 _ = happyReduce_23

action_63 _ = happyReduce_17

action_64 _ = happyReduce_8

action_65 _ = happyReduce_33

action_66 (28) = happyShift action_69
action_66 (29) = happyShift action_70
action_66 (30) = happyShift action_71
action_66 (31) = happyShift action_72
action_66 (33) = happyShift action_96
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_34

action_68 (25) = happyShift action_16
action_68 (11) = happyGoto action_94
action_68 (14) = happyGoto action_95
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (24) = happyShift action_30
action_69 (25) = happyShift action_63
action_69 (32) = happyShift action_32
action_69 (7) = happyGoto action_93
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (24) = happyShift action_30
action_70 (25) = happyShift action_63
action_70 (32) = happyShift action_32
action_70 (7) = happyGoto action_92
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (24) = happyShift action_30
action_71 (25) = happyShift action_63
action_71 (32) = happyShift action_32
action_71 (7) = happyGoto action_91
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (24) = happyShift action_30
action_72 (25) = happyShift action_63
action_72 (32) = happyShift action_32
action_72 (7) = happyGoto action_90
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_40

action_74 (24) = happyShift action_30
action_74 (25) = happyShift action_63
action_74 (32) = happyShift action_32
action_74 (7) = happyGoto action_88
action_74 (16) = happyGoto action_89
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (28) = happyShift action_69
action_75 (29) = happyShift action_70
action_75 (30) = happyShift action_71
action_75 (31) = happyShift action_72
action_75 _ = happyReduce_43

action_76 _ = happyReduce_44

action_77 _ = happyReduce_50

action_78 (33) = happyShift action_84
action_78 (50) = happyShift action_85
action_78 (52) = happyShift action_86
action_78 (53) = happyShift action_87
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (24) = happyShift action_30
action_79 (25) = happyShift action_63
action_79 (32) = happyShift action_79
action_79 (48) = happyShift action_47
action_79 (49) = happyShift action_48
action_79 (51) = happyShift action_80
action_79 (7) = happyGoto action_82
action_79 (10) = happyGoto action_76
action_79 (17) = happyGoto action_77
action_79 (18) = happyGoto action_83
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (24) = happyShift action_30
action_80 (25) = happyShift action_63
action_80 (32) = happyShift action_79
action_80 (48) = happyShift action_47
action_80 (49) = happyShift action_48
action_80 (51) = happyShift action_80
action_80 (7) = happyGoto action_75
action_80 (10) = happyGoto action_76
action_80 (17) = happyGoto action_77
action_80 (18) = happyGoto action_81
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_48

action_82 (28) = happyShift action_69
action_82 (29) = happyShift action_70
action_82 (30) = happyShift action_71
action_82 (31) = happyShift action_72
action_82 (33) = happyShift action_96
action_82 _ = happyReduce_43

action_83 (33) = happyShift action_112
action_83 (50) = happyShift action_85
action_83 (52) = happyShift action_86
action_83 (53) = happyShift action_87
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (34) = happyShift action_111
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (24) = happyShift action_30
action_85 (25) = happyShift action_63
action_85 (32) = happyShift action_79
action_85 (48) = happyShift action_47
action_85 (49) = happyShift action_48
action_85 (51) = happyShift action_80
action_85 (7) = happyGoto action_75
action_85 (10) = happyGoto action_76
action_85 (17) = happyGoto action_77
action_85 (18) = happyGoto action_110
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (24) = happyShift action_30
action_86 (25) = happyShift action_63
action_86 (32) = happyShift action_79
action_86 (48) = happyShift action_47
action_86 (49) = happyShift action_48
action_86 (51) = happyShift action_80
action_86 (7) = happyGoto action_75
action_86 (10) = happyGoto action_76
action_86 (17) = happyGoto action_77
action_86 (18) = happyGoto action_109
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (24) = happyShift action_30
action_87 (25) = happyShift action_63
action_87 (32) = happyShift action_79
action_87 (48) = happyShift action_47
action_87 (49) = happyShift action_48
action_87 (51) = happyShift action_80
action_87 (7) = happyGoto action_75
action_87 (10) = happyGoto action_76
action_87 (17) = happyGoto action_77
action_87 (18) = happyGoto action_108
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (28) = happyShift action_69
action_88 (29) = happyShift action_70
action_88 (30) = happyShift action_71
action_88 (31) = happyShift action_72
action_88 (36) = happyShift action_106
action_88 (39) = happyShift action_107
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_39

action_90 _ = happyReduce_14

action_91 _ = happyReduce_13

action_92 _ = happyReduce_12

action_93 _ = happyReduce_11

action_94 (36) = happyShift action_104
action_94 (39) = happyShift action_105
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_35

action_96 _ = happyReduce_15

action_97 (25) = happyShift action_16
action_97 (38) = happyShift action_103
action_97 (11) = happyGoto action_14
action_97 (12) = happyGoto action_49
action_97 (21) = happyGoto action_102
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_57

action_99 (40) = happyShift action_101
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_58

action_101 (26) = happyShift action_99
action_101 (55) = happyShift action_117
action_101 (23) = happyGoto action_116
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_56

action_103 _ = happyReduce_55

action_104 _ = happyReduce_36

action_105 (25) = happyShift action_16
action_105 (11) = happyGoto action_94
action_105 (14) = happyGoto action_115
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_41

action_107 (24) = happyShift action_30
action_107 (25) = happyShift action_63
action_107 (32) = happyShift action_32
action_107 (7) = happyGoto action_88
action_107 (16) = happyGoto action_114
action_107 _ = happyFail (happyExpListPerState 107)

action_108 _ = happyReduce_47

action_109 _ = happyReduce_46

action_110 _ = happyReduce_45

action_111 (25) = happyShift action_23
action_111 (32) = happyShift action_24
action_111 (35) = happyShift action_25
action_111 (45) = happyShift action_26
action_111 (6) = happyGoto action_113
action_111 (8) = happyGoto action_19
action_111 (13) = happyGoto action_20
action_111 (15) = happyGoto action_21
action_111 (19) = happyGoto action_22
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_49

action_113 (44) = happyShift action_38
action_113 (46) = happyShift action_118
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_42

action_115 _ = happyReduce_37

action_116 _ = happyReduce_60

action_117 _ = happyReduce_59

action_118 (34) = happyShift action_119
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (25) = happyShift action_23
action_119 (32) = happyShift action_24
action_119 (35) = happyShift action_25
action_119 (45) = happyShift action_26
action_119 (6) = happyGoto action_120
action_119 (8) = happyGoto action_19
action_119 (13) = happyGoto action_20
action_119 (15) = happyGoto action_21
action_119 (19) = happyGoto action_22
action_119 _ = happyFail (happyExpListPerState 119)

action_120 _ = happyReduce_51

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
happyReduction_3 ((HappyAbsSyn6  happy_var_4) `HappyStk`
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
happyReduction_10 _
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsPlus happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsMinus happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  7 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsTimes happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  7 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (MathsDevide happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  7 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  7 happyReduction_16
happyReduction_16 (HappyTerminal (TokenIntValue _ happy_var_1))
	 =  HappyAbsSyn7
		 (MathsInt happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  7 happyReduction_17
happyReduction_17 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn7
		 (MathsVar happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn8
		 (EqualsInOut happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  8 happyReduction_19
happyReduction_19 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn8
		 (EqualsInMaths happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  8 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn8
		 (EqualsInEquals happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 (HappyAbsSyn19  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn8
		 (EqualsInCond happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  8 happyReduction_22
happyReduction_22 (HappyAbsSyn7  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 (EqualsVarMaths happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  8 happyReduction_23
happyReduction_23 (HappyAbsSyn10  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn8
		 (EqualsVarBool happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  9 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn9
		 (TBool
	)

happyReduce_25 = happySpecReduce_1  9 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn9
		 (TInt
	)

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn10
		 (True
	)

happyReduce_27 = happySpecReduce_1  10 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn10
		 (False
	)

happyReduce_28 = happySpecReduce_3  11 happyReduction_28
happyReduction_28 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn11
		 (Var_ happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 (HappyTerminal (TokenIntValue _ happy_var_3))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (VarIntInit_ happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  12 happyReduction_30
happyReduction_30 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (VarBoolInit_ happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  12 happyReduction_31
happyReduction_31 (HappyTerminal (TokenVar _ happy_var_3))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (VarStrInit_ happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  13 happyReduction_32
happyReduction_32 _
	_
	 =  HappyAbsSyn13
		 (EmptyMatch
	)

happyReduce_33 = happySpecReduce_3  13 happyReduction_33
happyReduction_33 _
	_
	_
	 =  HappyAbsSyn13
		 (EOFMatch
	)

happyReduce_34 = happySpecReduce_3  13 happyReduction_34
happyReduction_34 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (SingleMatch happy_var_2
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 13 happyReduction_35
happyReduction_35 ((HappyAbsSyn14  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (MultipleMatch happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_2  14 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn14
		 (SingleMatch happy_var_1
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  14 happyReduction_37
happyReduction_37 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn14
		 (MultipleMatch happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_2  15 happyReduction_38
happyReduction_38 _
	_
	 =  HappyAbsSyn15
		 (EmptyOutPatter
	)

happyReduce_39 = happyReduce 4 15 happyReduction_39
happyReduction_39 ((HappyAbsSyn16  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (MultipleOutPattern happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happySpecReduce_3  15 happyReduction_40
happyReduction_40 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (SingleOutPattern happy_var_2
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_2  16 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn16
		 (SingleOutPattern happy_var_1
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  16 happyReduction_42
happyReduction_42 (HappyAbsSyn16  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn16
		 (MultipleOutPattern happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  17 happyReduction_43
happyReduction_43 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn17
		 (ComparablesMaths happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_1  17 happyReduction_44
happyReduction_44 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn17
		 (ComparablesBool happy_var_1
	)
happyReduction_44 _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  18 happyReduction_45
happyReduction_45 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (EqualsTo happy_var_1 happy_var_3
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_3  18 happyReduction_46
happyReduction_46 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (SmallerThan happy_var_1 happy_var_3
	)
happyReduction_46 _ _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_3  18 happyReduction_47
happyReduction_47 (HappyAbsSyn18  happy_var_3)
	_
	(HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn18
		 (GreaterThan happy_var_1 happy_var_3
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

happyReduce_51 = happyReduce 9 19 happyReduction_51
happyReduction_51 ((HappyAbsSyn6  happy_var_9) `HappyStk`
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
		 (Cond_ happy_var_3 happy_var_6 happy_var_9
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
	action 56 56 notHappyAtAll (HappyState action) sts stk []

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
	TokenDiv _ -> cont 31;
	TokenLParen _ -> cont 32;
	TokenRParen _ -> cont 33;
	TokenColon _ -> cont 34;
	TokenLBracket _ -> cont 35;
	TokenRBracket _ -> cont 36;
	TokenLCurlyBracket _ -> cont 37;
	TokenRCurlyBracket _ -> cont 38;
	TokenComma _ -> cont 39;
	TokenPipe _ -> cont 40;
	TokenTypeInt _ -> cont 41;
	TokenEOF _ -> cont 42;
	TokenTypeBool _ -> cont 43;
	TokenSemiColon _ -> cont 44;
	TokenIf _ -> cont 45;
	TokenElse _ -> cont 46;
	TokenMain _ -> cont 47;
	TokenTrueValue _ -> cont 48;
	TokenFalseValue _ -> cont 49;
	TokenCompare _ -> cont 50;
	TokenNot _ -> cont 51;
	TokenSmallerThan _ -> cont 52;
	TokenGreaterThan _ -> cont 53;
	TokenStdin _ -> cont 54;
	TokenStdout _ -> cont 55;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 56 tk tks = happyError' (tks, explist)
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
          | OutPatternExp OutPattern_
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
             | EqualsInEquals Match_ Equals_
             | EqualsInCond Match_ Cond_
             | EqualsVarMaths String Maths_
             | EqualsVarBool String Bool
             | EqualsVarVar String String -- add comparable for bool assignments
             deriving Show

data Comparables_ = ComparablesVar String
                  | ComparablesMaths Maths_
                  | ComparablesInt Int
                  | ComparablesBool Bool --Functions to be added!
                  deriving Show

data ComparableExp_ = EqualsTo ComparableExp_ ComparableExp_
                    | SmallerThan ComparableExp_ ComparableExp_
                    | GreaterThan ComparableExp_ ComparableExp_
                    | Not ComparableExp_
                    | ComparableExpSingle Comparables_
                    deriving Show

data Cond_ = Cond_ ComparableExp_ Exp_ Exp_ deriving Show

data FuncBodyInitArea_ = EmptyInitArea
                       | SingleInitArea VarInit_
                       | MultipleInitArea VarInit_ FuncBodyInitArea_
                       deriving Show

data FuncDeclaration_ = NormalFuncDeclaration String FuncBodyInitArea_ Exp_ 
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

