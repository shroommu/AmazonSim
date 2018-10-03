//Maya ASCII 2018ff08 scene
//Name: Resturaunt.ma
//Last modified: Tue, Oct 02, 2018 12:37:36 PM
//Codeset: 1252
requires maya "2018ff08";
requires "mtoa" "3.0.0.2";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l foot -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201804211841-f3d65dda2a";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "31451A35-49EF-CFD4-ED90-51A015318184";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9998069264694427 2.4202917468682452 2.1815896522465699 ;
	setAttr ".r" -type "double3" -43.547365907330537 48.999999999998224 -4.847970290657221e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8D97155B-45C4-F6A0-FB21-749F9C639051";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".fcp" 328.08398950131232;
	setAttr ".coi" 3.5984499872868128;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "3E29A1D1-4344-8EB2-9DF5-B387107B2BDC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.0999999999999 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3903126E-4959-EF03-1189-7D9542E16BF8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".fcp" 328.08398950131232;
	setAttr ".coi" 1000.0999999999999;
	setAttr ".ow" 30.000000800986303;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "F3087DAC-4AA5-68FC-0A2E-A8AC66A7F47A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.0999999999999 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "17A1E40E-41F1-8F8A-AB24-529B0002A4D9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".fcp" 328.08398950131232;
	setAttr ".coi" 1000.0999999999999;
	setAttr ".ow" 30.000000800986303;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E2345FBB-4BF0-A5FD-FFF0-3D81EA42ABEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.0999999999999 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2CD9F195-46A8-1E2A-C1AC-C0920AD22745";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".fcp" 328.08398950131232;
	setAttr ".coi" 1000.0999999999999;
	setAttr ".ow" 30.000000800986303;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube31";
	rename -uid "D593F65E-4C0C-F16B-7DFE-598FBEA99BBD";
	setAttr ".t" -type "double3" 2.7877459016758772 0 0.55781258664560573 ;
	setAttr ".rp" -type "double3" -2.2551339116558466 0.35508814719362697 -0.88925956119894345 ;
	setAttr ".sp" -type "double3" -2.2551339116558466 0.35508814719362697 -0.88925956119894345 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	rename -uid "4DEA0FCA-40F1-2525-5D98-2197A98F3259";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53557714819908142 0.46838214248418808 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.6723963 0.15549785
		 0.93307352 0.15552828 0.93302447 0.17676531 0.67238677 0.17673045 0.6722042 0.087111466
		 0.93345493 0.087078735 0.95842433 0.0098576397 0.93179655 0.086060949 0.95670712
		 0.0094690248 0.67383343 0.086103112 0.64588881 0.013636805 0.64760238 0.013235167
		 0.92230374 0 0.68174022 0.0044529438 0.97803545 0.14929835 0.94549841 0.17275144
		 0.62745184 0.14914826 0.65992391 0.17268759;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -2.032913208 0.2396566 -0.38108197 -2.032913208 0.2396566 -1.22849703
		 -2.21520281 0.37149236 -0.38108197 -2.21520281 0.37149236 -1.22849703 -2.28502536 0.37149236 -0.38108197
		 -2.28502536 0.37149236 -1.22849703 -2.2850256 0.2396566 -0.38108197 -2.2850256 0.2396566 -1.22849679
		 -2.2850256 0.2396566 -0.38690597 -2.28502536 0.2396566 -1.22267306 -2.03616786 0.2396566 -1.22267282
		 -2.03616786 0.2396566 -0.38690597 -2.28502536 0.36331046 -0.38690603 -2.28502512 0.36331046 -1.22267294;
	setAttr -s 23 ".ed[0:22]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 0 0 7 1 0 6 8 0 7 9 0 1 10 0 9 10 0 0 11 0 11 10 0 8 11 0 8 12 0 9 13 0
		 12 13 0 10 13 0 12 11 0;
	setAttr -s 10 -ch 38 ".fc[0:9]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 4 5 1 0
		f 4 1 6 -3 -6
		mu 0 4 0 1 2 3
		f 4 -11 -9 -7 -5
		mu 0 4 5 14 15 1
		f 4 9 3 5 7
		mu 0 4 16 4 0 17
		f 4 10 13 -15 -13
		mu 0 4 6 5 7 8
		f 4 -1 15 16 -14
		mu 0 4 5 4 9 7
		f 4 -10 11 17 -16
		mu 0 4 4 10 11 9
		f 3 14 21 -20
		mu 0 3 8 7 12
		f 4 -22 -17 -23 20
		mu 0 4 12 7 9 13
		f 3 -18 18 22
		mu 0 3 9 11 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube30";
	rename -uid "D4609412-41CC-AC98-C45E-B1BD7B7745AF";
	setAttr ".t" -type "double3" 2.7877459016758772 0 0.56785538435585525 ;
	setAttr ".rp" -type "double3" -2.995039752331969 0.35508814719362697 0.0092553603161134295 ;
	setAttr ".sp" -type "double3" -2.995039752331969 0.35508814719362697 0.0092553603161134295 ;
createNode mesh -n "pCubeShape30" -p "pCube30";
	rename -uid "DD8583B4-4BE4-56C8-753C-4A8731CC39DA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.3647371232509613 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.53479189 0.044580158
		 0.5970118 0 0.62046468 0.032537196 0.6032415 0.0449619 0.59685975 0.35058358 0.53482324
		 0.3058309 0.60320967 0.30563909 0.6203993 0.31811163 0.45718223 0.021327583 0.53377408
		 0.046238489 0.44771305 0.055730924 0.53381491 0.30420172 0.46094689 0.33043242 0.45216483
		 0.29629448 0.62447846 0.045011196 0.62444216 0.3056488 0.45757088 0.019610336 0.46134847
		 0.3321459;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -3.50321746 0.2396566 0.23147613 -2.65580249 0.2396566 0.23147613
		 -3.50321746 0.37149236 0.049186543 -2.65580249 0.37149236 0.049186543 -3.50321746 0.37149236 -0.020636028
		 -2.65580249 0.37149236 -0.020636028 -3.50321746 0.2396566 -0.020636234 -2.65580249 0.2396566 -0.020636234
		 -3.49739361 0.2396566 -0.020636203 -2.66162634 0.2396566 -0.020636203 -2.66162634 0.2396566 0.22822137
		 -3.49739361 0.2396566 0.22822137 -3.49739361 0.36331046 -0.020636015 -2.66162634 0.36331046 -0.020636015;
	setAttr -s 23 ".ed[0:22]"  0 1 0 2 3 0 4 5 0 0 2 0 1 3 0 2 4 0 3 5 0
		 4 6 0 5 7 0 6 0 0 7 1 0 6 8 0 7 9 0 1 10 0 9 10 0 0 11 0 11 10 0 8 11 0 8 12 0 9 13 0
		 12 13 0 10 13 0 12 11 0;
	setAttr -s 10 -ch 38 ".fc[0:9]" -type "polyFaces" 
		f 4 0 4 -2 -4
		mu 0 4 5 0 3 6
		f 4 1 6 -3 -6
		mu 0 4 6 3 14 15
		f 4 -11 -9 -7 -5
		mu 0 4 0 1 2 3
		f 4 9 3 5 7
		mu 0 4 4 5 6 7
		f 4 10 13 -15 -13
		mu 0 4 16 0 9 8
		f 4 -1 15 16 -14
		mu 0 4 0 5 11 9
		f 4 -10 11 17 -16
		mu 0 4 5 17 12 11
		f 3 14 21 -20
		mu 0 3 8 9 10
		f 4 -22 -17 -23 20
		mu 0 4 10 9 11 13
		f 3 -18 18 22
		mu 0 3 11 12 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Resturaunt";
	rename -uid "AA185A71-4FE8-43E3-8949-19920AE29953";
	setAttr ".t" -type "double3" 2.7877459016758772 0 0.56785538435585525 ;
	setAttr ".rp" -type "double3" -2.7722821148048862 0.23961891652405104 -0.50428078712753732 ;
	setAttr ".sp" -type "double3" -2.7722821148048862 0.23961891652405104 -0.50428078712753732 ;
createNode mesh -n "ResturauntShape" -p "Resturaunt";
	rename -uid "EDE701A2-4025-C567-5DD7-80B44CCFC341";
	setAttr -k off ".v";
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "e[20]" "e[117]" "e[119]" "e[127]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 12 "f[0:28]" "f[30:36]" "f[38:45]" "f[47:48]" "f[50:53]" "f[55:57]" "f[59:63]" "f[65]" "f[86]" "f[88:96]" "f[98:101]" "f[118:119]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 11 "f[29]" "f[37]" "f[46]" "f[49]" "f[54]" "f[58]" "f[64]" "f[66:85]" "f[87]" "f[97]" "f[102:117]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49438145756721497 0.19774004817008972 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 208 ".uvst[0].uvsp[0:207]" -type "float2" 0.6274519 0.1767652
		 0.99839973 0.17676532 0.6274519 0.31768745 0.99839967 0.31768757 0.55376601 0.46763214
		 0.55376667 0.44750866 0.55848706 0.44750884 0.5584864 0.46763226 0.5500533 0.46763203
		 0.55005395 0.4475086 0.5798775 0.44750953 0.57987678 0.46763295 0.55376434 0.52391565
		 0.55848467 0.52391577 0.55005157 0.52391553 0.45178765 0.46762869 0.45178819 0.44750512
		 0.63581628 0.44751137 0.6358158 0.46763477 0.55376226 0.58843112 0.4464066 0.46762845
		 0.44640714 0.44750497 0.65977538 0.44751206 0.65977478 0.46763551 0.57987511 0.52391642
		 0.63581395 0.52391815 0.44640246 0.58842808 0.47787666 0.33567092 0.44640505 0.52391243
		 0.66360903 0.44751218 0.66360843 0.46763566 0.66360462 0.58843446 0.47434151 0.39195383
		 0.47435021 0.33567044 0.65977299 0.52391893 0.66360664 0.52391905 0.37607586 0.39193848
		 0.37608457 0.33565509 1 0.44752261 0.99644166 0.46764594 0.9964422 0.44752255 0.99643987
		 0.52392936 0.74421251 0.46763813 0.74421299 0.447763 0.99999559 0.58844489 0.73889399
		 0.46763796 0.73889017 0.58843684 0.7442106 0.52392161 0.7388922 0.52392137 0.33101678
		 0.44749901 0.33526009 0.44749931 0.33526111 0.46762305 0.33101824 0.46762279 0.33526212
		 0.52390885 0.33101955 0.52390862 0.26697841 0.44750121 0.26698309 0.4676246 0.33525419
		 0.5884276 0.25886917 0.58841783 0.26699567 0.5239054 0.25879699 0.44750258 0.25880316
		 0.4676258 0.25881851 0.5239042 0.98675364 0.0020091459 0.98675388 0.058292583 0.96279472
		 0.058292702 0.96279472 0.0020092726 0.88588053 0.37749726 0.88588095 0.32121384 0.9499132
		 0.32121444 0.94991285 0.37749764 0.87667143 0.32121402 0.87667179 0.3774972 0.62444264
		 0.37749922 0.62444216 0.32121584 0 0.059809569 1.7881399e-07 0.0035260629 0.0035264504
		 0.0035261754 0.0035262716 0.059809681 0.25521436 0.0035270094 0.25521421 0.059810471
		 0.25168788 0.059810486 0.25168809 0.0035269647 0.48366085 0.38278922 0.48366079 0.32650593
		 0.48718706 0.32650593 0.48718712 0.38278928 0.5579645 0.32650596 0.5579645 0.38278931
		 0.55443829 0.38278925 0.55443817 0.32650596 0.37455857 0.30497485 0.37455976 0.24869129
		 0.39595026 0.24869187 0.39594883 0.30497521 0.39950746 0.18838802 0.3995114 0.2446714
		 0.39750236 0.24467155 0.39749831 0.18838823 0.37255353 0.24467336 0.37254953 0.18838993
		 0.37455863 0.18838988 0.37456286 0.24467321 0.40196198 0.24466887 0.40196133 0.1883857
		 0.40397036 0.18838564 0.40397108 0.24466892 0.42867792 0.18838534 0.42867839 0.24466863
		 0.42666936 0.24466863 0.42666876 0.18838541 0.44521919 0.076528266 0.36992297 0 0.44523454
		 0.18637063 0.31482646 0.14278507 0.25877789 1.554323e-05 0.25878847 0.07638631 0.36994889
		 0.18638103 0 0.076590396 0.36998549 0.44748646 5.179644e-05 0.44753811 0.25168788
		 0.06333667 0.0035262716 0.063335858 0.00352651 0 0.25168809 7.8254408e-07 0.37608504
		 0.33212888 0.47435081 0.33214408 0.47434092 0.3954801 0.37607527 0.39546481 0.88588101
		 0.31768751 0.9499132 0.31768796 0.94991285 0.381024 0.88588053 0.38102329 0.48718706
		 0.32297975 0.55443817 0.32297963 0.55443817 0.3863157 0.48718706 0.38631564 0.87667179
		 0.38102365 0.62444252 0.38102564 0.6244421 0.31768951 0.87667143 0.31768754 0.39750242
		 0.24668051 0.3745628 0.24668226 0.37455845 0.18638074 0.39749831 0.18637915 0.98675388
		 0.060301669 0.96279472 0.060301788 0.96279472 1.1175871e-07 0.98675364 0 0.40397036
		 0.18637662 0.42666876 0.18637638 0.42666936 0.24667773 0.4039712 0.24667796 0.37455976
		 0.24668226 0.39595026 0.24668285 0.39594895 0.30698425 0.37455857 0.30698374 0 0.58855188
		 0.36993369 0.58855212 0 0.72947419 0.36993358 0.72947437 0.4424392 0.46762827 0.44243976
		 0.44750482 0.41949946 0.46762726 0.41949987 0.44750369 0.44243765 0.52391219 0.36167854
		 0.46762431 0.36167854 0.44750077 0.33897996 0.46762317 0.33897913 0.44749936 0.36167794
		 0.52390993 0.41949815 0.5239116 0.33898067 0.52390897 0.66806519 0.4475123 0.66806453
		 0.46763578 0.73531634 0.44776267 0.73531586 0.46763784 0.66806287 0.52391917 0.73531407
		 0.52392125 0.25431076 0.44750342 0.25431788 0.46762672 0.25433493 0.52390647 0.0061433031
		 0.44762439 0.006153089 0.46774778 0 0.44762737 0.006180983 0.52403259 7.0556911e-05
		 0.58855188 0.88235414 0.37749726 0.88235456 0.32121378 0.95343965 0.32121441 0.95343918
		 0.37749782 0.88019776 0.3212139 0.88019812 0.37749723 0.62091625 0.37749928 0.62091589
		 0.32121575 0.9887628 0.0020091534 0.98876292 0.058292575 0.96078587 0.058292702 0.96078563
		 0.0020092651 0.37254953 0.30497473 0.37255073 0.24869141 0.39795941 0.24869187 0.39795798
		 0.30497521 0.37254953 0.39193797 0.37255818 0.33565453 0.73889458 0.4480111 0.45178604
		 0.52391255 0.47786784 0.39195442;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".vt[0:120]"  -3.51165104 0.47201404 -1.24223137 -3.51165104 0.0072238012 -1.24223137
		 -2.2915349 0.47201404 0.2336698 -2.2915349 0.47201404 -1.24223137 -2.2915349 0.0072238012 -1.24223137
		 -2.2915349 0.0072238012 0.23366928 -2.65811419 0.47201404 0.2336698 -2.65811419 0.0072238171 0.23366928
		 -2.043228149 0.47201404 -0.38105273 -2.2915349 0.47201404 -0.38105273 -2.47332025 0.47201404 -0.23723881
		 -3.51165104 0.47201404 -0.018770391 -3.51165104 0.0072238171 -0.018770492 -2.043228149 0.47201404 -0.018770387
		 -2.043228149 0.0072238171 -0.38105273 -2.65811419 0.47201404 -0.01821647 -2.65811419 0.0072238171 -0.018493539
		 -2.043228149 0.0072238171 -0.018770495 -2.65811419 0.07359504 -0.01849352 -2.2915349 0.07359504 -0.38105273
		 -2.043228149 0.07359504 -0.38105273 -2.043228149 0.07359504 -0.018770481 -2.2915349 0.07359501 0.23366937
		 -2.65811419 0.07359504 0.23366937 -2.65811419 0.25922918 -0.018493468 -2.2915349 0.25922918 -0.38105273
		 -2.043228149 0.25922918 -0.38105273 -2.043228149 0.25922918 -0.018770428 -2.2915349 0.25922918 0.23366962
		 -2.65811419 0.25922918 0.23366962 -3.49139023 0.25922918 -0.018770428 -3.49139023 0.07359504 -0.018770481
		 -3.49139023 0.0072238171 -0.018770495 -2.043228149 0.0072238171 -0.034339089 -2.043228149 0.07359504 -0.034339067
		 -2.043228149 0.25922918 -0.034339018 -2.67290354 0.25922918 -0.018770428 -2.67290354 0.07359504 -0.018770481
		 -2.67290354 0.0072238171 -0.018770495 -2.65811419 0.25922918 0.0084838122 -2.65811419 0.07359504 0.0084837377
		 -2.65811419 0.0072238171 0.0084837098 -2.64584827 0.25922918 0.23366962 -2.64584827 0.07359504 0.23366937
		 -2.64584827 0.0072238171 0.23366928 -2.057925463 0.0072238171 -0.38105273 -2.057925463 0.07359504 -0.38105273
		 -2.057925463 0.25922918 -0.38105273 -2.65811419 0.25922918 0.21967588 -2.65811419 0.073595017 0.2196756
		 -2.65811419 0.0072238171 0.21967553 -2.30462003 0.25922918 0.23366959 -2.30462003 0.073595017 0.23366937
		 -2.30462003 0.0072238012 0.23366928 -2.27908945 0.25922918 0.22101688 -2.27908945 0.07359501 0.22101666
		 -2.27908945 0.0072238012 0.22101657 -2.051815271 0.25922918 -0.010040406 -2.051815271 0.07359504 -0.010040463
		 -2.051815271 0.0072238171 -0.01004049 -2.043228149 0.25922918 -0.36840856 -2.043228149 0.07359504 -0.36840856
		 -2.043228149 0.0072238171 -0.36840856 -2.2915349 0.25922918 -0.39859408 -2.2915349 0.07359504 -0.39859408
		 -2.2915349 0.0080427201 -0.39859408 -2.27973366 0.25922918 -0.38105273 -2.27973366 0.07359504 -0.38105273
		 -2.27973366 0.0080427201 -0.38105273 -2.2915349 0.25922918 -1.23049724 -2.2915349 0.07359501 -1.23049748
		 -2.2915349 0.0072238012 -1.23049724 -2.67290354 0.07359504 -0.030400809 -3.49139023 0.07359504 -0.030400809
		 -2.67290354 0.25922918 -0.030400757 -3.49139023 0.25922918 -0.030400757 -2.060106754 0.25922918 -0.018196134
		 -2.060106754 0.07359504 -0.018196195 -2.28738117 0.25922918 0.21286115 -2.28738117 0.07359501 0.21286094
		 -2.64648366 0.073595054 0.0084837377 -2.64648366 0.25922921 0.0084838122 -2.64648366 0.07359504 0.2196756
		 -2.64648366 0.25922921 0.21967588 -2.057925463 0.07359504 -0.36942247 -2.057925463 0.25922918 -0.36942247
		 -2.27973366 0.07359504 -0.36942247 -2.27973366 0.25922918 -0.36942247 -2.30316544 0.25922918 -1.23049724
		 -2.30316544 0.07359504 -1.23049748 -2.30316544 0.25922918 -0.39859408 -2.30316544 0.073595054 -0.39859408
		 -2.5709846 0.25922918 0.23366962 -2.5709846 0.07359504 0.23366937 -2.5709846 0.0072238171 0.23366928
		 -2.38028002 0.25922918 0.23366959 -2.38028002 0.073595017 0.23366937 -2.38028002 0.0072238012 0.23366928
		 -2.043228149 0.25922918 -0.1048889 -2.043228149 0.07359504 -0.10488895 -2.043228149 0.0072238171 -0.10488895
		 -2.043228149 0.25922918 -0.28938678 -2.043228149 0.07359504 -0.28938678 -2.043228149 0.0072238171 -0.28938678
		 -2.38028002 0.25922918 0.22704333 -2.38028002 0.073595017 0.22704312 -2.30462003 0.073595017 0.22704312
		 -2.30462003 0.25922918 0.22704333 -2.049854517 0.25922918 -0.28938678 -2.049854517 0.07359504 -0.28938678
		 -2.049854517 0.07359504 -0.36840856 -2.049854517 0.25922918 -0.36840856 -2.64584827 0.25922918 0.22704339
		 -2.64584827 0.073595054 0.22704312 -2.5709846 0.073595054 0.22704312 -2.5709846 0.25922918 0.22704339
		 -2.049854517 0.07359504 -0.034339067 -2.049854517 0.25922918 -0.034339018 -2.049854517 0.07359504 -0.10488895
		 -2.049854517 0.25922918 -0.1048889 -2.2915349 0.0088616228 -0.38105273;
	setAttr -s 240 ".ed";
	setAttr ".ed[0:165]"  0 1 0 3 4 0 4 71 0 5 22 0 7 44 0 7 23 0 9 10 0 11 12 0
		 14 20 0 14 62 0 17 59 0 17 21 0 14 45 0 12 32 0 16 18 0 18 24 0 18 37 0 19 25 0 4 70 0
		 20 26 0 19 67 0 21 27 0 20 61 0 22 28 0 21 58 0 23 29 0 22 52 0 23 49 0 24 15 0 24 36 0
		 25 9 0 4 69 0 26 8 0 25 66 0 27 13 0 26 60 0 28 2 0 27 57 0 29 6 0 28 51 0 29 48 0
		 1 4 0 0 3 0 30 12 0 11 30 0 31 12 0 30 31 0 32 38 0 31 32 0 33 17 0 34 21 0 33 34 0
		 35 27 0 34 35 0 35 13 0 10 11 0 15 11 0 36 30 0 15 36 0 37 31 0 36 37 0 38 16 0 37 38 0
		 15 39 0 39 40 0 40 41 0 42 29 0 6 42 0 43 23 0 42 43 0 44 94 0 43 44 0 45 68 0 46 20 0
		 45 46 0 47 26 0 46 47 0 8 9 0 47 8 0 6 15 0 48 39 0 6 48 0 49 40 0 48 49 0 50 7 0
		 49 50 0 51 95 0 2 51 0 52 96 0 51 52 0 53 5 0 52 53 0 40 18 0 39 24 0 54 28 0 2 54 0
		 55 22 0 54 55 0 56 5 0 55 56 0 16 41 0 57 54 0 13 57 0 58 55 0 57 58 0 59 56 0 58 59 0
		 60 101 0 8 60 0 61 102 0 60 61 0 62 103 0 61 62 0 11 0 0 9 3 0 63 25 0 9 63 0 64 19 0
		 63 64 0 64 65 0 41 50 0 2 13 0 10 8 0 66 47 0 9 66 0 67 46 0 66 67 0 67 68 0 1 12 0
		 3 10 0 69 63 0 3 69 0 70 64 0 69 70 0 71 65 0 70 71 0 37 72 0 31 73 0 72 73 0 36 74 0
		 74 72 0 30 75 0 74 75 0 75 73 0 57 76 0 58 77 0 76 77 0 54 78 0 76 78 0 55 79 0 78 79 0
		 77 79 0 40 80 0 39 81 0 80 81 0 49 82 0 82 80 0 48 83 0 83 82 0 83 81 0 46 84 0 47 85 0
		 84 85 0 67 86 0 86 84 0 66 87 0;
	setAttr ".ed[166:239]" 87 86 0 87 85 0 69 88 0 70 89 0 88 89 0 63 90 0 88 90 0
		 64 91 0 90 91 0 89 91 0 6 2 0 92 42 0 6 92 0 93 43 0 92 93 0 94 97 0 93 94 0 95 92 0
		 2 95 0 96 93 0 95 96 0 97 53 0 96 97 0 10 15 0 10 6 0 10 2 0 13 8 0 98 35 0 13 98 0
		 99 34 0 98 99 0 100 33 0 99 100 0 101 98 0 8 101 0 102 99 0 101 102 0 103 100 0 102 103 0
		 95 104 0 96 105 0 104 105 0 52 106 0 106 105 0 51 107 0 107 106 0 107 104 0 101 108 0
		 102 109 0 108 109 0 61 110 0 110 109 0 60 111 0 111 110 0 111 108 0 42 112 0 43 113 0
		 112 113 0 93 114 0 114 113 0 92 115 0 115 114 0 115 112 0 34 116 0 35 117 0 116 117 0
		 99 118 0 118 116 0 98 119 0 119 118 0 119 117 0 19 120 0 120 68 0 65 120 0;
	setAttr -s 120 -ch 453 ".fc[0:119]" -type "polyFaces" 
		f 4 24 106 -11 11
		mu 0 4 4 8 9 5
		f 4 91 90 3 26
		mu 0 4 161 162 21 20
		f 4 -12 -50 51 50
		mu 0 4 4 5 6 7
		f 3 18 135 -3
		mu 0 3 38 39 40
		f 4 12 74 73 -9
		mu 0 4 29 173 174 30
		f 4 84 5 27 85
		mu 0 4 49 50 51 52
		f 4 61 14 16 62
		mu 0 4 179 60 61 180
		f 4 -17 15 29 60
		mu 0 4 180 61 62 181
		f 3 31 133 -19
		mu 0 3 38 41 39
		f 4 -74 76 75 -20
		mu 0 4 30 174 177 35
		f 4 -22 -51 53 52
		mu 0 4 12 4 7 13
		f 4 37 104 -25 21
		mu 0 4 12 14 8 4
		f 4 89 -27 23 39
		mu 0 4 165 161 20 28
		f 4 -28 25 40 83
		mu 0 4 52 51 53 54
		f 3 -30 28 58
		mu 0 3 181 62 58
		f 3 131 -32 -2
		mu 0 3 44 41 38
		f 3 -76 78 -33
		mu 0 3 35 177 31
		f 3 -35 -53 54
		mu 0 3 19 12 13
		f 3 102 -38 34
		mu 0 3 19 14 12
		f 3 87 -40 36
		mu 0 3 26 165 28
		f 3 -41 38 81
		mu 0 3 54 53 57
		f 3 -44 -45 7
		mu 0 3 184 185 186
		f 3 -46 -47 43
		mu 0 3 184 183 185
		f 3 13 -49 45
		mu 0 3 184 182 183
		f 4 112 -10 8 22
		mu 0 4 23 22 29 30
		f 4 110 -23 19 35
		mu 0 4 34 23 30 35
		f 3 108 -36 32
		mu 0 3 31 34 35
		f 4 1 -42 -1 42
		mu 0 4 159 157 158 160
		f 4 -58 -59 56 44
		mu 0 4 185 181 58 186
		f 4 -139 -141 142 143
		mu 0 4 81 78 77 82
		f 4 47 -63 59 48
		mu 0 4 182 179 180 183
		f 3 -39 -67 -68
		mu 0 3 57 53 172
		f 4 -26 -69 -70 66
		mu 0 4 53 51 168 172
		f 4 -6 4 -72 68
		mu 0 4 51 50 169 168
		f 4 126 -21 17 33
		mu 0 4 178 176 45 48
		f 3 124 -34 30
		mu 0 3 46 178 48
		f 3 184 -87 -88
		mu 0 3 26 171 165
		f 4 207 -210 -212 212
		mu 0 4 98 97 102 101
		f 4 188 187 -92 88
		mu 0 4 163 164 162 161
		f 3 -96 -37 -95
		mu 0 3 206 26 28
		f 4 -98 94 -24 -97
		mu 0 4 15 206 28 20
		f 4 -100 96 -4 -99
		mu 0 4 16 15 20 21
		f 4 100 -66 92 -15
		mu 0 4 60 55 56 61
		f 4 -16 -93 -65 93
		mu 0 4 62 61 56 59
		f 3 -29 -94 -64
		mu 0 3 58 62 59
		f 4 -103 -122 95 -102
		mu 0 4 14 19 26 206
		f 4 -147 148 150 -152
		mu 0 4 36 37 33 32
		f 4 -107 103 99 -106
		mu 0 4 9 8 15 16
		f 3 200 -108 -109
		mu 0 3 31 25 34
		f 4 215 -218 -220 220
		mu 0 4 63 64 65 66
		f 4 204 -112 -113 109
		mu 0 4 18 17 22 23
		f 3 -117 -31 -116
		mu 0 3 47 46 48
		f 4 -119 115 -18 -118
		mu 0 4 42 47 48 45
		f 4 120 -86 82 65
		mu 0 4 55 49 52 56
		f 4 -155 -157 -159 159
		mu 0 4 67 68 69 70
		f 4 63 -81 -82 79
		mu 0 4 58 59 54 57
		f 3 6 122 77
		mu 0 3 117 114 113
		f 4 -79 -124 -125 -78
		mu 0 4 31 177 178 46
		f 4 -163 -165 -167 167
		mu 0 4 86 85 90 89
		f 4 72 -128 125 -75
		mu 0 4 173 175 176 174
		f 4 0 128 -8 113
		mu 0 4 2 0 1 3
		f 4 -130 -43 -114 -56
		mu 0 4 114 119 120 118
		f 3 129 -7 114
		mu 0 3 119 114 117
		f 4 -132 -115 116 -131
		mu 0 4 41 44 46 47
		f 4 -171 172 174 -176
		mu 0 4 71 72 73 74
		f 4 -136 132 119 -135
		mu 0 4 40 39 42 43
		f 4 -60 136 138 -138
		mu 0 4 121 122 78 81
		f 4 -61 139 140 -137
		mu 0 4 75 76 77 78
		f 4 57 141 -143 -140
		mu 0 4 123 124 82 77
		f 4 46 137 -144 -142
		mu 0 4 79 80 81 82
		f 4 -105 144 146 -146
		mu 0 4 203 204 37 36
		f 4 101 147 -149 -145
		mu 0 4 125 126 33 37
		f 4 97 149 -151 -148
		mu 0 4 27 207 32 33
		f 4 -104 145 151 -150
		mu 0 4 127 128 36 32
		f 4 64 152 154 -154
		mu 0 4 187 188 68 67
		f 4 -83 155 156 -153
		mu 0 4 129 130 69 68
		f 4 -84 157 158 -156
		mu 0 4 189 190 70 69
		f 4 80 153 -160 -158
		mu 0 4 131 132 67 70
		f 4 -77 160 162 -162
		mu 0 4 83 84 85 86
		f 4 -126 163 164 -161
		mu 0 4 133 134 90 85
		f 4 -127 165 166 -164
		mu 0 4 87 88 89 90
		f 4 123 161 -168 -166
		mu 0 4 135 136 86 89
		f 4 -134 168 170 -170
		mu 0 4 191 192 72 71
		f 4 130 171 -173 -169
		mu 0 4 137 138 73 72
		f 4 118 173 -175 -172
		mu 0 4 193 194 74 73
		f 4 -133 169 175 -174
		mu 0 4 139 140 71 74
		f 3 67 -178 -179
		mu 0 3 57 172 170
		f 4 223 -226 -228 228
		mu 0 4 106 105 110 109
		f 4 71 70 -183 179
		mu 0 4 168 169 167 166
		f 4 178 -184 -185 -177
		mu 0 4 57 170 171 26
		f 4 180 -186 -187 183
		mu 0 4 170 166 163 171
		f 4 182 181 -189 185
		mu 0 4 166 167 164 163
		f 3 55 -57 -190
		mu 0 3 114 118 116
		f 3 -191 189 -80
		mu 0 3 115 114 116
		f 3 190 176 -192
		mu 0 3 114 115 112
		f 4 -123 191 121 192
		mu 0 4 113 114 112 111
		f 3 -55 -194 -195
		mu 0 3 19 13 24
		f 4 -232 -234 -236 236
		mu 0 4 91 92 93 94
		f 4 -52 -198 -199 195
		mu 0 4 7 6 10 11
		f 4 194 -200 -201 -193
		mu 0 4 19 24 25 31
		f 4 196 -202 -203 199
		mu 0 4 24 11 18 25
		f 4 198 -204 -205 201
		mu 0 4 11 10 17 18
		f 4 186 206 -208 -206
		mu 0 4 95 96 97 98
		f 4 -89 208 209 -207
		mu 0 4 141 142 102 97
		f 4 -90 210 211 -209
		mu 0 4 99 100 101 102
		f 4 86 205 -213 -211
		mu 0 4 143 144 98 101
		f 4 202 214 -216 -214
		mu 0 4 195 196 64 63
		f 4 -110 216 217 -215
		mu 0 4 145 146 65 64
		f 4 -111 218 219 -217
		mu 0 4 197 198 66 65
		f 4 107 213 -221 -219
		mu 0 4 147 148 63 66
		f 4 69 222 -224 -222
		mu 0 4 103 104 105 106
		f 4 -180 224 225 -223
		mu 0 4 149 150 110 105
		f 4 -181 226 227 -225
		mu 0 4 107 108 109 110
		f 4 177 221 -229 -227
		mu 0 4 151 152 106 109
		f 4 -54 229 231 -231
		mu 0 4 199 200 92 91
		f 4 -196 232 233 -230
		mu 0 4 153 154 93 92
		f 4 -197 234 235 -233
		mu 0 4 201 202 94 93
		f 4 193 230 -237 -235
		mu 0 4 155 156 91 94
		f 4 20 127 -239 -238
		mu 0 4 45 176 175 205
		f 4 117 237 -240 -120
		mu 0 4 42 45 205 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AD0DE9A5-46E7-314A-604D-C48D5014FF9A";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "47D2DB3F-4107-ED27-EF2C-8D958C270EDC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F48B459E-4A09-B2FB-106B-1EBCCE782185";
createNode displayLayerManager -n "layerManager";
	rename -uid "08B01A5A-40FB-2768-EDA2-289187614240";
createNode displayLayer -n "defaultLayer";
	rename -uid "51C9341C-48FF-F9B7-BC5D-028038745245";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "30953C86-4636-1CF7-2612-20B81E8EB34E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D7C4E47C-4F5E-522D-1E65-9B9CF0EE316D";
	setAttr ".g" yes;
createNode groupId -n "pasted__groupId205";
	rename -uid "F027DB0A-45BF-779D-1CAB-2C995D9A555B";
	setAttr ".ihi" 0;
createNode objectSet -n "pasted__set4";
	rename -uid "73D08317-4496-A3D5-4535-4EBA1A43A09B";
	setAttr ".ihi" 0;
createNode lambert -n "R_Canopy_Color";
	rename -uid "206D2D7A-4993-820A-6427-CFA75AE622DB";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "E6DE432E-4B07-BD43-94DC-D597C0AD76AD";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "96BF2BA7-481A-25BF-098B-9D8BDD315B79";
createNode lambert -n "R_Brick";
	rename -uid "DEDE9D09-48E2-4837-75D9-0A936599E33F";
	setAttr ".c" -type "float3" 0.182 0.026754003 0.026754003 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "08C5728C-429F-CEBC-19DF-A1BEC4780EFC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "ABD6C360-44ED-5EE3-8FBC-738A856A2493";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "DD03D97F-4BA5-2A6E-A609-2CA3A13478C2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -301.19046422224244 ;
	setAttr ".tgi[0].vh" -type "double2" 601.19045230131405 314.28570179712256 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -102.85713958740234;
	setAttr ".tgi[0].ni[0].y" -25.714284896850586;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -102.85713958740234;
	setAttr ".tgi[0].ni[1].y" 104.28571319580078;
	setAttr ".tgi[0].ni[1].nvs" 18304;
createNode lambert -n "R_Window";
	rename -uid "A42D4C37-43BA-B83C-3184-4B8DFD56299E";
createNode shadingEngine -n "lambert4SG";
	rename -uid "7EC7CDE4-4A43-E9A0-156C-8D8F7645BC47";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "0EFE3AFB-43CC-A502-BE15-C0919868153A";
createNode groupId -n "groupId1";
	rename -uid "2BA684D5-43A0-1FA0-A69C-32BB7DC6937A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "D68017FA-4F24-4602-74FC-4EA76512B594";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "C6ECD039-43FF-6ADD-BFE2-7D84B9E68ABC";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F9BDBF87-4CB0-B289-6F3C-A0BD8E2CA4B1";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -322.61903479931897 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 336.90474851737002 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D277649E-49D5-B520-7ED8-408220917C53";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 615\n            -height 795\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 615\\n    -height 795\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 615\\n    -height 795\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BCE4834D-4105-B9C9-6726-E98832AD71D1";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pasted__groupId205.id" "ResturauntShape.iog.og[0].gid";
connectAttr "pasted__set4.mwc" "ResturauntShape.iog.og[0].gco";
connectAttr "groupId1.id" "ResturauntShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "ResturauntShape.iog.og[1].gco";
connectAttr "groupId3.id" "ResturauntShape.iog.og[2].gid";
connectAttr "lambert4SG.mwc" "ResturauntShape.iog.og[2].gco";
connectAttr "groupId2.id" "ResturauntShape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pasted__groupId205.msg" "pasted__set4.gn" -na;
connectAttr "ResturauntShape.iog.og[0]" "pasted__set4.dsm" -na;
connectAttr "R_Canopy_Color.oc" "lambert2SG.ss";
connectAttr "pCubeShape30.iog" "lambert2SG.dsm" -na;
connectAttr "pCubeShape31.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "R_Canopy_Color.msg" "materialInfo1.m";
connectAttr "R_Brick.oc" "lambert3SG.ss";
connectAttr "ResturauntShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "ResturauntShape.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "groupId1.msg" "lambert3SG.gn" -na;
connectAttr "groupId2.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "R_Brick.msg" "materialInfo2.m";
connectAttr "ResturauntShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Resturaunt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "R_Window.oc" "lambert4SG.ss";
connectAttr "groupId3.msg" "lambert4SG.gn" -na;
connectAttr "ResturauntShape.iog.og[2]" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "R_Window.msg" "materialInfo3.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "R_Canopy_Color.msg" ":defaultShaderList1.s" -na;
connectAttr "R_Brick.msg" ":defaultShaderList1.s" -na;
connectAttr "R_Window.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Resturaunt.ma
