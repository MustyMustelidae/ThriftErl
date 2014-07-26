%%
%% Autogenerated by Thrift Compiler (1.0.0-dev)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(thriftTest_types).

-include("thriftTest_types.hrl").

-export([struct_info/1, struct_info_ext/1]).

struct_info('bonk') ->
  {struct, [{1, string},
          {2, i32}]}
;

struct_info('bools') ->
  {struct, [{1, bool},
          {2, bool}]}
;

struct_info('xtruct') ->
  {struct, [{1, string},
          {4, byte},
          {9, i32},
          {11, i64}]}
;

struct_info('xtruct2') ->
  {struct, [{1, byte},
          {2, {struct, {'thriftTest_types', 'xtruct'}}},
          {3, i32}]}
;

struct_info('xtruct3') ->
  {struct, [{1, string},
          {4, i32},
          {9, i32},
          {11, i64}]}
;

struct_info('insanity') ->
  {struct, [{1, {map, i32, i64}},
          {2, {list, {struct, {'thriftTest_types', 'xtruct'}}}}]}
;

struct_info('crazyNesting') ->
  {struct, [{1, string},
          {2, {set, {struct, {'thriftTest_types', 'insanity'}}}},
          {3, {list, {map, {set, i32}, {map, i32, {set, {list, {map, {struct, {'thriftTest_types', 'insanity'}}, string}}}}}}},
          {4, string}]}
;

struct_info('xception') ->
  {struct, [{1, i32},
          {2, string}]}
;

struct_info('xception2') ->
  {struct, [{1, i32},
          {2, {struct, {'thriftTest_types', 'xtruct'}}}]}
;

struct_info('emptyStruct') ->
  {struct, []}
;

struct_info('oneField') ->
  {struct, [{1, {struct, {'thriftTest_types', 'emptyStruct'}}}]}
;

struct_info('versioningTestV1') ->
  {struct, [{1, i32},
          {3, string},
          {12, i32}]}
;

struct_info('versioningTestV2') ->
  {struct, [{1, i32},
          {2, i32},
          {3, byte},
          {4, i16},
          {5, i64},
          {6, double},
          {7, {struct, {'thriftTest_types', 'bonk'}}},
          {8, {list, i32}},
          {9, {set, i32}},
          {10, {map, i32, i32}},
          {11, string},
          {12, i32}]}
;

struct_info('listTypeVersioningV1') ->
  {struct, [{1, {list, i32}},
          {2, string}]}
;

struct_info('listTypeVersioningV2') ->
  {struct, [{1, {list, string}},
          {2, string}]}
;

struct_info('guessProtocolStruct') ->
  {struct, [{7, {map, string, string}}]}
;

struct_info('largeDeltas') ->
  {struct, [{1, {struct, {'thriftTest_types', 'bools'}}},
          {10, {struct, {'thriftTest_types', 'bools'}}},
          {100, {struct, {'thriftTest_types', 'bools'}}},
          {500, bool},
          {1000, {struct, {'thriftTest_types', 'bools'}}},
          {1500, bool},
          {2000, {struct, {'thriftTest_types', 'versioningTestV2'}}},
          {2500, {set, string}},
          {3000, {struct, {'thriftTest_types', 'versioningTestV2'}}},
          {4000, {list, i32}}]}
;

struct_info('nestedListsI32x2') ->
  {struct, [{1, {list, {list, i32}}}]}
;

struct_info('nestedListsI32x3') ->
  {struct, [{1, {list, {list, {list, i32}}}}]}
;

struct_info('nestedMixedx2') ->
  {struct, [{1, {list, {set, i32}}},
          {2, {map, i32, {set, string}}},
          {3, {list, {map, i32, {set, string}}}}]}
;

struct_info('listBonks') ->
  {struct, [{1, {list, {struct, {'thriftTest_types', 'bonk'}}}}]}
;

struct_info('nestedListsBonk') ->
  {struct, [{1, {list, {list, {list, {struct, {'thriftTest_types', 'bonk'}}}}}}]}
;

struct_info('boolTest') ->
  {struct, [{1, bool},
          {2, string}]}
;

struct_info('structA') ->
  {struct, [{1, string}]}
;

struct_info('structB') ->
  {struct, [{1, {struct, {'thriftTest_types', 'structA'}}},
          {2, {struct, {'thriftTest_types', 'structA'}}}]}
;

struct_info(_) -> erlang:error(function_clause).

struct_info_ext('bonk') ->
  {struct, [{1, undefined, string, 'message', undefined},
          {2, undefined, i32, 'type', undefined}]}
;

struct_info_ext('bools') ->
  {struct, [{1, undefined, bool, 'im_true', undefined},
          {2, undefined, bool, 'im_false', undefined}]}
;

struct_info_ext('xtruct') ->
  {struct, [{1, undefined, string, 'string_thing', undefined},
          {4, undefined, byte, 'byte_thing', undefined},
          {9, undefined, i32, 'i32_thing', undefined},
          {11, undefined, i64, 'i64_thing', undefined}]}
;

struct_info_ext('xtruct2') ->
  {struct, [{1, undefined, byte, 'byte_thing', undefined},
          {2, undefined, {struct, {'thriftTest_types', 'xtruct'}}, 'struct_thing', #xtruct{}},
          {3, undefined, i32, 'i32_thing', undefined}]}
;

struct_info_ext('xtruct3') ->
  {struct, [{1, undefined, string, 'string_thing', undefined},
          {4, undefined, i32, 'changed', undefined},
          {9, undefined, i32, 'i32_thing', undefined},
          {11, undefined, i64, 'i64_thing', undefined}]}
;

struct_info_ext('insanity') ->
  {struct, [{1, undefined, {map, i32, i64}, 'userMap', dict:new()},
          {2, undefined, {list, {struct, {'thriftTest_types', 'xtruct'}}}, 'xtructs', []}]}
;

struct_info_ext('crazyNesting') ->
  {struct, [{1, undefined, string, 'string_field', undefined},
          {2, optional, {set, {struct, {'thriftTest_types', 'insanity'}}}, 'set_field', sets:new()},
          {3, required, {list, {map, {set, i32}, {map, i32, {set, {list, {map, {struct, {'thriftTest_types', 'insanity'}}, string}}}}}}, 'list_field', []},
          {4, undefined, string, 'binary_field', undefined}]}
;

struct_info_ext('xception') ->
  {struct, [{1, undefined, i32, 'errorCode', undefined},
          {2, undefined, string, 'message', undefined}]}
;

struct_info_ext('xception2') ->
  {struct, [{1, undefined, i32, 'errorCode', undefined},
          {2, undefined, {struct, {'thriftTest_types', 'xtruct'}}, 'struct_thing', #xtruct{}}]}
;

struct_info_ext('emptyStruct') ->
  {struct, []}
;

struct_info_ext('oneField') ->
  {struct, [{1, undefined, {struct, {'thriftTest_types', 'emptyStruct'}}, 'field', #emptyStruct{}}]}
;

struct_info_ext('versioningTestV1') ->
  {struct, [{1, undefined, i32, 'begin_in_both', undefined},
          {3, undefined, string, 'old_string', undefined},
          {12, undefined, i32, 'end_in_both', undefined}]}
;

struct_info_ext('versioningTestV2') ->
  {struct, [{1, undefined, i32, 'begin_in_both', undefined},
          {2, undefined, i32, 'newint', undefined},
          {3, undefined, byte, 'newbyte', undefined},
          {4, undefined, i16, 'newshort', undefined},
          {5, undefined, i64, 'newlong', undefined},
          {6, undefined, double, 'newdouble', undefined},
          {7, undefined, {struct, {'thriftTest_types', 'bonk'}}, 'newstruct', #bonk{}},
          {8, undefined, {list, i32}, 'newlist', []},
          {9, undefined, {set, i32}, 'newset', sets:new()},
          {10, undefined, {map, i32, i32}, 'newmap', dict:new()},
          {11, undefined, string, 'newstring', undefined},
          {12, undefined, i32, 'end_in_both', undefined}]}
;

struct_info_ext('listTypeVersioningV1') ->
  {struct, [{1, undefined, {list, i32}, 'myints', []},
          {2, undefined, string, 'hello', undefined}]}
;

struct_info_ext('listTypeVersioningV2') ->
  {struct, [{1, undefined, {list, string}, 'strings', []},
          {2, undefined, string, 'hello', undefined}]}
;

struct_info_ext('guessProtocolStruct') ->
  {struct, [{7, undefined, {map, string, string}, 'map_field', dict:new()}]}
;

struct_info_ext('largeDeltas') ->
  {struct, [{1, undefined, {struct, {'thriftTest_types', 'bools'}}, 'b1', #bools{}},
          {10, undefined, {struct, {'thriftTest_types', 'bools'}}, 'b10', #bools{}},
          {100, undefined, {struct, {'thriftTest_types', 'bools'}}, 'b100', #bools{}},
          {500, undefined, bool, 'check_true', undefined},
          {1000, undefined, {struct, {'thriftTest_types', 'bools'}}, 'b1000', #bools{}},
          {1500, undefined, bool, 'check_false', undefined},
          {2000, undefined, {struct, {'thriftTest_types', 'versioningTestV2'}}, 'vertwo2000', #versioningTestV2{}},
          {2500, undefined, {set, string}, 'a_set2500', sets:new()},
          {3000, undefined, {struct, {'thriftTest_types', 'versioningTestV2'}}, 'vertwo3000', #versioningTestV2{}},
          {4000, undefined, {list, i32}, 'big_numbers', []}]}
;

struct_info_ext('nestedListsI32x2') ->
  {struct, [{1, undefined, {list, {list, i32}}, 'integerlist', []}]}
;

struct_info_ext('nestedListsI32x3') ->
  {struct, [{1, undefined, {list, {list, {list, i32}}}, 'integerlist', []}]}
;

struct_info_ext('nestedMixedx2') ->
  {struct, [{1, undefined, {list, {set, i32}}, 'int_set_list', []},
          {2, undefined, {map, i32, {set, string}}, 'map_int_strset', dict:new()},
          {3, undefined, {list, {map, i32, {set, string}}}, 'map_int_strset_list', []}]}
;

struct_info_ext('listBonks') ->
  {struct, [{1, undefined, {list, {struct, {'thriftTest_types', 'bonk'}}}, 'bonk', []}]}
;

struct_info_ext('nestedListsBonk') ->
  {struct, [{1, undefined, {list, {list, {list, {struct, {'thriftTest_types', 'bonk'}}}}}, 'bonk', []}]}
;

struct_info_ext('boolTest') ->
  {struct, [{1, optional, bool, 'b', true},
          {2, optional, string, 's', "true"}]}
;

struct_info_ext('structA') ->
  {struct, [{1, required, string, 's', undefined}]}
;

struct_info_ext('structB') ->
  {struct, [{1, optional, {struct, {'thriftTest_types', 'structA'}}, 'aa', #structA{}},
          {2, required, {struct, {'thriftTest_types', 'structA'}}, 'ab', #structA{}}]}
;

struct_info_ext(_) -> erlang:error(function_clause).

