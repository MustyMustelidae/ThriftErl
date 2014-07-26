-ifndef(_thrift1151_types_included).
-define(_thrift1151_types_included, yeah).

%% struct structA

-record(structA, {'x' :: integer()}).
-type structA() :: #structA{}.

%% struct structB

-record(structB, {'x' :: integer()}).
-type structB() :: #structB{}.

%% struct structC

-record(structC, {'x' :: structA()}).
-type structC() :: #structC{}.

-endif.
