function cell_info=cell_info_get_soma_bbox_omni(cell_info)

% bbox in original mesh.omni
% xs,xe,ys,ye,zs,ze

% struct('name','1ws','annotation','M1','cells',[20203 20029]);
cell_info([cell_info.cell_id]==20203).soma_bbox=[627,1320,11912,12654,4999,5611];
cell_info([cell_info.cell_id]==20029).soma_bbox=[885,1523,8965,10076,10054,10723];

% struct('name','1wt','annotation','sOFFalpha','cells',[10018 17109 26022]); 
cell_info([cell_info.cell_id]==10018).soma_bbox=[321,1212,15907,16985,6335,7339];
cell_info([cell_info.cell_id]==17109).soma_bbox=[1024,1935,5517,6995,4433,5249];
cell_info([cell_info.cell_id]==26022).soma_bbox=[124,971,18539,19677,2015,2849];

% struct('name','1no','annotation','','cells',[20157 17110 17050 17021 20092 17236 26024 10007]);
cell_info([cell_info.cell_id]==20157).soma_bbox=[1007,1461,6208,7212,6751,7731];
cell_info([cell_info.cell_id]==17110).soma_bbox=[835,1629,7106,7873,4187,4933];
cell_info([cell_info.cell_id]==17050).soma_bbox=[232,1055,17498,18420,3007,3602];
cell_info([cell_info.cell_id]==17021).soma_bbox=[366,880,13900,15023,3717,4466];
cell_info([cell_info.cell_id]==20092).soma_bbox=[479,1200,14591,15401,6379,7066];
cell_info([cell_info.cell_id]==17236).soma_bbox=[1339,2083,3282,4223,8521,9172];
cell_info([cell_info.cell_id]==26024).soma_bbox=[1205,1808,4233,5180,9864,10436];
cell_info([cell_info.cell_id]==10007).soma_bbox=[489,1210,14827,15641,8294,9025];

% struct('name','1ni','annotation','','cells',[20164 17182 20132 26019 26087]);
cell_info([cell_info.cell_id]==20164).soma_bbox=[517,1408,13004,13836,4886,5463];
cell_info([cell_info.cell_id]==17182).soma_bbox=[1263,1907,463,1972,5362,6178];
cell_info([cell_info.cell_id]==20132).soma_bbox=[1023,1698,5478,7193,8350,9045];
cell_info([cell_info.cell_id]==26019).soma_bbox=[725,1493,10468,11241,2023,2511];
cell_info([cell_info.cell_id]==26087).soma_bbox=[208,776,17877,18635,8950,9631];

% struct('name','2an','annotation','mini-J','cells',[17177 20066 20060 17027 15018 17105 15066 10017 
% 10010 17062 50001 20264 20168 20147 17130 20101 20024 26190 26026 26049 26082 26129 26147 26172 26041]);
cell_info([cell_info.cell_id]==17177).soma_bbox=[1211,1849,1787,2583,5051,6074];
cell_info([cell_info.cell_id]==20066).soma_bbox=[968,1650,7238,7996,609,3529];
cell_info([cell_info.cell_id]==20060).soma_bbox=[628,1334,14020,15155,3862,4383];
cell_info([cell_info.cell_id]==17027).soma_bbox=[497,1313,11608,12555,2003,2633];
cell_info([cell_info.cell_id]==15018).soma_bbox=[1266,1920,3960,4807,8671,9309];
cell_info([cell_info.cell_id]==17105).soma_bbox=[902,1771,6566,7705,5632,6757];
cell_info([cell_info.cell_id]==15066).soma_bbox=[905,1493,9549,10500,9223,9932];
cell_info([cell_info.cell_id]==10017).soma_bbox=[601,1388,9559,10305,2907,3675];
cell_info([cell_info.cell_id]==10010).soma_bbox=[779,1418,9696,10640,4425,5118,];
cell_info([cell_info.cell_id]==17062).soma_bbox=[239,952,17730,18457,1032,1571];
cell_info([cell_info.cell_id]==50001).soma_bbox=[380,960,15991,16766,8745,9361];
cell_info([cell_info.cell_id]==20264).soma_bbox=[1143,1969,3530,5455,4916,6117];
cell_info([cell_info.cell_id]==20168).soma_bbox=[634,1350,10873,13548,7314,7950];
cell_info([cell_info.cell_id]==20147).soma_bbox=[1050,1911,5573,7104,7320,8588];
cell_info([cell_info.cell_id]==17130).soma_bbox=[922,1610,1148,6567,1535,2194];
cell_info([cell_info.cell_id]==20101).soma_bbox=[817,1330,12389,13959,8577,9507];
cell_info([cell_info.cell_id]==20024).soma_bbox=[732,1376,11579,13118,10019,10512];
cell_info([cell_info.cell_id]==26190).soma_bbox=[999,1788,6930,7820,8566,11892];
cell_info([cell_info.cell_id]==26026).soma_bbox=[633,1363,15494,16737,4741,5946];
cell_info([cell_info.cell_id]==26049).soma_bbox=[235,1044,17004,17823,3436,3968];
cell_info([cell_info.cell_id]==26082).soma_bbox=[154,1200,17145,19133,5724,8262];
cell_info([cell_info.cell_id]==26129).soma_bbox=[1343,2053,439,1719,8218,10122];
cell_info([cell_info.cell_id]==26147).soma_bbox=[1088,1718,2343,3889,601,1528];
cell_info([cell_info.cell_id]==26172).soma_bbox=[357,1205,14811,15818,1515,2112];
cell_info([cell_info.cell_id]==26041).soma_bbox=[293,802,15882,16779,11512,12196];

% struct('name','2aw','annotation','midi-J','cells',[17075 17060 17028 20103 20201 17205 17107 20047 
% 17144 17061 17200 26018 26150 26163 26189 26193 26126 26095 26055]); 
cell_info([cell_info.cell_id]==17075).soma_bbox=[538,1217,15654,16502,1285,2025];
cell_info([cell_info.cell_id]==17060).soma_bbox=[241,954,17667,18382,3370,3923];
cell_info([cell_info.cell_id]==17028).soma_bbox=[626,1389,1389,11375,5348,5868];
cell_info([cell_info.cell_id]==20103).soma_bbox=[803,1562,12770,14785,3314,4788];
cell_info([cell_info.cell_id]==20201).soma_bbox=[669,1354,10711,13231,6679,7690];
cell_info([cell_info.cell_id]==17205).soma_bbox=[1134,1895,3975,4710,7079,7673];
cell_info([cell_info.cell_id]==17107).soma_bbox=[826,1499,8254,9453,4278,5542];
cell_info([cell_info.cell_id]==20047).soma_bbox=[435,1079,12257,16845,2945,7078];
cell_info([cell_info.cell_id]==17144).soma_bbox=[940,1598,8385,9469,8701,9483];
cell_info([cell_info.cell_id]==17061).soma_bbox=[186,755,17974,18734,9506,10265];
cell_info([cell_info.cell_id]==17200).soma_bbox=[1239,1803,2339,3520,4863,5582];
cell_info([cell_info.cell_id]==26018).soma_bbox=[1039,1658,5213,6610,1007,2740];
cell_info([cell_info.cell_id]==26150).soma_bbox=[974,1674,4665,5748,609,2327];
cell_info([cell_info.cell_id]==26163).soma_bbox=[499,1154,10995,11755,1187,1799];
cell_info([cell_info.cell_id]==26189).soma_bbox=[858,1516,9356,10184,11053,11701];
cell_info([cell_info.cell_id]==26193).soma_bbox=[284,971,17066,18326,5635,7697];
cell_info([cell_info.cell_id]==26126).soma_bbox=[1577,2144,482,1409,8732,9373];
cell_info([cell_info.cell_id]==26095).soma_bbox=[1246,1907,3412,4229,7385,7921];
cell_info([cell_info.cell_id]==26055).soma_bbox=[173,779,18653,19383,3671,4194];

% struct('name','2o','annotation','','cells',[17216 10005 10013 26062 26118]);
cell_info([cell_info.cell_id]==17216).soma_bbox=[997,1822,2933,3996,2367,3113];
cell_info([cell_info.cell_id]==10005).soma_bbox=[700,1390,12108,13738,6667,10144];
cell_info([cell_info.cell_id]==10013).soma_bbox=[1083,1832,5156,5769,10803,11557];
cell_info([cell_info.cell_id]==26062).soma_bbox=[220,1036,17660,18778,5174,5821];
cell_info([cell_info.cell_id]==26118).soma_bbox=[1318,2146,1281,2377,6512,7368];

% struct('name','2i','annotation','','cells',[50004 17013 17092 20051 20234 20082 26109 26131]);
cell_info([cell_info.cell_id]==50004).soma_bbox=[853,1366,10596,11447,8734,9332];
cell_info([cell_info.cell_id]==17013).soma_bbox=[425,1002,13201,13990,535,1108];
cell_info([cell_info.cell_id]==17092).soma_bbox=[258,735,16988,18097,10052,11553];
cell_info([cell_info.cell_id]==20051).soma_bbox=[440,1145,12889,15649,5721,6655];
cell_info([cell_info.cell_id]==20234).soma_bbox=[805,1346,9776,10558,5158,5764];
cell_info([cell_info.cell_id]==20082).soma_bbox=[996,1530,6509,8349,8483,10095];
cell_info([cell_info.cell_id]==26109).soma_bbox=[1128,1699,720,2080,2495,3434];
cell_info([cell_info.cell_id]==26131).soma_bbox=[1333,1898,1776,2631,9918,10597];

% struct('name','3o','annotation','','cells',[17192 17024 20121 17076 17037 26003 26038 26155 26157]);
cell_info([cell_info.cell_id]==17192).soma_bbox=[1244,1800,2426,3101,5341,6060];
cell_info([cell_info.cell_id]==17024).soma_bbox=[537,1039,14618,15551,9990,10632];
cell_info([cell_info.cell_id]==20121).soma_bbox=[687,1341,9322,10518,3693,4209];
cell_info([cell_info.cell_id]==17076).soma_bbox=[266,978,16831,17644,2797,3276];
cell_info([cell_info.cell_id]==17037).soma_bbox=[932,1473,12313,13223,8639,9217];
cell_info([cell_info.cell_id]==26003).soma_bbox=[329,1227,15576,16819,1772,3434];
cell_info([cell_info.cell_id]==26038).soma_bbox=[747,1236,11286,12601,11403,12651];
cell_info([cell_info.cell_id]==26155).soma_bbox=[905,1584,7217,8274,659,2160];
cell_info([cell_info.cell_id]==26157).soma_bbox=[637,1378,5060,9435,654,1366];

% struct('name','3i','annotation','mini-sOFFalpha','cells',[17135 20107 17077 26063 26104 26116 26188]);
cell_info([cell_info.cell_id]==17135).soma_bbox=[1051,1864,5103,7109,6275,7080];
cell_info([cell_info.cell_id]==20107).soma_bbox=[642,1541,10332,11644,2355,4008];
cell_info([cell_info.cell_id]==17077).soma_bbox=[377,1157,15700,16512,2453,3105];
cell_info([cell_info.cell_id]==26063).soma_bbox=[252,1310,15135,18454,5646,6189];
cell_info([cell_info.cell_id]==26104).soma_bbox=[1107,1722,668,2240,1797,2535];
cell_info([cell_info.cell_id]==26116).soma_bbox=[1356,2018,675,6605,6386,6950];
cell_info([cell_info.cell_id]==26188).soma_bbox=[888,1510,8505,9442,11835,12437];

% struct('name','4on','annotation','mini-tOFFalpha','cells',[20230 17064 17034 17167 17151 20041 26021 26086 26121 26146 26160]);
cell_info([cell_info.cell_id]==20230).soma_bbox=[799,1531,10279,11094,5855,6651];
cell_info([cell_info.cell_id]==17064).soma_bbox=[286,1038,16638,17564,3061,3673];
cell_info([cell_info.cell_id]==17034).soma_bbox=[633,1229,12293,13268,11457,12026];
cell_info([cell_info.cell_id]==17167).soma_bbox=[1057,1871,4687,6601,3934,6036];
cell_info([cell_info.cell_id]==17151).soma_bbox=[1014,1685,7123,8485,9643,11127];
cell_info([cell_info.cell_id]==20041).soma_bbox=[705,1610,7410,9464,1337,3143];
cell_info([cell_info.cell_id]==26021).soma_bbox=[328,1058,16696,17459,6002,7486];
cell_info([cell_info.cell_id]==26086).soma_bbox=[170,943,17861,19462,9255,10540];
cell_info([cell_info.cell_id]==26121).soma_bbox=[1373,2078,391,1456,6465,7828];
cell_info([cell_info.cell_id]==26146).soma_bbox=[976,1935,996,3400,521,1263];
cell_info([cell_info.cell_id]==26160).soma_bbox=[553,1268,8247,10931,894,1532];

% struct('name','4ow','annotation','tOFFalpha','cells',[17188 17079 20156 26004]);
cell_info([cell_info.cell_id]==17188).soma_bbox=[1167,1959,2965,4295,6615,7482];
cell_info([cell_info.cell_id]==17079).soma_bbox=[240,1182,16544,17864,864,1756];
cell_info([cell_info.cell_id]==20156).soma_bbox=[566,1455,13772,14926,7631,9112];
cell_info([cell_info.cell_id]==26004).soma_bbox=[1141,1943,2671,5271,10568,11532];

% struct('name','4i','annotation','','cells',[25004 17022 20170 17247 20174 17057 26006 26008 26050 26096 26102 26164]);
cell_info([cell_info.cell_id]==25004).soma_bbox=[1061,1744,4222,5212,4063,4646];
cell_info([cell_info.cell_id]==17022).soma_bbox=[604,1409,10926,11685,3739,4316];
cell_info([cell_info.cell_id]==20170).soma_bbox=[751,1429,11482,12374,7626,8729];
cell_info([cell_info.cell_id]==17247).soma_bbox=[996,1701,7360,8165,8855,10326];
cell_info([cell_info.cell_id]==20174).soma_bbox=[943,1700,7176,8636,2154,5803];
cell_info([cell_info.cell_id]==17057).soma_bbox=[230,1026,17100,17916,5219,5929];
cell_info([cell_info.cell_id]==26006).soma_bbox=[1168,1835,3785,4784,11121,11865];
cell_info([cell_info.cell_id]==26008).soma_bbox=[502,1083,5172,15083,5762,11897];
cell_info([cell_info.cell_id]==26050).soma_bbox=[407,1078,16735,17848,2194,2848];
cell_info([cell_info.cell_id]==26096).soma_bbox=[1256,1875,2836,3693,7615,8313];
cell_info([cell_info.cell_id]==26102).soma_bbox=[934,1642,2194,3031,644,2104];
cell_info([cell_info.cell_id]==26164).soma_bbox=[487,1119,11271,12264,538,1487];

% struct('name','5to','annotation','','cells',[20128 20165 20240]);
cell_info([cell_info.cell_id]==20128).soma_bbox=[744,1401,11473,12667,8369,9131];
cell_info([cell_info.cell_id]==20165).soma_bbox=[686,1497,9836,14139,2708,5975];
cell_info([cell_info.cell_id]==20240).soma_bbox=[905,1472,8771,10585,6692,7288];

% struct('name','5ti','annotation','w3-like','cells',[17090 17181 50002 20114 20102 20216 20191 20184 20226 20262 20097 
% 17093 17121 17159 20089 17190 17078 17059 20127 20055 26144 26170 26161 26156 26152 26123 26120 26112 26083 26053]);
cell_info([cell_info.cell_id]==17090).soma_bbox=[222,729,20004,20645,4868,5462];
cell_info([cell_info.cell_id]==17181).soma_bbox=[1324,1831,1486,2226,11770,12331];
cell_info([cell_info.cell_id]==50002).soma_bbox=[475,1047,15042,15771,6711,7429];
cell_info([cell_info.cell_id]==20114).soma_bbox=[974,1701,8016,9704,8770,9665];
cell_info([cell_info.cell_id]==20102).soma_bbox=[751,1449,14055,14866,3649,4091];
cell_info([cell_info.cell_id]==20216).soma_bbox=[931,1509,7130,7961,4924,5472];
cell_info([cell_info.cell_id]==20191).soma_bbox=[828,1358,12137,13169,2793,5197];
cell_info([cell_info.cell_id]==20184).soma_bbox=[1039,1554,5192,9104,6518,8402];
cell_info([cell_info.cell_id]==20226).soma_bbox=[735,1611,11058,11725,4659,6783];
cell_info([cell_info.cell_id]==20262).soma_bbox=[1123,1845,4343,5053,7405,7910];
cell_info([cell_info.cell_id]==20097).soma_bbox=[695,1382,12467,14253,8981,9820];
cell_info([cell_info.cell_id]==17093).soma_bbox=[370,867,16729,17526,9501,10151];
cell_info([cell_info.cell_id]==17121).soma_bbox=[876,1458,8753,9517,4047,4633];
cell_info([cell_info.cell_id]==17159).soma_bbox=[987,1598,7676,8325,6454,7041];
cell_info([cell_info.cell_id]==20089).soma_bbox=[1029,1696,6575,9367,9006,9671];
cell_info([cell_info.cell_id]==17190).soma_bbox=[1086,1630,3620,4357,3270,3876];
cell_info([cell_info.cell_id]==17078).soma_bbox=[389,1062,16902,17750,1757,2329];
cell_info([cell_info.cell_id]==17059).soma_bbox=[274,921,17676,18325,4758,5338];
cell_info([cell_info.cell_id]==20127).soma_bbox=[640,1303,12518,14154,7604,8440];
cell_info([cell_info.cell_id]==20055).soma_bbox=[359,1011,15072,15802,3716,4247];
cell_info([cell_info.cell_id]==26144).soma_bbox=[987,1646,936,1860,964,1450];
cell_info([cell_info.cell_id]==26170).soma_bbox=[402,1036,13918,14693,1618,2086];
cell_info([cell_info.cell_id]==26161).soma_bbox=[700,1720,9674,12754,1631,2707];
cell_info([cell_info.cell_id]==26156).soma_bbox=[754,1510,5279,8061,274,901];
cell_info([cell_info.cell_id]==26152).soma_bbox=[830,1358,4356,6245,783,1713];
cell_info([cell_info.cell_id]==26123).soma_bbox=[1220,2056,1885,3416,7707,9266];
cell_info([cell_info.cell_id]==26120).soma_bbox=[1302,1906,2299,3155,6629,7180];
cell_info([cell_info.cell_id]==26112).soma_bbox=[1231,1926,649,1556,2923,4140];
cell_info([cell_info.cell_id]==26083).soma_bbox=[233,1139,16105,19093,5361,7804];
cell_info([cell_info.cell_id]==26053).soma_bbox=[220,953,17022,19253,2580,3140];

% struct('name','5so','annotation','','cells',[17160 17146 20223 17081 17127 17168 20053 20012 26046 17138 17011 26111 26140 26151 26181 26187]);
cell_info([cell_info.cell_id]==17160).soma_bbox=[972,1716,6522,7160,5343,5955];
cell_info([cell_info.cell_id]==17146).soma_bbox=[883,1512,9050,10622,8911,9442];
cell_info([cell_info.cell_id]==20223).soma_bbox=[976,1526,10514,12346,5697,7390];
cell_info([cell_info.cell_id]==17081).soma_bbox=[506,1146,15826,16614,1064,1527];
cell_info([cell_info.cell_id]==17127).soma_bbox=[771,1429,7193,8609,364,866];
cell_info([cell_info.cell_id]==17168).soma_bbox=[1102,1833,5415,6092,9328,10332];
cell_info([cell_info.cell_id]==20053).soma_bbox=[542,1062,14677,15620,7643,8372];
cell_info([cell_info.cell_id]==20012).soma_bbox=[626,1193,14944,16269,3612,4117];
cell_info([cell_info.cell_id]==26046).soma_bbox=[297,993,16582,17848,5698,7467];
cell_info([cell_info.cell_id]==17138).soma_bbox=[964,1480,8554,9804,7455,8000];
cell_info([cell_info.cell_id]==17011).soma_bbox=[655,1318,11059,11800,4141,5240];
cell_info([cell_info.cell_id]==26111).soma_bbox=[1053,1676,2329,3333,2519,3240];
cell_info([cell_info.cell_id]==26140).soma_bbox=[1305,1906,1297,2171,11313,11887];
cell_info([cell_info.cell_id]==26151).soma_bbox=[1145,1580,4603,5759,622,1719];
cell_info([cell_info.cell_id]==26181).soma_bbox=[236,810,19472,20358,1721,2339];
cell_info([cell_info.cell_id]==26187).soma_bbox=[910,1501,8667,9621,11277,11804];

% struct('name','5si','annotation','','cells',[17040 20135 20183 17071 20070 17055 26044 26106 26159 26142 26133]);
cell_info([cell_info.cell_id]==17040).soma_bbox=[518,1053,13975,14786,5659,6387];
cell_info([cell_info.cell_id]==20135).soma_bbox=[921,1632,6167,6901,4176,4697];
cell_info([cell_info.cell_id]==20183).soma_bbox=[955,1522,8921,9745,7964,8557];
cell_info([cell_info.cell_id]==17071).soma_bbox=[332,964,15717,16420,559,1146];
cell_info([cell_info.cell_id]==20070).soma_bbox=[619,1458,13754,14576,9613,10194];
cell_info([cell_info.cell_id]==17055).soma_bbox=[125,792,19544,20235,2007,2729];
cell_info([cell_info.cell_id]==26044).soma_bbox=[318,742,17352,18267,8558,9247];
cell_info([cell_info.cell_id]==26106).soma_bbox=[945,1722,816,1822,1067,1917];
cell_info([cell_info.cell_id]==26159).soma_bbox=[609,1276,9681,10339,879,1526];
cell_info([cell_info.cell_id]==26142).soma_bbox=[1269,1811,2314,3128,11296,11966];
cell_info([cell_info.cell_id]==26133).soma_bbox=[1286,2941,2476,3482,10027,10615];

% struct('name','6sn','annotation','mini-tONalpha','cells',[20198 20073 17082 26035 26043 26171]);
cell_info([cell_info.cell_id]==20198).soma_bbox=[767,1381,9567,11107,4406,5294];
cell_info([cell_info.cell_id]==20073).soma_bbox=[722,1302,11427,13017,8168,10380];
cell_info([cell_info.cell_id]==17082).soma_bbox=[218,792,18825,19667,5265,5744];
cell_info([cell_info.cell_id]==26035).soma_bbox=[1123,1689,4520,5246,11483,12122];
cell_info([cell_info.cell_id]==26043).soma_bbox=[310,834,16134,17935,9102,9746];
cell_info([cell_info.cell_id]==26171).soma_bbox=[382,1031,14364,15059,1829,2382];

% struct('name','6sw','annotation','tONalpha','cells',[20222 20217 17083 20068 26020]);
cell_info([cell_info.cell_id]==20222).soma_bbox=[667,1456,11216,12591,5033,6969];
cell_info([cell_info.cell_id]==20217).soma_bbox=[933,1698,6910,7954,5391,6121];
cell_info([cell_info.cell_id]==17083).soma_bbox=[268,1073,16995,17866,4765,5421];
cell_info([cell_info.cell_id]==20068).soma_bbox=[835,1541,4761,7345,2246,3622];
cell_info([cell_info.cell_id]==26020).soma_bbox=[452,1223,14765,15776,1665,2820];

% struct('name','6t','annotation','','cells',[20255 20113 20232]);
cell_info([cell_info.cell_id]==20255).soma_bbox=[1161,1667,4652,5328,8657,9246];
cell_info([cell_info.cell_id]==20113).soma_bbox=[834,1434,7004,7596,3272,4141];
cell_info([cell_info.cell_id]==20232).soma_bbox=[830,1375,10487,11198,7303,7881];

% struct('name','7o','annotation','tON DS','cells',[17053 20180 26034 26048 26100 26130]);
cell_info([cell_info.cell_id]==17053).soma_bbox=[310,884,17040,17987,9911,10678];
cell_info([cell_info.cell_id]==20180).soma_bbox=[819,1445,8467,9231,4387,5056];
cell_info([cell_info.cell_id]==26034).soma_bbox=[1222,1812,5539,6410,10888,11572];
cell_info([cell_info.cell_id]==26048).soma_bbox=[391,1056,16498,17347,3916,4555];
cell_info([cell_info.cell_id]==26100).soma_bbox=[1085,1667,2859,3955,2405,3539];
cell_info([cell_info.cell_id]==26130).soma_bbox=[1330,1939,1166,1981,10001,10620];

% struct('name','7i','annotation','sON DS','cells',[17152 20021 26002 26070 26075 26077 26078 26128 20075]);
cell_info([cell_info.cell_id]==17152).soma_bbox=[951,1590,7413,8283,11100,11889];
cell_info([cell_info.cell_id]==20021).soma_bbox=[443,1313,12874,14222,2816,3464];
cell_info([cell_info.cell_id]==26002).soma_bbox=[479,1258,15614,17015,4777,5429];
cell_info([cell_info.cell_id]==26070).soma_bbox=[1049,1747,1053,3832,2956,4112];
cell_info([cell_info.cell_id]==26075).soma_bbox=[1323,2074,1597,2813,8513,10115];
cell_info([cell_info.cell_id]==26077).soma_bbox=[643,1361,8464,11298,657,2105];
cell_info([cell_info.cell_id]==26078).soma_bbox=[518,1344,11138,12082,1668,2912];
cell_info([cell_info.cell_id]==26128).soma_bbox=[1438,2128,1155,5281,8991,9866];
cell_info([cell_info.cell_id]==20075).soma_bbox=[952,1652,7294,8350,9326,10291];

% struct('name','8w','annotation','sONalpha, M4','cells',[17111 26001 26071 26079]);
cell_info([cell_info.cell_id]==17111).soma_bbox=[726,1506,7193,8264,2070,3098];
cell_info([cell_info.cell_id]==26001).soma_bbox=[907,1573,8372,9881,10256,11329];
cell_info([cell_info.cell_id]==26071).soma_bbox=[1235,1918,457,2126,4905,5691];
cell_info([cell_info.cell_id]==26079).soma_bbox=[464,1139,13646,15205,190,1215];

% struct('name','8n','annotation','','cells',[20126]);
cell_info([cell_info.cell_id]==20126).soma_bbox=[658,1209,13462,14343,6380,7141];

% struct('name','9w','annotation','M2','cells',[20228]);
cell_info([cell_info.cell_id]==20228).soma_bbox=[685,1316,11059,11904,5453,6762];

% struct('name','9n','annotation','','cells',[20112 20076 20056 20006 26074 26127 26149 26168]);
cell_info([cell_info.cell_id]==20112).soma_bbox=[812,1459,7383,8240,3370,4109];
cell_info([cell_info.cell_id]==20076).soma_bbox=[867,1450,9856,10908,9703,10354];
cell_info([cell_info.cell_id]==20056).soma_bbox=[688,1247,14591,15520,3368,3901];
cell_info([cell_info.cell_id]==20006).soma_bbox=[445,966,15441,16302,8129,8707];
cell_info([cell_info.cell_id]==26074).soma_bbox=[1285,1882,2700,3524,8282,8789];
cell_info([cell_info.cell_id]==26127).soma_bbox=[1339,1960,1182,1975,8582,9090];
cell_info([cell_info.cell_id]==26149).soma_bbox=[937,1494,4062,4848,1559,2330];
cell_info([cell_info.cell_id]==26168).soma_bbox=[439,1054,13217,14077,1186,1824];

% struct('name','51','annotation','w3','cells',[20120 20212 20182 17098 17095 20153 20258 17035 
% 20037 26177 26154 26136 26113 26098 26085 26054 26039 26025 26122]);
cell_info([cell_info.cell_id]==20120).soma_bbox=[852,1514,7902,8772,3844,4399];
cell_info([cell_info.cell_id]==20212).soma_bbox=[672,1402,11865,12545,5765,6357];
cell_info([cell_info.cell_id]==20182).soma_bbox=[897,1495,9219,10952,6387,8740];
cell_info([cell_info.cell_id]==17098).soma_bbox=[247,818,16069,17682,11087,12084];
cell_info([cell_info.cell_id]==17095).soma_bbox=[485,989,15460,16895,5510,7935];
cell_info([cell_info.cell_id]==20153).soma_bbox=[1108,1796,6883,7750,7105,7662];
cell_info([cell_info.cell_id]==20258).soma_bbox=[1173,1790,4376,5052,9400,9953];
cell_info([cell_info.cell_id]==17035).soma_bbox=[828,1426,10902,11661,11100,11888];
cell_info([cell_info.cell_id]==20037).soma_bbox=[498,1163,11868,12984,2881,3469];
cell_info([cell_info.cell_id]==26177).soma_bbox=[445,984,16212,17019,400,1202];
cell_info([cell_info.cell_id]==26154).soma_bbox=[850,1529,4124,5040,881,1445];
cell_info([cell_info.cell_id]==26136).soma_bbox=[1342,1958,1328,2111,10589,11201];
cell_info([cell_info.cell_id]==26113).soma_bbox=[1132,1718,2307,3037,3832,4412];
cell_info([cell_info.cell_id]==26098).soma_bbox=[1098,1702,2717,4431,4303,4800];
cell_info([cell_info.cell_id]==26085).soma_bbox=[131,728,18576,19289,9078,9637];
cell_info([cell_info.cell_id]==26054).soma_bbox=[221,1054,13545,18956,454,4145];
cell_info([cell_info.cell_id]==26039).soma_bbox=[693,1308,12765,15561,10377,11806];
cell_info([cell_info.cell_id]==26025).soma_bbox=[338,925,16029,16878,4198,4821];
cell_info([cell_info.cell_id]==26122).soma_bbox=[1380,2085,726,1580,7673,8324];

% struct('name','25','annotation','','cells',[20105 20104 20186 20237 20067 25006 17176 17132 
% 20045 20036 26031 26134 26167 26042 26040 26037 26060 26066 26099 26117 26145 26175]);
cell_info([cell_info.cell_id]==20105).soma_bbox=[1035,1530,13327,14288,3565,4042];
cell_info([cell_info.cell_id]==20104).soma_bbox=[625,1209,13622,14720,6565,8270];
cell_info([cell_info.cell_id]==20186).soma_bbox=[883,1537,10225,10988,5212,8385];
cell_info([cell_info.cell_id]==20237).soma_bbox=[883,1458,9564,10721,6184,6996];
cell_info([cell_info.cell_id]==20067).soma_bbox=[921,1804,7753,10183,2447,3568];
cell_info([cell_info.cell_id]==25006).soma_bbox=[1286,1841,3537,4873,6040,6589];
cell_info([cell_info.cell_id]==17176).soma_bbox=[1110,1681,2014,2762,2867,3400];
cell_info([cell_info.cell_id]==17132).soma_bbox=[843,1459,9156,9856,4392,5054];
cell_info([cell_info.cell_id]==20045).soma_bbox=[312,1207,7616,16107,648,4898];
cell_info([cell_info.cell_id]==20036).soma_bbox=[611,1402,4669,12791,1695,2976];
cell_info([cell_info.cell_id]==26031).soma_bbox=[765,1297,12262,13003,10401,10942];
cell_info([cell_info.cell_id]==26134).soma_bbox=[1288,1849,1956,3553,10554,11713];
cell_info([cell_info.cell_id]==26167).soma_bbox=[461,1067,13268,13976,1746,2161];
cell_info([cell_info.cell_id]==26042).soma_bbox=[379,912,15222,17229,8225,9653];
cell_info([cell_info.cell_id]==26040).soma_bbox=[592,1155,12234,14505,11011,11590];
cell_info([cell_info.cell_id]==26037).soma_bbox=[1046,1672,7117,7840,10653,11200];
cell_info([cell_info.cell_id]==26060).soma_bbox=[346,948,17912,18988,2680,4859];
cell_info([cell_info.cell_id]==26066).soma_bbox=[375,1012,18328,19276,5646,6177];
cell_info([cell_info.cell_id]==26099).soma_bbox=[1119,1663,2896,3726,3981,4504];
cell_info([cell_info.cell_id]==26117).soma_bbox=[1393,2042,707,1425,5581,7370];
cell_info([cell_info.cell_id]==26145).soma_bbox=[911,1662,2073,2800,620,1640];
cell_info([cell_info.cell_id]==26175).soma_bbox=[432,1150,13827,16016,429,1535];

% struct('name','58','annotation','','cells',[20063 20072 20200 17012 17038 26061 26045 26092 20046 26119]);
cell_info([cell_info.cell_id]==20063).soma_bbox=[667,1413,8843,11598,2169,3588];
cell_info([cell_info.cell_id]==20072).soma_bbox=[947,1567,8201,9112,9853,10361];
cell_info([cell_info.cell_id]==20200).soma_bbox=[805,1361,9306,10032,4949,5608];
cell_info([cell_info.cell_id]==17012).soma_bbox=[450,1024,12526,13247,600,1186];
cell_info([cell_info.cell_id]==17038).soma_bbox=[596,1105,13855,14636,10121,10718];
cell_info([cell_info.cell_id]==26061).soma_bbox=[309,952,17443,18290,4480,5025];
cell_info([cell_info.cell_id]==26045).soma_bbox=[303,782,17243,18036,8174,8898];
cell_info([cell_info.cell_id]==26092).soma_bbox=[1302,2038,2942,3986,8850,9664];
cell_info([cell_info.cell_id]==20046).soma_bbox=[544,1014,14573,15423,10332,10975];
cell_info([cell_info.cell_id]==26119).soma_bbox=[1255,1770,1962,2813,5985,6491];

% struct('name','37','annotation','ON-OFF DS','cells',[90002 90001 25005 20254 20245 20239 20233 20220 20213 20210
% 20179 20137 20125 20096 17161 17080 20016 20014 20002 26101 26056 26084 26032 26036 26137 26138 26178 26103 26094 
% 26029 26162 26047 26115 26158 26165]);
cell_info([cell_info.cell_id]==90002).soma_bbox=[771,1559,6374,7243,2084,2775];
cell_info([cell_info.cell_id]==90001).soma_bbox=[377,1218,14817,15718,4081,4837];
cell_info([cell_info.cell_id]==25005).soma_bbox=[1272,1869,4201,5462,3875,6248];
cell_info([cell_info.cell_id]==20254).soma_bbox=[1185,1929,4679,7296,7497,8088];
cell_info([cell_info.cell_id]==20245).soma_bbox=[841,1601,4985,6690,3030,4722];
cell_info([cell_info.cell_id]==20239).soma_bbox=[906,1494,9484,10300,6844,7549];
cell_info([cell_info.cell_id]==20233).soma_bbox=[745,1487,9790,10605,4381,6355];
cell_info([cell_info.cell_id]==20220).soma_bbox=[1054,1700,5395,8678,6054,8229];
cell_info([cell_info.cell_id]==20213).soma_bbox=[821,1517,7752,8545,4232,4968];
cell_info([cell_info.cell_id]==20210).soma_bbox=[963,1611,8468,9344,5407,6090];
cell_info([cell_info.cell_id]==20179).soma_bbox=[610,1454,11751,12441,2685,4817];
cell_info([cell_info.cell_id]==20137).soma_bbox=[1109,1818,5282,6203,8469,10843];
cell_info([cell_info.cell_id]==20125).soma_bbox=[600,1266,13634,14783,6923,7838];
cell_info([cell_info.cell_id]==20096).soma_bbox=[538,1188,13909,15377,7254,9544,];
cell_info([cell_info.cell_id]==17161).soma_bbox=[1003,1732,5821,7381,5860,6553];
cell_info([cell_info.cell_id]==17080).soma_bbox=[220,995,17473,18530,2036,2733];
cell_info([cell_info.cell_id]==20016).soma_bbox=[378,1171,13436,15174,2197,2984];
cell_info([cell_info.cell_id]==20014).soma_bbox=[571,1297,14946,16271,2975,3690];
cell_info([cell_info.cell_id]==20002).soma_bbox=[499,1056,8164,16480,5283,10569];
cell_info([cell_info.cell_id]==26101).soma_bbox=[993,1619,698,3248,1737,2691];
cell_info([cell_info.cell_id]==26056).soma_bbox=[352,916,18771,19620,3073,3819];
cell_info([cell_info.cell_id]==26084).soma_bbox=[92,802,18947,19900,7687,8516];
cell_info([cell_info.cell_id]==26032).soma_bbox=[676,1317,12802,13743,10400,11205];
cell_info([cell_info.cell_id]==26036).soma_bbox=[1056,1715,5070,5904,11772,12465];
cell_info([cell_info.cell_id]==26137).soma_bbox=[1344,2047,629,1464,10804,11411];
cell_info([cell_info.cell_id]==26138).soma_bbox=[1294,1937,363,1529,11721,12385];
cell_info([cell_info.cell_id]==26178).soma_bbox=[222,928,16468,17611,1420,2095];
cell_info([cell_info.cell_id]==26103).soma_bbox=[902,1688,693,2383,1275,2025];
cell_info([cell_info.cell_id]==26094).soma_bbox=[1165,1957,3158,4349,7964,8621];
cell_info([cell_info.cell_id]==26029).soma_bbox=[796,1449,10033,11441,10758,11764];
cell_info([cell_info.cell_id]==26162).soma_bbox=[551,1231,8807,10070,595,1780];
cell_info([cell_info.cell_id]==26047).soma_bbox=[263,954,16259,17169,4760,5558];
cell_info([cell_info.cell_id]==26115).soma_bbox=[1214,1866,562,1681,4114,4763];
cell_info([cell_info.cell_id]==26158).soma_bbox=[751,1449,7189,9823,986,2232];
cell_info([cell_info.cell_id]==26165).soma_bbox=[512,1199,12003,13515,1531,2435];

% struct('name','63','annotation','','cells',[20181 17140 20208 20178 17097 17114 17084 20140 
% 20129 30003 20071 30002 20019 20011 20005 26057 26191 26148 26141 26125 26089 26068 26028 26027 26023]);
cell_info([cell_info.cell_id]==20181).soma_bbox=[854,1539,7108,8926,4492,5385];
cell_info([cell_info.cell_id]==17140).soma_bbox=[1005,1672,6269,8051,7718,8680];
cell_info([cell_info.cell_id]==20208).soma_bbox=[805,1351,7509,11852,7399,8106];
cell_info([cell_info.cell_id]==20178).soma_bbox=[713,1474,10311,13580,6403,6965];
cell_info([cell_info.cell_id]==17097).soma_bbox=[293,883,17236,17973,7362,8037];
cell_info([cell_info.cell_id]==17114).soma_bbox=[886,1676,6446,7171,3023,4065];
cell_info([cell_info.cell_id]==17084).soma_bbox=[397,1259,16710,17407,5283,5855];
cell_info([cell_info.cell_id]==20140).soma_bbox=[1109,1855,5202,5956,9407,10038];
cell_info([cell_info.cell_id]==20129).soma_bbox=[903,1549,9155,10100,7897,9207];
cell_info([cell_info.cell_id]==30003).soma_bbox=[1133,1764,2961,3797,4419,4922];
cell_info([cell_info.cell_id]==20071).soma_bbox=[809,1326,10838,11720,9957,10528];
cell_info([cell_info.cell_id]==30002).soma_bbox=[504,1029,12050,12887,842,1448];
cell_info([cell_info.cell_id]==20019).soma_bbox=[704,1227,13250,14752,2462,3219];
cell_info([cell_info.cell_id]==20011).soma_bbox=[489,1329,15591,17932,3999,4547];
cell_info([cell_info.cell_id]==20005).soma_bbox=[445,1022,15272,16243,7642,9136];
cell_info([cell_info.cell_id]==26057).soma_bbox=[153,785,19224,20363,2874,3428];
cell_info([cell_info.cell_id]==26191).soma_bbox=[971,1638,7246,7974,11666,12205];
cell_info([cell_info.cell_id]==26148).soma_bbox=[1003,1603,3513,4326,1105,1707];
cell_info([cell_info.cell_id]==26141).soma_bbox=[1248,1848,2157,2997,11837,12354];
cell_info([cell_info.cell_id]==26125).soma_bbox=[1446,2154,508,1997,8061,8661];
cell_info([cell_info.cell_id]==26089).soma_bbox=[142,733,18564,20009,10652,11716];
cell_info([cell_info.cell_id]==26068).soma_bbox=[149,850,19301,20712,5543,6087];
cell_info([cell_info.cell_id]==26028).soma_bbox=[730,1341,10499,12119,2166,2649];
cell_info([cell_info.cell_id]==26027).soma_bbox=[930,1541,8183,8963,2127,2764];
cell_info([cell_info.cell_id]==26023).soma_bbox=[1148,1801,4160,4849,6670,7195];

% struct('name','72n','annotation','','cells',[20100 20187 20150 20043 26059 26073 26132]);
cell_info([cell_info.cell_id]==20100).soma_bbox=[531,1135,14142,14979,6751,7351];
cell_info([cell_info.cell_id]==20187).soma_bbox=[708,1379,10755,13340,3466,5521];
cell_info([cell_info.cell_id]==20150).soma_bbox=[1046,1797,5210,7368,7084,8370];
cell_info([cell_info.cell_id]==20043).soma_bbox=[733,1607,5132,8820,972,3226];
cell_info([cell_info.cell_id]==26059).soma_bbox=[250,847,18666,19519,4717,5270];
cell_info([cell_info.cell_id]==26073).soma_bbox=[182,754,18202,19584,8007,8712];
cell_info([cell_info.cell_id]==26132).soma_bbox=[1276,1914,2396,3254,9550,10177];

% struct('name','72w','annotation','','cells',[20166 20221 17069 20074 26124]);
cell_info([cell_info.cell_id]==20166).soma_bbox=[795,1375,12870,13801,5893,6629];
cell_info([cell_info.cell_id]==20221).soma_bbox=[1093,1694,5905,7892,5541,7165];
cell_info([cell_info.cell_id]==17069).soma_bbox=[431,1154,16046,17033,3342,3927];
cell_info([cell_info.cell_id]==20074).soma_bbox=[740,1357,11465,12477,8137,10087];
cell_info([cell_info.cell_id]==26124).soma_bbox=[1330,1966,1962,2870,7810,8602];

% struct('name','27','annotation','','cells',[20117 17212 26051 26065]);
cell_info([cell_info.cell_id]==20117).soma_bbox=[755,1378,11226,12468,8155,9746];
cell_info([cell_info.cell_id]==17212).soma_bbox=[922,1600,3037,4099,1617,2180];
cell_info([cell_info.cell_id]==26051).soma_bbox=[310,956,17323,18260,2546,3169];
cell_info([cell_info.cell_id]==26065).soma_bbox=[180,1018,18154,19032,5859,6346];

% struct('name','81','annotation','','cells',[20158 26097]);
cell_info([cell_info.cell_id]==20158).soma_bbox=[1009,1781,6047,6684,5783,6496];
cell_info([cell_info.cell_id]==26097).soma_bbox=[1192,1752,2687,3591,5819,6530];

% struct('name','82w','annotation','','cells',[20118 26091]);
cell_info([cell_info.cell_id]==20118).soma_bbox=[917,1592,8907,9999,8482,10297];
cell_info([cell_info.cell_id]==26091).soma_bbox=[1214,1848,2665,4409,9040,10027];

% struct('name','82o','annotation','','cells',[20069 20080 26072 26052]);
cell_info([cell_info.cell_id]==20069).soma_bbox=[568,1085,14506,15264,9212,10131];
cell_info([cell_info.cell_id]==20080).soma_bbox=[997,1567,8249,9268,7887,10038];
cell_info([cell_info.cell_id]==26072).soma_bbox=[266,821,17931,19034,6645,8080];
cell_info([cell_info.cell_id]==26052).soma_bbox=[334,822,16576,17498,8595,9076];

% struct('name','82i','annotation','','cells',[20251 30001 26067 20161 26076 26058 26080 26090]);
cell_info([cell_info.cell_id]==20251).soma_bbox=[1075,1866,4530,5455,6951,7520];
cell_info([cell_info.cell_id]==30001).soma_bbox=[842,1390,10329,11513,8223,8799];
cell_info([cell_info.cell_id]==26067).soma_bbox=[135,865,18920,19823,6129,6630];
cell_info([cell_info.cell_id]==20161).soma_bbox=[653,1298,10578,11483,4162,4712];
cell_info([cell_info.cell_id]==26076).soma_bbox=[958,1613,5371,7268,1267,1999];
cell_info([cell_info.cell_id]==26058).soma_bbox=[302,830,19204,20096,3447,4085];
cell_info([cell_info.cell_id]==26080).soma_bbox=[426,1036,14042,15930,1020,1747];
cell_info([cell_info.cell_id]==26090).soma_bbox=[169,672,17771,18702,11262,11857];

% struct('name','83','annotation','','cells',[17009 20197]);
cell_info([cell_info.cell_id]==17009).soma_bbox=[682,1374,12381,13258,2667,3234];
cell_info([cell_info.cell_id]==20197).soma_bbox=[979,1575,7545,9101,6996,7739];

% struct('name','28','annotation','','cells',[20243 20155 20163 20257 26005 20167 26033]);
cell_info([cell_info.cell_id]==20243).soma_bbox=[1240,1755,5011,6324,3152,4773];
cell_info([cell_info.cell_id]==20155).soma_bbox=[1146,1857,6069,7030,7322,7956];
cell_info([cell_info.cell_id]==20163).soma_bbox=[568,1320,10360,13223,4612,5177];
cell_info([cell_info.cell_id]==20257).soma_bbox=[1146,1707,4923,5619,9466,10176];
cell_info([cell_info.cell_id]==26005).soma_bbox=[417,1117,13153,14423,1971,2523];
cell_info([cell_info.cell_id]==20167).soma_bbox=[662,1266,13154,13959,6681,7461];
cell_info([cell_info.cell_id]==26033).soma_bbox=[644,1175,12819,14515,9994,11072];

% struct('name','91n','annotation','','cells',[20218 25003 20042 26088 26135]);
cell_info([cell_info.cell_id]==20218).soma_bbox=[964,1577,7478,8236,6009,6538];
cell_info([cell_info.cell_id]==25003).soma_bbox=[1084,1630,4001,5090,3577,4739];
cell_info([cell_info.cell_id]==20042).soma_bbox=[679,1241,8208,9001,2347,2948];
cell_info([cell_info.cell_id]==26088).soma_bbox=[251,784,17504,18663,9733,10386];
cell_info([cell_info.cell_id]==26135).soma_bbox=[1376,1838,1882,2835,10520,11069];

% struct('name','91w','annotation','','cells',[20081 20020]);
cell_info([cell_info.cell_id]==20081).soma_bbox=[988,1610,7263,8542,8934,10074];
cell_info([cell_info.cell_id]==20020).soma_bbox=[446,1257,13029,13889,2587,3108];

% struct('name','weirdos','annotation','','cells',[17134 20248 26069 26093]);
% cell_info([cell_info.cell_id]==17134).soma_bbox=[];
% cell_info([cell_info.cell_id]==20248).soma_bbox=[];
% cell_info([cell_info.cell_id]==26069).soma_bbox=[];
% cell_info([cell_info.cell_id]==26093).soma_bbox=[];

% struct('name','cutoff','annotation','','cells',[10015 17051 17238 26081 26153 26030 26105 26110 26114 26176 26107 26108]);
% cell_info([cell_info.cell_id]==10015).soma_bbox=[];
% cell_info([cell_info.cell_id]==17051).soma_bbox=[];
% cell_info([cell_info.cell_id]==17238).soma_bbox=[];
% cell_info([cell_info.cell_id]==26081).soma_bbox=[];
% cell_info([cell_info.cell_id]==26153).soma_bbox=[];
% cell_info([cell_info.cell_id]==26030).soma_bbox=[];
% cell_info([cell_info.cell_id]==26105).soma_bbox=[];
% cell_info([cell_info.cell_id]==26110).soma_bbox=[];
% cell_info([cell_info.cell_id]==26114).soma_bbox=[];
% cell_info([cell_info.cell_id]==26176).soma_bbox=[];
% cell_info([cell_info.cell_id]==26107).soma_bbox=[];
% cell_info([cell_info.cell_id]==26108).soma_bbox=[];

end
