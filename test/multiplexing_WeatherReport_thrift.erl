%%
%% Autogenerated by Thrift Compiler (1.0.0-dev)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(multiplexing_WeatherReport_thrift).
-behaviour(thrift_service).


-include("multiplexing_WeatherReport_thrift.hrl").

-export([struct_info/1, function_info/2]).

struct_info(_) -> erlang:error(function_clause).
%%% interface
% getTemperature(This)
function_info('getTemperature', params_type) ->
  {struct, []}
;
function_info('getTemperature', reply_type) ->
  double;
function_info('getTemperature', exceptions) ->
  {struct, []}
;
function_info(_Func, _Info) -> erlang:error(function_clause).
