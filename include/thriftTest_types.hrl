-ifndef(_thriftTest_types_included).
-define(_thriftTest_types_included, yeah).

-define(thriftTest_Numberz_ONE, 1).
-define(thriftTest_Numberz_TWO, 2).
-define(thriftTest_Numberz_THREE, 3).
-define(thriftTest_Numberz_FIVE, 5).
-define(thriftTest_Numberz_SIX, 6).
-define(thriftTest_Numberz_EIGHT, 8).

%% struct bonk

-record(bonk, {'message' :: string() | binary(),
               'type' :: integer()}).
-type bonk() :: #bonk{}.

%% struct bools

-record(bools, {'im_true' :: boolean(),
                'im_false' :: boolean()}).
-type bools() :: #bools{}.

%% struct xtruct

-record(xtruct, {'string_thing' :: string() | binary(),
                 'byte_thing' :: integer(),
                 'i32_thing' :: integer(),
                 'i64_thing' :: integer()}).
-type xtruct() :: #xtruct{}.

%% struct xtruct2

-record(xtruct2, {'byte_thing' :: integer(),
                  'struct_thing' :: xtruct(),
                  'i32_thing' :: integer()}).
-type xtruct2() :: #xtruct2{}.

%% struct xtruct3

-record(xtruct3, {'string_thing' :: string() | binary(),
                  'changed' :: integer(),
                  'i32_thing' :: integer(),
                  'i64_thing' :: integer()}).
-type xtruct3() :: #xtruct3{}.

%% struct insanity

-record(insanity, {'userMap' :: dict(),
                   'xtructs' :: list()}).
-type insanity() :: #insanity{}.

%% struct crazyNesting

-record(crazyNesting, {'string_field' :: string() | binary(),
                       'set_field' :: set(),
                       'list_field' = [] :: list(),
                       'binary_field' :: string() | binary()}).
-type crazyNesting() :: #crazyNesting{}.

%% struct xception

-record(xception, {'errorCode' :: integer(),
                   'message' :: string() | binary()}).
-type xception() :: #xception{}.

%% struct xception2

-record(xception2, {'errorCode' :: integer(),
                    'struct_thing' :: xtruct()}).
-type xception2() :: #xception2{}.

%% struct emptyStruct

-record(emptyStruct, {}).
-type emptyStruct() :: #emptyStruct{}.

%% struct oneField

-record(oneField, {'field' :: emptyStruct()}).
-type oneField() :: #oneField{}.

%% struct versioningTestV1

-record(versioningTestV1, {'begin_in_both' :: integer(),
                           'old_string' :: string() | binary(),
                           'end_in_both' :: integer()}).
-type versioningTestV1() :: #versioningTestV1{}.

%% struct versioningTestV2

-record(versioningTestV2, {'begin_in_both' :: integer(),
                           'newint' :: integer(),
                           'newbyte' :: integer(),
                           'newshort' :: integer(),
                           'newlong' :: integer(),
                           'newdouble' :: float(),
                           'newstruct' :: bonk(),
                           'newlist' :: list(),
                           'newset' :: set(),
                           'newmap' :: dict(),
                           'newstring' :: string() | binary(),
                           'end_in_both' :: integer()}).
-type versioningTestV2() :: #versioningTestV2{}.

%% struct listTypeVersioningV1

-record(listTypeVersioningV1, {'myints' :: list(),
                               'hello' :: string() | binary()}).
-type listTypeVersioningV1() :: #listTypeVersioningV1{}.

%% struct listTypeVersioningV2

-record(listTypeVersioningV2, {'strings' :: list(),
                               'hello' :: string() | binary()}).
-type listTypeVersioningV2() :: #listTypeVersioningV2{}.

%% struct guessProtocolStruct

-record(guessProtocolStruct, {'map_field' :: dict()}).
-type guessProtocolStruct() :: #guessProtocolStruct{}.

%% struct largeDeltas

-record(largeDeltas, {'b1' :: bools(),
                      'b10' :: bools(),
                      'b100' :: bools(),
                      'check_true' :: boolean(),
                      'b1000' :: bools(),
                      'check_false' :: boolean(),
                      'vertwo2000' :: versioningTestV2(),
                      'a_set2500' :: set(),
                      'vertwo3000' :: versioningTestV2(),
                      'big_numbers' :: list()}).
-type largeDeltas() :: #largeDeltas{}.

%% struct nestedListsI32x2

-record(nestedListsI32x2, {'integerlist' :: list()}).
-type nestedListsI32x2() :: #nestedListsI32x2{}.

%% struct nestedListsI32x3

-record(nestedListsI32x3, {'integerlist' :: list()}).
-type nestedListsI32x3() :: #nestedListsI32x3{}.

%% struct nestedMixedx2

-record(nestedMixedx2, {'int_set_list' :: list(),
                        'map_int_strset' :: dict(),
                        'map_int_strset_list' :: list()}).
-type nestedMixedx2() :: #nestedMixedx2{}.

%% struct listBonks

-record(listBonks, {'bonk' :: list()}).
-type listBonks() :: #listBonks{}.

%% struct nestedListsBonk

-record(nestedListsBonk, {'bonk' :: list()}).
-type nestedListsBonk() :: #nestedListsBonk{}.

%% struct boolTest

-record(boolTest, {'b' = true :: boolean(),
                   's' = "true" :: string() | binary()}).
-type boolTest() :: #boolTest{}.

%% struct structA

-record(structA, {'s' :: string() | binary()}).
-type structA() :: #structA{}.

%% struct structB

-record(structB, {'aa' :: structA(),
                  'ab' = #structA{} :: structA()}).
-type structB() :: #structB{}.

-endif.
