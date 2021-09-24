_this disableAI "move"; _this disableAI "radioprotocol"; _this disableAI "autocombat"; _this disableAI "weaponaim";

_this addAction [
  "Запрос Техники БМО",
  VVS_fnc_openVVS,
  [VVS_east_Land,"BMO"],
  6,
  true,
  true,
  "",
  "true",
  5
];

_this addAction [
  "Запрос специальной колесной техники",
  VVS_fnc_openVVS,
  [VVS_east_Land,"SWheeled"],
  6,
  true,
  true,
  "",
  "[['SSO', 'FSB']] call ZONT_fnc_checkRole",
  5
];

_this addAction [
  "Запрос Техники ТВ",
  VVS_fnc_openVVS,
  [VVS_east_Land,"TV"],
  6,
  true,
  true,
  "",
  "[['TV']] call ZONT_fnc_checkRole",
  5
];

_this addAction [
  "Запрос Техники 542 ОДШБ МП",
  VVS_fnc_openVVS,
  [VVS_east_Land,"542"],
  6,
  true,
  true,
  "",
  "[['C542']] call ZONT_fnc_checkRole",
  5
];
