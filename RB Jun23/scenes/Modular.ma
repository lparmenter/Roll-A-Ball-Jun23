//Maya ASCII 2023 scene
//Name: Modular.ma
//Last modified: Tue, Jun 27, 2023 11:24:19 AM
//Codeset: 1252
requires maya "2023";
requires "mtoa" "5.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "4E08B8D8-4A0F-0DC0-ADD4-4EA22CAF0DA3";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "595F37FB-493A-C27A-E829-F4871E3CBC40";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.4959455479581862 2.7481079384583347 5.6398926867572223 ;
	setAttr ".r" -type "double3" -20.19725758455569 -2492.5999999994806 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "75C2E12D-43FC-9305-7B35-1D8EB6C7971E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.99394120852855;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.5 0 -0.50456339120864868 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "47368707-452F-C68F-0A96-1B9A92A50DE2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.0047919244913492 1000.1056289011195 -2.1224072723283562 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C86B12CB-442E-5A7C-B651-9E8E990548C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.10562890111953;
	setAttr ".ow" 18.813845581982733;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 2.9999999749665509 1 -2.4873940944671631 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D53485A2-4E26-50AA-5A23-099E1BCB7797";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.789420747648248 0.46003362204302434 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "12ACA5E6-4CDE-2D13-C0F0-23A90B53E2D4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.0410183115808449;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "EAF82BB4-41AD-198F-6FB1-F19929CC5F97";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.101361982868 0.75574563565128861 -0.62573416104582869 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "28115669-4A7F-F75F-4F3B-B3BA2E14C668";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.601361982868;
	setAttr ".ow" 2.1457626237548331;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.5 0 -3 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Floor";
	rename -uid "54CA969C-4A0E-7712-ED4C-5A93AE42F54D";
createNode mesh -n "FloorShape" -p "Floor";
	rename -uid "0D56A653-438A-79AF-9B34-94A6FC71FE01";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0 0 0 3 0 0 0 0 -3 3 0 -3;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall";
	rename -uid "E60B94E6-43D7-89F4-213D-ED85D92F9E82";
	setAttr ".t" -type "double3" -4.7285168922602905 0 0 ;
	setAttr ".rp" -type "double3" -0.033675349036326518 -0.0055690883720482809 -0.0095736018396344047 ;
	setAttr ".sp" -type "double3" -0.033675349036326518 -0.0055690883720482809 -0.0095736018396344047 ;
createNode mesh -n "WallShape" -p "Wall";
	rename -uid "111C4FC1-4CB7-8533-1E15-36941EC20E53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51525431871414185 0.21126410365104675 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[0]" -type "float3" 4.4408921e-14 0.0055691004 0.0095735788 ;
	setAttr ".pt[1]" -type "float3" 4.4408921e-14 0.0055691004 0.0095735788 ;
	setAttr ".pt[2]" -type "float3" 4.4408921e-14 0.0055691004 0.0095735788 ;
	setAttr ".pt[6]" -type "float3" 4.4408921e-14 0.0055691004 0.0095734596 ;
	setAttr ".pt[7]" -type "float3" 4.4408921e-14 0.0055691004 0.0095734596 ;
	setAttr ".pt[8]" -type "float3" 0 0 0.0095734596 ;
	setAttr ".pt[9]" -type "float3" 4.4408921e-14 0.0055691004 0.0095734596 ;
	setAttr ".pt[10]" -type "float3" 4.4408921e-14 0.0055691004 0.0095734596 ;
	setAttr ".pt[11]" -type "float3" 4.4408921e-14 0.0055691004 0.0095734596 ;
createNode transform -n "Outside_Corner";
	rename -uid "BBBA747F-4944-D65E-B0AE-4DBD16F6B81B";
	setAttr ".v" no;
createNode mesh -n "Outside_CornerShape" -p "Outside_Corner";
	rename -uid "C3389188-4E54-7013-5DCD-A2B83A604372";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.76828598736411746 0.091835595667362213 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.022284329 0.50969005
		 0.53410929 0.5107429 0.65501195 0.13976431 0.17981809 0.50969005 0.45534235 0.5107429
		 0.35728443 0.5107429 0.73424435 0.9601981 0.80067599 0.96019816 0.35728443 0.98334396
		 0.53410929 0.98334396 0.61287618 0.98334396 0.45534235 0.98334396 0.61287618 0.5107429
		 0.66726035 0.91223085 0.66726035 0.82806629 0.17981809 0.98229116 0.80067599 0.82806623
		 0.022284329 0.98229116 0.73424435 0.82806623 0.74106014 0.22008628 0.69969863 0.023164496
		 0.76832199 0.023164496 0.76832199 0.1605067 0.69969863 0.1605067 0.83687335 0.023164496
		 0.83687335 0.10840377 0.17981809 0.013013467 0.1974563 0.015125751 0.26790649 0.015125751
		 0.17981809 0.48561454 0.35728443 0.014066324 0.35728443 0.48666739 0.61287618 0.48666739
		 0.53410929 0.48666739 0.53410929 0.014066324 0.61287618 0.014066324 0.45534235 0.48666739
		 0.45534235 0.014066324 0.022284329 0.48561454 0.022284329 0.013013467 0.26790649
		 0.5066275 0.1974563 0.5787105 0.33835644 0.015125751 0.33835644 0.4379392 0.74106014
		 0.82035953 0.65501195 0.82035953 0.82739145 0.30668104 0.82739145 0.82035953;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[4]" -type "float3" 5.5879354e-09 1.1641532e-09 -1.8626451e-09 ;
	setAttr -s 20 ".vt[0:19]"  -1.000001907349 0 -3.99989152 -0.51841164 0 -3.50160933
		 0 0 -3.0008046627 -1.000001907349 1 -3.99989152 -0.51841164 1 -3.50160933 0 0.62245667 -3.0008046627
		 3 1 -4.0016093254 3 1 -3.50160933 3 0.62245667 -3.0016093254 3 0 -4.0016093254 3 0 -3.50160933
		 3 0 -3.0016093254 -1 0 0 -0.5 0 0 0 0 0 -1 1 0 -0.5 1 0 0 0.62245667 0 -0.5 1 -3.48830199
		 -0.5 0 -3.48830199;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0 12 13 0
		 13 14 0 15 16 0 16 17 0 3 18 0 18 5 0 0 19 0 19 2 0 12 15 0 13 16 1 14 17 0 15 3 0
		 16 18 1 17 5 0 0 12 0 19 13 1 2 14 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 2 11 -5 -11
		mu 0 4 2 19 44 45
		f 4 3 12 -6 -12
		mu 0 4 19 46 47 44
		f 4 4 14 -7 -14
		mu 0 4 7 6 18 16
		f 4 5 15 -8 -15
		mu 0 4 6 13 14 18
		f 4 6 17 -1 -17
		mu 0 4 10 9 1 12
		f 4 7 18 -2 -18
		mu 0 4 9 11 4 1
		f 4 -19 -16 -13 -10
		mu 0 4 4 11 8 5
		f 4 16 8 10 13
		mu 0 4 17 0 3 15
		f 4 19 28 -22 -28
		mu 0 4 20 21 22 23
		f 4 20 29 -23 -29
		mu 0 4 21 24 25 22
		f 4 21 31 -24 -31
		mu 0 4 27 28 40 41
		f 4 22 32 -25 -32
		mu 0 4 28 42 43 40
		f 4 25 34 -20 -34
		mu 0 4 32 33 34 35
		f 4 26 35 -21 -35
		mu 0 4 33 36 37 34
		f 4 -36 9 -33 -30
		mu 0 4 37 36 31 30
		f 4 33 27 30 -9
		mu 0 4 38 39 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall4";
	rename -uid "FCCC5298-4727-8A9F-3F5C-359EC36BE9F7";
	setAttr ".rp" -type "double3" 0 -0.0055690883720482809 -0.0095736018396344047 ;
	setAttr ".sp" -type "double3" 0 -0.0055690883720482809 -0.0095736018396344047 ;
createNode transform -n "transform2" -p "Wall4";
	rename -uid "B1E67E38-40A1-E6E7-3390-1190133414FD";
	setAttr ".v" no;
createNode mesh -n "Wall4Shape" -p "transform2";
	rename -uid "3E2BB7B0-40A2-189D-87F1-3688F05DC818";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.56052212417125702 0.28054817020893097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.022932112 0.012797564
		 0.53475714 0.014200747 0.25923276 0.013445377 0.18046588 0.01322937 0.45599017 0.013984799
		 0.35793224 0.013715982 0.73570728 0.20591086 0.80213892 0.20444787 0.35663661 0.48631704
		 0.53346145 0.48680186 0.61222839 0.48701775 0.45469454 0.48658592 0.83951747 0.27164522
		 0.83975512 0.35707536 0.70227069 0.27202696 0.70265245 0.40927374 0.77127588 0.40908283
		 0.77089405 0.27183607 0.61352396 0.014416665 0.66817099 0.15721211 0.66634971 0.074510425
		 0.17917031 0.48583049 0.79921305 0.071584508 0.021636546 0.48539862 0.73278141 0.073047452
		 0.25793713 0.48604652;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.03367535 0.0055691004 0.0095735788 
		0.03367535 0.0055691004 0.0095735788 0.03367535 0.0055691004 0.0095735788 0.033675469 
		0.0055691004 0.0095735788 0.03367535 0.0055691004 0.0095735788 0.03367535 0 0.0095735788 
		0.033675551 0.0055691004 0.0095734596 0.033675373 0.0055691004 0.0095734596 0.033675373 
		0 0.0095734596 0.033675432 0.0055691004 0.0095734596 0.033675373 0.0055691004 0.0095734596 
		0.033675373 0.0055691004 0.0095734596;
	setAttr -s 12 ".vt[0:11]"  -1.033675432 -0.0055691004 -0.0095735788
		 -0.53367537 -0.0055691004 -0.0095735788 -0.033675373 -0.0055691004 -0.0095735788
		 -1.033675432 0.9944309 -0.0095735788 -0.53367537 0.9944309 -0.0095735788 -0.033675373 0.61688757 -0.0095735788
		 -1.033675432 0.9944309 -3.0095734596 -0.53367537 0.9944309 -3.0095734596 -0.033675373 0.61688757 -3.0095734596
		 -1.033675432 -0.0055691004 -3.0095734596 -0.53367537 -0.0055691004 -3.0095734596
		 -0.033675373 -0.0055691004 -3.0095734596;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 14 17 16 15
		f 4 1 10 -4 -10
		mu 0 4 17 12 13 16
		f 4 2 12 -5 -12
		mu 0 4 3 2 25 21
		f 4 3 13 -6 -13
		mu 0 4 2 5 8 25
		f 4 4 15 -7 -15
		mu 0 4 7 6 24 22
		f 4 5 16 -8 -16
		mu 0 4 6 19 20 24
		f 4 6 18 -1 -18
		mu 0 4 10 9 1 18
		f 4 7 19 -2 -19
		mu 0 4 9 11 4 1
		f 4 -20 -17 -14 -11
		mu 0 4 4 11 8 5
		f 4 17 8 11 14
		mu 0 4 23 0 3 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall5";
	rename -uid "58B0B387-4DA4-613C-4E13-C69BB5370146";
	setAttr ".t" -type "double3" -3 0 0.0095736018396344047 ;
	setAttr ".r" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".rp" -type "double3" 0 -0.0055690883720482809 -0.0095736018396344047 ;
	setAttr ".sp" -type "double3" 0 -0.0055690883720482809 -0.0095736018396344047 ;
createNode transform -n "transform1" -p "Wall5";
	rename -uid "36BB8177-44B1-09CB-E7B0-4AAEAD1C4B62";
	setAttr ".v" no;
createNode mesh -n "Wall5Shape" -p "transform1";
	rename -uid "74F64EE8-46A5-E72A-B0FF-A39544F13DF3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog[0].cog";
	setAttr ".pv" -type "double2" 0.51460650563240051 0.74316951632499695 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.022932112 0.50622112
		 0.53475714 0.50762427 0.25923276 0.50686896 0.18046588 0.50665295 0.45599017 0.50740838
		 0.35793224 0.50713956 0.73570728 0.69933438 0.80213892 0.69787145 0.35663661 0.97974062
		 0.53346145 0.98022544 0.61222839 0.98044133 0.45469454 0.98000944 0.83951747 0.76506877
		 0.83975512 0.85049891 0.70227069 0.76545048 0.70265245 0.90269732 0.77127588 0.90250635
		 0.77089405 0.76525962 0.61352396 0.50784022 0.66817099 0.65063566 0.66634971 0.56793398
		 0.17917031 0.97925401 0.79921305 0.56500804 0.021636546 0.97882217 0.73278141 0.56647098
		 0.25793713 0.97947007;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.03367535 0.0055691004 0 
		0.03367535 0.0055691004 0 0.03367535 0.0055691004 0 0.033675469 0.0055691004 -1.3322676e-15 
		0.03367535 0.0055691004 0 0.03367535 0 0 0.033675469 0.0055691004 -1.3322676e-15 
		0.03367535 0.0055691004 0 0.03367535 0 0 0.03367535 0.0055691004 0 0.03367535 0.0055691004 
		0 0.03367535 0.0055691004 0;
	setAttr -s 12 ".vt[0:11]"  -1.033675432 -0.0055691004 -0.0095735788
		 -0.53367537 -0.0055691004 -0.0095735788 -0.033675373 -0.0055691004 -0.0095735788
		 -1.033675432 0.9944309 -0.0095735788 -0.53367537 0.9944309 -0.0095735788 -0.033675373 0.61688757 -0.0095735788
		 -1.033675432 0.9944309 -3.0095734596 -0.53367537 0.9944309 -3.0095734596 -0.033675373 0.61688757 -3.0095734596
		 -1.033675432 -0.0055691004 -3.0095734596 -0.53367537 -0.0055691004 -3.0095734596
		 -0.033675373 -0.0055691004 -3.0095734596;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 14 17 16 15
		f 4 1 10 -4 -10
		mu 0 4 17 12 13 16
		f 4 2 12 -5 -12
		mu 0 4 3 2 25 21
		f 4 3 13 -6 -13
		mu 0 4 2 5 8 25
		f 4 4 15 -7 -15
		mu 0 4 7 6 24 22
		f 4 5 16 -8 -16
		mu 0 4 6 19 20 24
		f 4 6 18 -1 -18
		mu 0 4 10 9 1 18
		f 4 7 19 -2 -19
		mu 0 4 9 11 4 1
		f 4 -20 -17 -14 -11
		mu 0 4 4 11 8 5
		f 4 17 8 11 14
		mu 0 4 23 0 3 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall6";
	rename -uid "75B78C04-4A87-A27E-8F1B-8096644DBE00";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -1.5000000115025507 0.5 -1.5 ;
	setAttr ".sp" -type "double3" -1.5000000115025507 0.5 -1.5 ;
createNode mesh -n "Wall6Shape" -p "Wall6";
	rename -uid "548276D8-41EA-F5CB-3C62-F9A8FC190824";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.52645432413916082 0.25189923039191142 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall7";
	rename -uid "3E47A270-4BA8-F0A5-B934-B78B056CCA07";
	setAttr ".t" -type "double3" 0.035856204629195254 0 0 ;
	setAttr ".rp" -type "double3" -0.033675349036326518 -0.0055690883720482809 -0.0095736018396344047 ;
	setAttr ".sp" -type "double3" -0.033675349036326518 -0.0055690883720482809 -0.0095736018396344047 ;
createNode mesh -n "polySurfaceShape1" -p "Wall7";
	rename -uid "E184696D-4ED1-6AE2-87EE-0B80CE1855F4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43069583177566528 0.74701153455095426 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.022932112 0.5099014
		 0.53475714 0.51130462 0.25923276 0.51054925 0.18046588 0.51033324 0.45599017 0.51108867
		 0.35793224 0.51081985 0.35663661 0.98342091 0.53346145 0.98390573 0.61222839 0.98412162
		 0.45469454 0.98368979 0.83951747 0.76874912 0.83975512 0.85417926 0.70227069 0.76913083
		 0.70265245 0.90637761 0.77127588 0.9061867 0.77089405 0.76893997 0.61352396 0.5115205
		 0.17917031 0.98293436 0.021636546 0.98250246 0.25793713 0.98315036;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1.033675432 0 0 -0.53367537 0 0 -0.033675373 0 0
		 -1.033675432 0.9944309 -0.0095735788 -0.53367537 0.9944309 -0.0095735788 -0.033675373 0.61688757 -0.0095735788
		 -1.033675432 1 -3 -0.53367537 1 -3 -0.033675373 0.61688757 -3 -1.033675432 0 -3 -0.53367537 0 -3
		 -0.033675373 0 -3;
	setAttr -s 19 ".ed[0:18]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 1 4 1 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 12 15 14 13
		f 4 1 10 -4 -10
		mu 0 4 15 10 11 14
		f 4 2 12 -5 -12
		mu 0 4 3 2 19 17
		f 4 3 13 -6 -13
		mu 0 4 2 5 6 19
		f 4 6 17 -1 -17
		mu 0 4 8 7 1 16
		f 4 7 18 -2 -18
		mu 0 4 7 9 4 1
		f 4 -19 -16 -14 -11
		mu 0 4 4 9 6 5
		f 4 16 8 11 14
		mu 0 4 18 0 3 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform4" -p "Wall7";
	rename -uid "3185DB69-46E6-9F73-ABDE-97B3891B4E7B";
	setAttr ".v" no;
createNode mesh -n "Wall7Shape" -p "transform4";
	rename -uid "F389D421-498D-496F-38F2-CDAEDB508A45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43069583177566528 0.74701153455095426 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall8";
	rename -uid "58267FB0-4D5D-5D5F-DD45-8985F4C2C83F";
	setAttr ".t" -type "double3" 0.035856204629195254 0 -2.9904263981603654 ;
	setAttr ".rp" -type "double3" -0.033675349036326518 -0.0055690883720482809 -0.0095736018396344047 ;
	setAttr ".sp" -type "double3" -0.033675349036326518 -0.0055690883720482809 -0.0095736018396344047 ;
createNode mesh -n "polySurfaceShape2" -p "Wall8";
	rename -uid "68971D8D-418B-A81E-B3C7-A4850B24C94D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.80532458424568176 0.34036402404308319 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.022932112 0.012797564
		 0.53475714 0.014200747 0.25923276 0.013445377 0.18046588 0.01322937 0.45599017 0.013984799
		 0.35793224 0.013715982 0.73570728 0.20591086 0.80213892 0.20444787 0.35663661 0.48631704
		 0.53346145 0.48680186 0.61222839 0.48701775 0.45469454 0.48658592 0.61352396 0.014416665
		 0.66817099 0.15721211 0.66634971 0.074510425 0.17917031 0.48583049 0.79921305 0.071584508
		 0.021636546 0.48539862 0.73278141 0.073047452 0.25793713 0.48604652;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -1.033675432 0 0 -0.53367537 0 0 -0.033675373 0 0
		 -1.033675432 0.9944309 -0.0095735788 -0.53367537 0.9944309 -0.0095735788 -0.033675373 0.61688757 -0.0095735788
		 -1.033675432 1 -3 -0.53367537 1 -3 -0.033675373 0.61688757 -3 -1.033675432 0 -3 -0.53367537 0 -3
		 -0.033675373 0 -3;
	setAttr -s 19 ".ed[0:18]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0
		 10 11 0 0 3 0 2 5 0 3 6 0 4 7 1 5 8 0 6 9 0 7 10 1 8 11 0 9 0 0 10 1 1 11 2 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 2 11 -5 -11
		mu 0 4 3 2 19 15
		f 4 3 12 -6 -12
		mu 0 4 2 5 8 19
		f 4 4 14 -7 -14
		mu 0 4 7 6 18 16
		f 4 5 15 -8 -15
		mu 0 4 6 13 14 18
		f 4 6 17 -1 -17
		mu 0 4 10 9 1 12
		f 4 7 18 -2 -18
		mu 0 4 9 11 4 1
		f 4 -19 -16 -13 -10
		mu 0 4 4 11 8 5
		f 4 16 8 10 13
		mu 0 4 17 0 3 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform3" -p "Wall8";
	rename -uid "B51992D1-44C0-AB61-B5D6-7BB672D2873B";
	setAttr ".v" no;
createNode mesh -n "Wall8Shape" -p "transform3";
	rename -uid "4B2C95BB-4EF0-9FE2-61A7-F78FC86AE8AD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.80532458424568176 0.34036402404308319 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Wall9";
	rename -uid "85567588-4AD4-5D5F-2786-E59236A1F205";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 0 0 ;
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" -0.49781919777368255 0.5 -2.9952131990801827 ;
	setAttr ".sp" -type "double3" -0.49781919777368255 0.5 -2.9952131990801827 ;
createNode mesh -n "Wall9Shape" -p "Wall9";
	rename -uid "B0973E28-4EF3-0771-29F6-608E19D494B4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "Wall9ShapeOrig" -p "Wall9";
	rename -uid "9DCB590E-4A2E-CB4F-F091-0DB29CB22485";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "bend1Handle";
	rename -uid "14F1F50F-4BE4-3DE5-D2FB-23949BC7A987";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.49781920574605465 0.5 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 2.9952130317687988 2.9952130317687988 2.9952130317687988 ;
	setAttr ".smd" 7;
createNode deformBend -n "bend1HandleShape" -p "bend1Handle";
	rename -uid "051133EB-4EB9-4BCF-F370-4295AEFFAB54";
	setAttr -k off ".v";
	setAttr ".dd" -type "doubleArray" 3 0 3 0.78539816339744828 ;
	setAttr ".hw" 0.55000004302710304;
createNode transform -n "Outside_Bend";
	rename -uid "19FAFAE6-4AE1-5382-A64A-A9B659CBDA75";
	setAttr ".t" -type "double3" -10.251868139859242 0 0 ;
createNode mesh -n "Outside_BendShape" -p "Outside_Bend";
	rename -uid "52187A25-4867-7B52-8556-6894A6EF39E2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56052212417125702 0.28054817020893097 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.022932112 0.5099014
		 0.53475714 0.51130462 0.25923276 0.51054925 0.18046588 0.51033324 0.45599017 0.51108867
		 0.35793224 0.51081985 0.35663661 0.98342091 0.53346145 0.98390573 0.61222839 0.98412162
		 0.45469454 0.98368979 0.83951747 0.76874912 0.83975512 0.85417926 0.70227069 0.76913083
		 0.70265245 0.90637761 0.77127588 0.9061867 0.77089405 0.76893997 0.61352396 0.5115205
		 0.17917031 0.98293436 0.021636546 0.98250246 0.25793713 0.98315036 0.18046588 0.01322937
		 0.25923276 0.013445377 0.25793713 0.48604652 0.17917031 0.48583049 0.35793224 0.013715982
		 0.35663661 0.48631704 0.80213892 0.20444787 0.73570728 0.20591086 0.73278141 0.073047452
		 0.79921305 0.071584508 0.66817099 0.15721211 0.66634971 0.074510425 0.61222839 0.48701775
		 0.53346145 0.48680186 0.53475714 0.014200747 0.61352396 0.014416665 0.45469454 0.48658592
		 0.45599017 0.013984799 0.021636546 0.48539862 0.022932112 0.012797564 0.17981809
		 0.74663377 0.022284329 0.74620193 0.61287618 0.74782109 0.53410929 0.7476052 0.45534235
		 0.7473892 0.35728443 0.74712038 0.25858495 0.74684978 0.17981809 0.24952993 0.022284329
		 0.24909809 0.61287618 0.25071722 0.53410929 0.2505013 0.45534235 0.25028536 0.35728443
		 0.25001651 0.25858495 0.24974595 0.021960437 0.36724836 0.61255229 0.36886749 0.1794942
		 0.36768019 0.25826102 0.36789623 0.35696054 0.36816677 0.45501846 0.36843562 0.53378534
		 0.36865157 0.021798491 0.42632347 0.61239034 0.42794263 0.17933226 0.42675534 0.25809908
		 0.42697138 0.35679859 0.42724192 0.45485651 0.42751077 0.5336234 0.42772672 0.17965615
		 0.30860507 0.022122383 0.30817324 0.61271423 0.30979234 0.53394735 0.30957645 0.45518041
		 0.3093605 0.35712248 0.30909163 0.25842297 0.30882108 0.18014199 0.13137965 0.022608221
		 0.13094783 0.61320007 0.13256694 0.53443325 0.13235103 0.45566624 0.13213508 0.35760832
		 0.13186625 0.25890887 0.13159567 0.021960437 0.86435223 0.61255229 0.86597133 0.1794942
		 0.86478406 0.25826102 0.86500007 0.35696054 0.86527061 0.45501846 0.86553949 0.53378534
		 0.86575544 0.18014199 0.62848353 0.022608221 0.62805164 0.61320007 0.6296708 0.53443325
		 0.62945491 0.45566624 0.62923896 0.35760832 0.62897015 0.25890887 0.62869954 0.022446275
		 0.68712676 0.61303812 0.68874598 0.17998004 0.68755865 0.25874692 0.68777466 0.35744637
		 0.68804526 0.4555043 0.68831408 0.53427124 0.68853009 0.18030393 0.56940842 0.022770166
		 0.56897652 0.61336201 0.57059562 0.53459519 0.57037973 0.45582819 0.57016385 0.35777026
		 0.56989503 0.25907081 0.56962442 0.17965615 0.80570889 0.022122383 0.80527711 0.61271423
		 0.80689621 0.53394735 0.80668032 0.45518041 0.80646431 0.35712248 0.8061955 0.25842297
		 0.80592489 0.021798491 0.92342734 0.61239034 0.92504644 0.17933226 0.92385924 0.25809908
		 0.92407525 0.35679859 0.92434573 0.45485651 0.92461467 0.5336234 0.92483056 0.18030393
		 0.07230451 0.022770166 0.071872696 0.61336201 0.073491804 0.53459519 0.073275886
		 0.45582819 0.073059939 0.35777026 0.072791114 0.25907081 0.072520524 0.022446275
		 0.19002296 0.61303812 0.19164208 0.17998004 0.19045478 0.25874692 0.19067082 0.35744637
		 0.19094138 0.4555043 0.19121021 0.53427124 0.19142616;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".pt";
	setAttr ".pt[6]" -type "float3" -0.061245643 0 0.060119174 ;
	setAttr ".pt[7]" -type "float3" -0.089649022 0 0.088001199 ;
	setAttr ".pt[8]" -type "float3" -0.11704914 0 0.11489635 ;
	setAttr ".pt[9]" -type "float3" -0.06300927 0 0.061851028 ;
	setAttr ".pt[10]" -type "float3" -0.09192574 0 0.090235285 ;
	setAttr ".pt[11]" -type "float3" -0.11662421 0 0.11448012 ;
	setAttr ".pt[12]" -type "float3" -0.31580454 0 0.31361735 ;
	setAttr ".pt[13]" -type "float3" -0.31580454 0 0.30999774 ;
	setAttr ".pt[14]" -type "float3" -0.31580454 0 0.31362361 ;
	setAttr ".pt[15]" -type "float3" -0.31580454 0 0.30999774 ;
	setAttr ".pt[16]" -type "float3" -0.31580454 0 0.30999774 ;
	setAttr ".pt[17]" -type "float3" -0.31580454 0 0.31362355 ;
	setAttr ".pt[20]" -type "float3" -0.0053235921 0 0.0052256971 ;
	setAttr ".pt[21]" -type "float3" -0.01763813 0 0.017314062 ;
	setAttr ".pt[22]" -type "float3" -0.017911626 0 0.017582344 ;
	setAttr ".pt[23]" -type "float3" -0.0049622082 0 0.0048710094 ;
	setAttr ".pt[24]" -type "float3" -0.2152241 0 0.21126661 ;
	setAttr ".pt[25]" -type "float3" -0.21497011 0 0.21101782 ;
	setAttr ".pt[26]" -type "float3" -0.23413794 0 0.22983167 ;
	setAttr ".pt[27]" -type "float3" -0.25158983 0 0.24696279 ;
	setAttr ".pt[28]" -type "float3" -0.25158983 0 0.24696279 ;
	setAttr ".pt[29]" -type "float3" -0.23300876 0 0.22872351 ;
	setAttr ".pt[30]" -type "float3" -0.28715134 0 0.28187165 ;
	setAttr ".pt[31]" -type "float3" -0.28723928 0 0.28195831 ;
	setAttr ".pt[32]" -type "float3" -0.29332197 0 0.28793153 ;
	setAttr ".pt[33]" -type "float3" -0.29873171 0 0.29323843 ;
	setAttr ".pt[34]" -type "float3" -0.29873171 0 0.29323843 ;
	setAttr ".pt[35]" -type "float3" -0.29332197 0 0.28793153 ;
	setAttr ".pt[36]" -type "float3" -0.30845389 0 0.30278197 ;
	setAttr ".pt[37]" -type "float3" -0.30845389 0 0.30278197 ;
	setAttr ".pt[38]" -type "float3" -0.31006563 0 0.3043659 ;
	setAttr ".pt[39]" -type "float3" -0.31146714 0 0.30573967 ;
	setAttr ".pt[40]" -type "float3" -0.31146714 0 0.30573967 ;
	setAttr ".pt[41]" -type "float3" -0.31006563 0 0.3043659 ;
	setAttr ".pt[42]" -type "float3" -0.25423965 0 0.24956433 ;
	setAttr ".pt[43]" -type "float3" -0.25405735 0 0.24938585 ;
	setAttr ".pt[44]" -type "float3" -0.26679108 0 0.26188457 ;
	setAttr ".pt[45]" -type "float3" -0.27829832 0 0.27317896 ;
	setAttr ".pt[46]" -type "float3" -0.27841181 0 0.27329081 ;
	setAttr ".pt[47]" -type "float3" -0.26679108 0 0.26188457 ;
	setAttr ".pt[48]" -type "float3" -0.13140112 0 0.12898549 ;
	setAttr ".pt[49]" -type "float3" -0.13099995 0 0.1285906 ;
	setAttr ".pt[50]" -type "float3" -0.16328661 0 0.16028239 ;
	setAttr ".pt[51]" -type "float3" -0.18596101 0 0.18254115 ;
	setAttr ".pt[52]" -type "float3" -0.18629733 0 0.18287076 ;
	setAttr ".pt[53]" -type "float3" -0.15976168 0 0.15682314 ;
	setAttr ".pt[54]" -type "float3" -0.016596435 0 0.016291158 ;
	setAttr ".pt[55]" -type "float3" -0.015869517 0 0.015577786 ;
	setAttr ".pt[56]" -type "float3" -0.034883622 0 0.034242429 ;
	setAttr ".pt[57]" -type "float3" -0.057803903 0 0.056740832 ;
	setAttr ".pt[58]" -type "float3" -0.057398897 0 0.056343559 ;
	setAttr ".pt[59]" -type "float3" -0.036064703 0 0.035401586 ;
	setAttr ".pt[63]" -type "float3" -0.00077558437 0 0.00076132023 ;
	setAttr ".pt[64]" -type "float3" -0.00084053539 0 0.00082508556 ;
	setAttr ".pt[69]" -type "float3" -0.0065327296 0 0.0064126248 ;
	setAttr ".pt[70]" -type "float3" -0.0063572177 0 0.0062403646 ;
	setAttr ".pt[78]" -type "float3" -0.0040824963 0 0.0040073972 ;
	setAttr ".pt[79]" -type "float3" -0.0044110455 0 0.0043298802 ;
	setAttr ".pt[80]" -type "float3" -0.017259728 0 0.016942551 ;
	setAttr ".pt[81]" -type "float3" -0.034883622 0 0.034242429 ;
	setAttr ".pt[82]" -type "float3" -0.035081811 0 0.034436725 ;
	setAttr ".pt[83]" -type "float3" -0.016526714 0 0.016222849 ;
	setAttr ".pt[84]" -type "float3" -0.036394197 0 0.035725359 ;
	setAttr ".pt[85]" -type "float3" -0.035081811 0 0.034436725 ;
	setAttr ".pt[86]" -type "float3" -0.059577111 0 0.058481287 ;
	setAttr ".pt[87]" -type "float3" -0.085460529 0 0.083888553 ;
	setAttr ".pt[88]" -type "float3" -0.085031413 0 0.083467327 ;
	setAttr ".pt[89]" -type "float3" -0.061245643 0 0.060119174 ;
	setAttr ".pt[90]" -type "float3" -0.092649013 0 0.090945587 ;
	setAttr ".pt[91]" -type "float3" -0.095025919 0 0.09327732 ;
	setAttr ".pt[92]" -type "float3" -0.12655471 0 0.12422883 ;
	setAttr ".pt[93]" -type "float3" -0.15081958 0 0.14804661 ;
	setAttr ".pt[94]" -type "float3" -0.15121141 0 0.14843078 ;
	setAttr ".pt[95]" -type "float3" -0.12366194 0 0.12138927 ;
	setAttr ".pt[96]" -type "float3" -0.17355137 0 0.17036276 ;
	setAttr ".pt[97]" -type "float3" -0.17389104 0 0.17069654 ;
	setAttr ".pt[98]" -type "float3" -0.19578455 0 0.19218375 ;
	setAttr ".pt[99]" -type "float3" -0.22045729 0 0.21640322 ;
	setAttr ".pt[100]" -type "float3" -0.22019061 0 0.21614358 ;
	setAttr ".pt[101]" -type "float3" -0.19992206 0 0.19624743 ;
	setAttr -s 102 ".vt[0:101]"  -0.99781924 0 0 -0.49781916 0 0 0.0021808334 0 0
		 -0.99780566 0.9944309 -0.010828749 -0.49780715 0.9944309 -0.0095735686 0.0021912744 0.61688757 -0.0083183888
		 0.26944298 0.99721545 -3.054018974 0.62255239 0.99721545 -2.70002198 0.9756617 0.61688757 -2.34602499
		 0.26561189 0 -3.050192595 0.61916536 0 -2.69663906 0.97271872 0 -2.34308577 3.31580448 1 -4.31362391
		 3.31580448 1 -3.81362367 3.31580448 0.61688757 -3.31362367 3.31580448 0 -4.31362391
		 3.31580448 0 -3.81362367 3.31580448 0 -3.31362367 -0.66634911 0.99582314 -1.65825284
		 -0.66946417 0 -1.65075231 -0.20752434 0 -1.45941055 0.25441542 0 -1.26806891 0.25680834 0.61688757 -1.27383053
		 -0.20477036 0.99582314 -1.46604168 1.66755366 0.99860775 -3.98630381 1.66505241 0 -3.98526883
		 1.85639417 0 -3.52332902 2.047735691 0 -3.061389208 2.049657106 0.61688757 -3.062184334
		 1.8586055 0.99860775 -3.52424407 2.47425842 0 -4.23073864 2.47558618 0.99930388 -4.23100281
		 2.57297754 0.99930388 -3.74057937 2.67036867 0.61688757 -3.25015593 2.66934872 0 -3.24995327
		 2.57180357 0 -3.74034595 2.8929956 0 -4.2928524 2.89366913 0.99965191 -4.29291868
		 2.94259953 0.99965191 -3.7953186 2.99153018 0.61688757 -3.29771852 2.99101257 0 -3.29766774
		 2.94200397 0 -3.79525995 2.065569162 0.99895585 -4.12846947 2.063625813 0 -4.12788057
		 2.20876813 0 -3.64941025 2.35391045 0 -3.17094016 2.35540318 0.61688757 -3.17139268
		 2.21048617 0.99895585 -3.64993095 0.92266113 0.99791157 -3.58890152 0.91928363 0 -3.58664703
		 1.19706881 0 -3.17091227 1.47485387 0 -2.7551775 1.47744846 0.61688757 -2.75690913
		 1.20005476 0.99791157 -3.17290545 -0.27084249 0 -2.39652109 -0.26707807 0.99651933 -2.40214539
		 0.14822045 0.99651933 -2.12370825 0.56351888 0.61688757 -1.84527123 0.56062716 0 -1.84095073
		 0.14489238 0 -2.11873579 -0.91307545 0.99512702 -0.85083735 -0.91493416 0 -0.84154624
		 -0.42454144 0 -0.74400109 0.065851182 0 -0.64645588 0.067279011 0.61688757 -0.65359306
		 -0.42289817 0.99512702 -0.75221521 -0.81207603 0 -1.25217891 -0.80951345 0.99547505 -1.2605958
		 -0.33134022 0.99547505 -1.11447787 0.14683291 0.61688757 -0.96835989 0.14486437 0 -0.96189421
		 -0.3336058 0 -1.10703659 -0.97604102 0.99477899 -0.43291098 -0.97704798 0 -0.42280906
		 -0.4794555 0 -0.37380049 0.018136837 0 -0.32479191 0.018910356 0.61688757 -0.33255196
		 -0.47856528 0.99477899 -0.38273147 -0.48495689 0.99617124 -2.039990902 -0.48847198 0 -2.033428192
		 -0.047511272 0 -1.79772973 0.39344934 0 -1.56203139 0.39614955 0.61688757 -1.56707263
		 -0.044403631 0.99617124 -1.80353177 -0.01867171 0 -2.73653388 -0.014804169 0.99686742 -2.74123979
		 0.37125283 0.99686742 -2.42349768 0.75730973 0.61688757 -2.10575557 0.7543388 0 -2.10214067
		 0.36783358 0 -2.41933727 0.58293444 0.99756348 -3.33747983 0.57927048 0 -3.33447623
		 0.89646721 0 -2.94797087 1.21366382 0 -2.56146574 1.21647835 0.61688757 -2.56377292
		 0.89970642 0.99756348 -2.95062637 1.28237665 0 -3.8042767 1.28536165 0.99825966 -3.80587053
		 1.52071393 0.99825966 -3.36472511 1.75606632 0.61688757 -2.92357969 1.75377333 0 -2.92235518
		 1.51807499 0 -3.36331582;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 1 4 1 2 5 0 3 72 0 4 77 1 5 76 0 6 9 0 8 11 0 9 84 0 10 89 1 11 88 0 12 13 0
		 13 14 0 15 16 0 16 17 0 6 90 0 7 95 1 8 94 0 12 15 0 13 16 1 14 17 0 15 36 0 16 41 1
		 17 40 0 18 78 0 19 66 0 20 71 1 21 70 0 22 82 0 23 83 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 42 0 25 96 0 26 101 1 27 100 0 28 46 0 29 47 1 24 25 1 25 26 1
		 26 27 1 27 28 1 28 29 1 29 24 1 30 43 0 31 37 0 32 38 1 33 39 0 34 45 0 35 44 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 30 1 36 30 0 37 12 0 38 13 1 39 14 0 40 34 0 41 35 1
		 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 31 0 43 25 0 44 26 1 45 27 0 46 33 0
		 47 32 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 97 0 49 91 0 50 92 1 51 93 0
		 52 99 0 53 98 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 79 0 55 85 0 56 86 1
		 57 87 0 58 81 0 59 80 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 67 0 61 73 0
		 62 74 1 63 75 0 64 69 0 65 68 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 61 0
		 67 18 0 68 23 1 69 22 0 70 63 0 71 62 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1
		 72 60 0 73 0 0 74 1 1 75 2 0 76 64 0 77 65 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 72 1 78 55 0 79 19 0 80 20 1 81 21 0 82 57 0 83 56 1 78 79 1 79 80 1 80 81 1 81 82 1
		 82 83 1 83 78 1 84 54 0 85 6 0;
	setAttr ".ed[166:199]" 86 7 1 87 8 0 88 58 0 89 59 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1 90 48 0 91 9 0 92 10 1 93 11 0 94 52 0 95 53 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 90 1 96 49 0 97 24 0 98 29 1 99 28 0 100 51 0 101 50 1
		 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 96 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 12 15 14 13
		f 4 1 10 -4 -10
		mu 0 4 15 10 11 14
		f 4 2 12 151 -12
		mu 0 4 3 2 109 103
		f 4 3 13 150 -13
		mu 0 4 2 5 108 109
		f 4 147 142 -1 -142
		mu 0 4 105 106 1 16
		f 4 148 143 -2 -143
		mu 0 4 106 107 4 1
		f 4 -144 149 -14 -11
		mu 0 4 4 107 108 5
		f 4 146 141 8 11
		mu 0 4 103 104 0 3
		f 4 4 24 187 -24
		mu 0 4 20 21 130 124
		f 4 5 25 186 -25
		mu 0 4 21 24 129 130
		f 4 19 27 -22 -27
		mu 0 4 26 27 28 29
		f 4 20 28 -23 -28
		mu 0 4 27 30 31 28
		f 4 183 178 -7 -178
		mu 0 4 126 127 34 35
		f 4 184 179 -8 -179
		mu 0 4 127 128 37 34
		f 4 -180 185 -26 15
		mu 0 4 37 128 129 24
		f 4 182 177 -15 23
		mu 0 4 124 125 39 20
		f 4 16 170 165 14
		mu 0 4 18 117 119 17
		f 4 6 17 175 -17
		mu 0 4 8 7 123 118
		f 4 7 18 174 -18
		mu 0 4 7 9 122 123
		f 4 173 -19 -16 -168
		mu 0 4 121 122 9 6
		f 4 172 167 -6 -167
		mu 0 4 120 121 6 19
		f 4 171 166 -5 -166
		mu 0 4 119 120 19 17
		f 4 29 74 69 26
		mu 0 4 38 61 63 23
		f 4 21 30 79 -30
		mu 0 4 32 33 67 62
		f 4 22 31 78 -31
		mu 0 4 33 36 66 67
		f 4 77 -32 -29 -72
		mu 0 4 65 66 36 25
		f 4 76 71 -21 -71
		mu 0 4 64 65 25 22
		f 4 75 70 -20 -70
		mu 0 4 63 64 22 23
		f 4 86 81 -51 44
		mu 0 4 68 69 48 47
		f 4 -56 49 91 -45
		mu 0 4 47 53 74 68
		f 4 -55 48 90 -50
		mu 0 4 53 52 73 74
		f 4 -54 -84 89 -49
		mu 0 4 52 51 72 73
		f 4 88 83 -53 -83
		mu 0 4 71 72 51 50
		f 4 87 82 -52 -82
		mu 0 4 70 71 50 49
		f 4 -75 68 62 57
		mu 0 4 63 61 54 56
		f 4 63 58 -76 -58
		mu 0 4 56 57 64 63
		f 4 64 59 -77 -59
		mu 0 4 57 58 65 64
		f 4 65 -73 -78 -60
		mu 0 4 58 59 66 65
		f 4 -79 72 66 -74
		mu 0 4 67 66 59 60
		f 4 -80 73 67 -69
		mu 0 4 62 67 60 55
		f 4 -63 56 -87 80
		mu 0 4 56 54 69 68
		f 4 -68 61 -88 -57
		mu 0 4 55 60 71 70
		f 4 -67 60 -89 -62
		mu 0 4 60 59 72 71
		f 4 -90 -61 -66 -85
		mu 0 4 73 72 59 58
		f 4 -91 84 -65 -86
		mu 0 4 74 73 58 57
		f 4 -92 85 -64 -81
		mu 0 4 68 74 57 56
		f 4 50 45 194 189
		mu 0 4 47 48 131 133
		f 4 51 46 199 -46
		mu 0 4 49 50 137 132
		f 4 52 47 198 -47
		mu 0 4 50 51 136 137
		f 4 197 -48 53 -192
		mu 0 4 135 136 51 52
		f 4 196 191 54 -191
		mu 0 4 134 135 52 53
		f 4 195 190 55 -190
		mu 0 4 133 134 53 47
		f 4 158 153 -39 32
		mu 0 4 110 111 41 40
		f 4 -44 37 163 -33
		mu 0 4 40 46 116 110
		f 4 -43 36 162 -38
		mu 0 4 46 45 115 116
		f 4 -42 -156 161 -37
		mu 0 4 45 44 114 115
		f 4 160 155 -41 -155
		mu 0 4 113 114 44 43
		f 4 159 154 -40 -154
		mu 0 4 112 113 43 42
		f 4 38 33 134 129
		mu 0 4 40 41 96 98
		f 4 39 34 139 -34
		mu 0 4 42 43 102 97
		f 4 40 35 138 -35
		mu 0 4 43 44 101 102
		f 4 137 -36 41 -132
		mu 0 4 100 101 44 45
		f 4 136 131 42 -131
		mu 0 4 99 100 45 46
		f 4 135 130 43 -130
		mu 0 4 98 99 46 40
		f 4 -135 128 -123 116
		mu 0 4 98 96 90 89
		f 4 -128 121 -136 -117
		mu 0 4 89 95 99 98
		f 4 -127 120 -137 -122
		mu 0 4 95 94 100 99
		f 4 -126 -133 -138 -121
		mu 0 4 94 93 101 100
		f 4 -139 132 -125 -134
		mu 0 4 102 101 93 92
		f 4 -140 133 -124 -129
		mu 0 4 97 102 92 91
		f 4 122 117 -147 140
		mu 0 4 89 90 104 103
		f 4 123 118 -148 -118
		mu 0 4 91 92 106 105
		f 4 124 119 -149 -119
		mu 0 4 92 93 107 106
		f 4 -150 -120 125 -145
		mu 0 4 108 107 93 94
		f 4 -151 144 126 -146
		mu 0 4 109 108 94 95
		f 4 -152 145 127 -141
		mu 0 4 103 109 95 89
		f 4 -111 104 -159 152
		mu 0 4 84 82 111 110
		f 4 -116 109 -160 -105
		mu 0 4 83 88 113 112
		f 4 -115 108 -161 -110
		mu 0 4 88 87 114 113
		f 4 -162 -109 -114 -157
		mu 0 4 115 114 87 86
		f 4 -163 156 -113 -158
		mu 0 4 116 115 86 85
		f 4 -164 157 -112 -153
		mu 0 4 110 116 85 84
		f 4 -171 164 110 105
		mu 0 4 119 117 82 84
		f 4 111 106 -172 -106
		mu 0 4 84 85 120 119
		f 4 112 107 -173 -107
		mu 0 4 85 86 121 120
		f 4 113 -169 -174 -108
		mu 0 4 86 87 122 121
		f 4 -175 168 114 -170
		mu 0 4 123 122 87 88
		f 4 -176 169 115 -165
		mu 0 4 118 123 88 83
		f 4 98 93 -183 176
		mu 0 4 75 76 125 124
		f 4 99 94 -184 -94
		mu 0 4 77 78 127 126
		f 4 100 95 -185 -95
		mu 0 4 78 79 128 127
		f 4 -186 -96 101 -181
		mu 0 4 129 128 79 80
		f 4 -187 180 102 -182
		mu 0 4 130 129 80 81
		f 4 -188 181 103 -177
		mu 0 4 124 130 81 75
		f 4 -195 188 -99 92
		mu 0 4 133 131 76 75
		f 4 -104 97 -196 -93
		mu 0 4 75 81 134 133
		f 4 -103 96 -197 -98
		mu 0 4 81 80 135 134
		f 4 -102 -193 -198 -97
		mu 0 4 80 79 136 135
		f 4 -199 192 -101 -194
		mu 0 4 137 136 79 78
		f 4 -200 193 -100 -189
		mu 0 4 132 137 78 77;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "Outside_BendShapeOrig" -p "Outside_Bend";
	rename -uid "702B7A38-41B5-CC64-EB76-89AE88748D3F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.022932112 0.5099014
		 0.53475714 0.51130462 0.25923276 0.51054925 0.18046588 0.51033324 0.45599017 0.51108867
		 0.35793224 0.51081985 0.35663661 0.98342091 0.53346145 0.98390573 0.61222839 0.98412162
		 0.45469454 0.98368979 0.83951747 0.76874912 0.83975512 0.85417926 0.70227069 0.76913083
		 0.70265245 0.90637761 0.77127588 0.9061867 0.77089405 0.76893997 0.61352396 0.5115205
		 0.17917031 0.98293436 0.021636546 0.98250246 0.25793713 0.98315036 0.18046588 0.01322937
		 0.25923276 0.013445377 0.25793713 0.48604652 0.17917031 0.48583049 0.35793224 0.013715982
		 0.35663661 0.48631704 0.80213892 0.20444787 0.73570728 0.20591086 0.73278141 0.073047452
		 0.79921305 0.071584508 0.66817099 0.15721211 0.66634971 0.074510425 0.61222839 0.48701775
		 0.53346145 0.48680186 0.53475714 0.014200747 0.61352396 0.014416665 0.45469454 0.48658592
		 0.45599017 0.013984799 0.021636546 0.48539862 0.022932112 0.012797564 0.17981809
		 0.74663377 0.022284329 0.74620193 0.61287618 0.74782109 0.53410929 0.7476052 0.45534235
		 0.7473892 0.35728443 0.74712038 0.25858495 0.74684978 0.17981809 0.24952993 0.022284329
		 0.24909809 0.61287618 0.25071722 0.53410929 0.2505013 0.45534235 0.25028536 0.35728443
		 0.25001651 0.25858495 0.24974595 0.021960437 0.36724836 0.61255229 0.36886749 0.1794942
		 0.36768019 0.25826102 0.36789623 0.35696054 0.36816677 0.45501846 0.36843562 0.53378534
		 0.36865157 0.021798491 0.42632347 0.61239034 0.42794263 0.17933226 0.42675534 0.25809908
		 0.42697138 0.35679859 0.42724192 0.45485651 0.42751077 0.5336234 0.42772672 0.17965615
		 0.30860507 0.022122383 0.30817324 0.61271423 0.30979234 0.53394735 0.30957645 0.45518041
		 0.3093605 0.35712248 0.30909163 0.25842297 0.30882108 0.18014199 0.13137965 0.022608221
		 0.13094783 0.61320007 0.13256694 0.53443325 0.13235103 0.45566624 0.13213508 0.35760832
		 0.13186625 0.25890887 0.13159567 0.021960437 0.86435223 0.61255229 0.86597133 0.1794942
		 0.86478406 0.25826102 0.86500007 0.35696054 0.86527061 0.45501846 0.86553949 0.53378534
		 0.86575544 0.18014199 0.62848353 0.022608221 0.62805164 0.61320007 0.6296708 0.53443325
		 0.62945491 0.45566624 0.62923896 0.35760832 0.62897015 0.25890887 0.62869954 0.022446275
		 0.68712676 0.61303812 0.68874598 0.17998004 0.68755865 0.25874692 0.68777466 0.35744637
		 0.68804526 0.4555043 0.68831408 0.53427124 0.68853009 0.18030393 0.56940842 0.022770166
		 0.56897652 0.61336201 0.57059562 0.53459519 0.57037973 0.45582819 0.57016385 0.35777026
		 0.56989503 0.25907081 0.56962442 0.17965615 0.80570889 0.022122383 0.80527711 0.61271423
		 0.80689621 0.53394735 0.80668032 0.45518041 0.80646431 0.35712248 0.8061955 0.25842297
		 0.80592489 0.021798491 0.92342734 0.61239034 0.92504644 0.17933226 0.92385924 0.25809908
		 0.92407525 0.35679859 0.92434573 0.45485651 0.92461467 0.5336234 0.92483056 0.18030393
		 0.07230451 0.022770166 0.071872696 0.61336201 0.073491804 0.53459519 0.073275886
		 0.45582819 0.073059939 0.35777026 0.072791114 0.25907081 0.072520524 0.022446275
		 0.19002296 0.61303812 0.19164208 0.17998004 0.19045478 0.25874692 0.19067082 0.35744637
		 0.19094138 0.4555043 0.19121021 0.53427124 0.19142616;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".vt[0:101]"  -0.99781924 0 0 -0.49781916 0 0 0.0021808334 0 0
		 -0.99781924 0.9944309 -0.0095735788 -0.49781916 0.9944309 -0.0095735788 0.0021808334 0.61688757 -0.0095735788
		 -0.99781924 0.99721545 -3 -0.49781916 0.99721545 -3 0.0021808334 0.61688757 -3 -0.99781924 0 -2.99521303
		 -0.49781916 0 -2.99521303 0.0021808334 0 -2.99521303 -0.99781924 1 -5.99042606 -0.49781916 1 -5.99042606
		 0.0021808334 0.61688757 -5.99042606 -0.99781924 0 -5.99042606 -0.49781916 0 -5.99042606
		 0.0021808334 0 -5.99042606 -0.99781924 0.99582314 -1.50478673 -0.99781924 0 -1.49760652
		 -0.49781916 0 -1.49760652 0.0021808334 0 -1.49760652 0.0021808334 0.61688757 -1.50478673
		 -0.49781916 0.99582314 -1.50478673 -0.99781924 0.99860775 -4.49521303 -0.99781924 0 -4.49281979
		 -0.49781916 0 -4.49281979 0.0021808334 0 -4.49281979 0.0021808334 0.61688757 -4.49521303
		 -0.49781916 0.99860775 -4.49521303 -0.99781924 0 -5.24162292 -0.99781924 0.99930388 -5.24281979
		 -0.49781916 0.99930388 -5.24281979 0.0021808334 0.61688757 -5.24281979 0.0021808334 0 -5.24162292
		 -0.49781916 0 -5.24162292 -0.99781924 0 -5.61602449 -0.99781924 0.99965191 -5.61662292
		 -0.49781916 0.99965191 -5.61662292 0.0021808334 0.61688757 -5.61662292 0.0021808334 0 -5.61602449
		 -0.49781916 0 -5.61602449 -0.99781924 0.99895585 -4.86901665 -0.99781924 0 -4.86722136
		 -0.49781916 0 -4.86722136 0.0021808334 0 -4.86722136 0.0021808334 0.61688757 -4.86901665
		 -0.49781916 0.99895585 -4.86901665 -0.99781924 0.99791157 -3.74760652 -0.99781924 0 -3.74401641
		 -0.49781916 0 -3.74401641 0.0021808334 0 -3.74401641 0.0021808334 0.61688757 -3.74760652
		 -0.49781916 0.99791157 -3.74760652 -0.99781924 0 -2.24640989 -0.99781924 0.99651933 -2.25239325
		 -0.49781916 0.99651933 -2.25239325 0.0021808334 0.61688757 -2.25239325 0.0021808334 0 -2.24640989
		 -0.49781916 0 -2.24640989 -0.99781924 0.99512702 -0.75718015 -0.99781924 0 -0.74880326
		 -0.49781916 0 -0.74880326 0.0021808334 0 -0.74880326 0.0021808334 0.61688757 -0.75718015
		 -0.49781916 0.99512702 -0.75718015 -0.99781924 0 -1.12320495 -0.99781924 0.99547505 -1.13098347
		 -0.49781916 0.99547505 -1.13098347 0.0021808334 0.61688757 -1.13098347 0.0021808334 0 -1.12320495
		 -0.49781916 0 -1.12320495 -0.99781924 0.99477899 -0.38337687 -0.99781924 0 -0.37440163
		 -0.49781916 0 -0.37440163 0.0021808334 0 -0.37440163 0.0021808334 0.61688757 -0.38337687
		 -0.49781916 0.99477899 -0.38337687 -0.99781924 0.99617124 -1.87858999 -0.99781924 0 -1.8720082
		 -0.49781916 0 -1.8720082 0.0021808334 0 -1.8720082 0.0021808334 0.61688757 -1.87858999
		 -0.49781916 0.99617124 -1.87858999 -0.99781924 0 -2.62081146 -0.99781924 0.99686742 -2.62619662
		 -0.49781916 0.99686742 -2.62619662 0.0021808334 0.61688757 -2.62619662 0.0021808334 0 -2.62081146
		 -0.49781916 0 -2.62081146 -0.99781924 0.99756348 -3.37380314 -0.99781924 0 -3.3696146
		 -0.49781916 0 -3.3696146 0.0021808334 0 -3.3696146 0.0021808334 0.61688757 -3.37380314
		 -0.49781916 0.99756348 -3.37380314 -0.99781924 0 -4.11841822 -0.99781924 0.99825966 -4.12140989
		 -0.49781916 0.99825966 -4.12140989 0.0021808334 0.61688757 -4.12140989 0.0021808334 0 -4.11841822
		 -0.49781916 0 -4.11841822;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 1 4 1 2 5 0 3 72 0 4 77 1 5 76 0 6 9 0 8 11 0 9 84 0 10 89 1 11 88 0 12 13 0
		 13 14 0 15 16 0 16 17 0 6 90 0 7 95 1 8 94 0 12 15 0 13 16 1 14 17 0 15 36 0 16 41 1
		 17 40 0 18 78 0 19 66 0 20 71 1 21 70 0 22 82 0 23 83 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 42 0 25 96 0 26 101 1 27 100 0 28 46 0 29 47 1 24 25 1 25 26 1
		 26 27 1 27 28 1 28 29 1 29 24 1 30 43 0 31 37 0 32 38 1 33 39 0 34 45 0 35 44 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 30 1 36 30 0 37 12 0 38 13 1 39 14 0 40 34 0 41 35 1
		 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 31 0 43 25 0 44 26 1 45 27 0 46 33 0
		 47 32 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 97 0 49 91 0 50 92 1 51 93 0
		 52 99 0 53 98 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 79 0 55 85 0 56 86 1
		 57 87 0 58 81 0 59 80 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 67 0 61 73 0
		 62 74 1 63 75 0 64 69 0 65 68 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 61 0
		 67 18 0 68 23 1 69 22 0 70 63 0 71 62 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1
		 72 60 0 73 0 0 74 1 1 75 2 0 76 64 0 77 65 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 72 1 78 55 0 79 19 0 80 20 1 81 21 0 82 57 0 83 56 1 78 79 1 79 80 1 80 81 1 81 82 1
		 82 83 1 83 78 1 84 54 0 85 6 0;
	setAttr ".ed[166:199]" 86 7 1 87 8 0 88 58 0 89 59 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1 90 48 0 91 9 0 92 10 1 93 11 0 94 52 0 95 53 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 90 1 96 49 0 97 24 0 98 29 1 99 28 0 100 51 0 101 50 1
		 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 96 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 12 15 14 13
		f 4 1 10 -4 -10
		mu 0 4 15 10 11 14
		f 4 2 12 151 -12
		mu 0 4 3 2 109 103
		f 4 3 13 150 -13
		mu 0 4 2 5 108 109
		f 4 147 142 -1 -142
		mu 0 4 105 106 1 16
		f 4 148 143 -2 -143
		mu 0 4 106 107 4 1
		f 4 -144 149 -14 -11
		mu 0 4 4 107 108 5
		f 4 146 141 8 11
		mu 0 4 103 104 0 3
		f 4 4 24 187 -24
		mu 0 4 20 21 130 124
		f 4 5 25 186 -25
		mu 0 4 21 24 129 130
		f 4 19 27 -22 -27
		mu 0 4 26 27 28 29
		f 4 20 28 -23 -28
		mu 0 4 27 30 31 28
		f 4 183 178 -7 -178
		mu 0 4 126 127 34 35
		f 4 184 179 -8 -179
		mu 0 4 127 128 37 34
		f 4 -180 185 -26 15
		mu 0 4 37 128 129 24
		f 4 182 177 -15 23
		mu 0 4 124 125 39 20
		f 4 16 170 165 14
		mu 0 4 18 117 119 17
		f 4 6 17 175 -17
		mu 0 4 8 7 123 118
		f 4 7 18 174 -18
		mu 0 4 7 9 122 123
		f 4 173 -19 -16 -168
		mu 0 4 121 122 9 6
		f 4 172 167 -6 -167
		mu 0 4 120 121 6 19
		f 4 171 166 -5 -166
		mu 0 4 119 120 19 17
		f 4 29 74 69 26
		mu 0 4 38 61 63 23
		f 4 21 30 79 -30
		mu 0 4 32 33 67 62
		f 4 22 31 78 -31
		mu 0 4 33 36 66 67
		f 4 77 -32 -29 -72
		mu 0 4 65 66 36 25
		f 4 76 71 -21 -71
		mu 0 4 64 65 25 22
		f 4 75 70 -20 -70
		mu 0 4 63 64 22 23
		f 4 86 81 -51 44
		mu 0 4 68 69 48 47
		f 4 -56 49 91 -45
		mu 0 4 47 53 74 68
		f 4 -55 48 90 -50
		mu 0 4 53 52 73 74
		f 4 -54 -84 89 -49
		mu 0 4 52 51 72 73
		f 4 88 83 -53 -83
		mu 0 4 71 72 51 50
		f 4 87 82 -52 -82
		mu 0 4 70 71 50 49
		f 4 -75 68 62 57
		mu 0 4 63 61 54 56
		f 4 63 58 -76 -58
		mu 0 4 56 57 64 63
		f 4 64 59 -77 -59
		mu 0 4 57 58 65 64
		f 4 65 -73 -78 -60
		mu 0 4 58 59 66 65
		f 4 -79 72 66 -74
		mu 0 4 67 66 59 60
		f 4 -80 73 67 -69
		mu 0 4 62 67 60 55
		f 4 -63 56 -87 80
		mu 0 4 56 54 69 68
		f 4 -68 61 -88 -57
		mu 0 4 55 60 71 70
		f 4 -67 60 -89 -62
		mu 0 4 60 59 72 71
		f 4 -90 -61 -66 -85
		mu 0 4 73 72 59 58
		f 4 -91 84 -65 -86
		mu 0 4 74 73 58 57
		f 4 -92 85 -64 -81
		mu 0 4 68 74 57 56
		f 4 50 45 194 189
		mu 0 4 47 48 131 133
		f 4 51 46 199 -46
		mu 0 4 49 50 137 132
		f 4 52 47 198 -47
		mu 0 4 50 51 136 137
		f 4 197 -48 53 -192
		mu 0 4 135 136 51 52
		f 4 196 191 54 -191
		mu 0 4 134 135 52 53
		f 4 195 190 55 -190
		mu 0 4 133 134 53 47
		f 4 158 153 -39 32
		mu 0 4 110 111 41 40
		f 4 -44 37 163 -33
		mu 0 4 40 46 116 110
		f 4 -43 36 162 -38
		mu 0 4 46 45 115 116
		f 4 -42 -156 161 -37
		mu 0 4 45 44 114 115
		f 4 160 155 -41 -155
		mu 0 4 113 114 44 43
		f 4 159 154 -40 -154
		mu 0 4 112 113 43 42
		f 4 38 33 134 129
		mu 0 4 40 41 96 98
		f 4 39 34 139 -34
		mu 0 4 42 43 102 97
		f 4 40 35 138 -35
		mu 0 4 43 44 101 102
		f 4 137 -36 41 -132
		mu 0 4 100 101 44 45
		f 4 136 131 42 -131
		mu 0 4 99 100 45 46
		f 4 135 130 43 -130
		mu 0 4 98 99 46 40
		f 4 -135 128 -123 116
		mu 0 4 98 96 90 89
		f 4 -128 121 -136 -117
		mu 0 4 89 95 99 98
		f 4 -127 120 -137 -122
		mu 0 4 95 94 100 99
		f 4 -126 -133 -138 -121
		mu 0 4 94 93 101 100
		f 4 -139 132 -125 -134
		mu 0 4 102 101 93 92
		f 4 -140 133 -124 -129
		mu 0 4 97 102 92 91
		f 4 122 117 -147 140
		mu 0 4 89 90 104 103
		f 4 123 118 -148 -118
		mu 0 4 91 92 106 105
		f 4 124 119 -149 -119
		mu 0 4 92 93 107 106
		f 4 -150 -120 125 -145
		mu 0 4 108 107 93 94
		f 4 -151 144 126 -146
		mu 0 4 109 108 94 95
		f 4 -152 145 127 -141
		mu 0 4 103 109 95 89
		f 4 -111 104 -159 152
		mu 0 4 84 82 111 110
		f 4 -116 109 -160 -105
		mu 0 4 83 88 113 112
		f 4 -115 108 -161 -110
		mu 0 4 88 87 114 113
		f 4 -162 -109 -114 -157
		mu 0 4 115 114 87 86
		f 4 -163 156 -113 -158
		mu 0 4 116 115 86 85
		f 4 -164 157 -112 -153
		mu 0 4 110 116 85 84
		f 4 -171 164 110 105
		mu 0 4 119 117 82 84
		f 4 111 106 -172 -106
		mu 0 4 84 85 120 119
		f 4 112 107 -173 -107
		mu 0 4 85 86 121 120
		f 4 113 -169 -174 -108
		mu 0 4 86 87 122 121
		f 4 -175 168 114 -170
		mu 0 4 123 122 87 88
		f 4 -176 169 115 -165
		mu 0 4 118 123 88 83
		f 4 98 93 -183 176
		mu 0 4 75 76 125 124
		f 4 99 94 -184 -94
		mu 0 4 77 78 127 126
		f 4 100 95 -185 -95
		mu 0 4 78 79 128 127
		f 4 -186 -96 101 -181
		mu 0 4 129 128 79 80
		f 4 -187 180 102 -182
		mu 0 4 130 129 80 81
		f 4 -188 181 103 -177
		mu 0 4 124 130 81 75
		f 4 -195 188 -99 92
		mu 0 4 133 131 76 75
		f 4 -104 97 -196 -93
		mu 0 4 75 81 134 133
		f 4 -103 96 -197 -98
		mu 0 4 81 80 135 134
		f 4 -102 -193 -198 -97
		mu 0 4 80 79 136 135
		f 4 -199 192 -101 -194
		mu 0 4 137 136 79 78
		f 4 -200 193 -100 -189
		mu 0 4 132 137 78 77;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wall10";
	rename -uid "888A7D6D-4E63-93BB-C5B2-1089C68A1ECF";
	setAttr ".rp" -type "double3" 1 0 0 ;
	setAttr ".sp" -type "double3" 1 0 0 ;
createNode mesh -n "Wall10Shape" -p "Wall10";
	rename -uid "5578A7BD-4174-1A19-D605-639351A27959";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41042479872703552 0.27930112928152084 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.022932112 0.5099014
		 0.53475714 0.51130462 0.25923276 0.51054925 0.18046588 0.51033324 0.45599017 0.51108867
		 0.35793224 0.51081985 0.35663661 0.98342091 0.53346145 0.98390573 0.61222839 0.98412162
		 0.45469454 0.98368979 0.83951747 0.76874912 0.83975512 0.85417926 0.70227069 0.76913083
		 0.70265245 0.90637761 0.77127588 0.9061867 0.77089405 0.76893997 0.61352396 0.5115205
		 0.17917031 0.98293436 0.021636546 0.98250246 0.25793713 0.98315036 0.18046588 0.01322937
		 0.25923276 0.013445377 0.25793713 0.48604652 0.17917031 0.48583049 0.35793224 0.013715982
		 0.35663661 0.48631704 0.80213892 0.20444787 0.73570728 0.20591086 0.73278141 0.073047452
		 0.79921305 0.071584508 0.66817099 0.15721211 0.66634971 0.074510425 0.61222839 0.48701775
		 0.53346145 0.48680186 0.53475714 0.014200747 0.61352396 0.014416665 0.45469454 0.48658592
		 0.45599017 0.013984799 0.021636546 0.48539862 0.022932112 0.012797564 0.17981809
		 0.74663377 0.022284329 0.74620193 0.61287618 0.74782109 0.53410929 0.7476052 0.45534235
		 0.7473892 0.35728443 0.74712038 0.25858495 0.74684978 0.17981809 0.24952993 0.022284329
		 0.24909809 0.61287618 0.25071722 0.53410929 0.2505013 0.45534235 0.25028536 0.35728443
		 0.25001651 0.25858495 0.24974595 0.021960437 0.36724836 0.61255229 0.36886749 0.1794942
		 0.36768019 0.25826102 0.36789623 0.35696054 0.36816677 0.45501846 0.36843562 0.53378534
		 0.36865157 0.021798491 0.42632347 0.61239034 0.42794263 0.17933226 0.42675534 0.25809908
		 0.42697138 0.35679859 0.42724192 0.45485651 0.42751077 0.5336234 0.42772672 0.17965615
		 0.30860507 0.022122383 0.30817324 0.61271423 0.30979234 0.53394735 0.30957645 0.45518041
		 0.3093605 0.35712248 0.30909163 0.25842297 0.30882108 0.18014199 0.13137965 0.022608221
		 0.13094783 0.61320007 0.13256694 0.53443325 0.13235103 0.45566624 0.13213508 0.35760832
		 0.13186625 0.25890887 0.13159567 0.021960437 0.86435223 0.61255229 0.86597133 0.1794942
		 0.86478406 0.25826102 0.86500007 0.35696054 0.86527061 0.45501846 0.86553949 0.53378534
		 0.86575544 0.18014199 0.62848353 0.022608221 0.62805164 0.61320007 0.6296708 0.53443325
		 0.62945491 0.45566624 0.62923896 0.35760832 0.62897015 0.25890887 0.62869954 0.022446275
		 0.68712676 0.61303812 0.68874598 0.17998004 0.68755865 0.25874692 0.68777466 0.35744637
		 0.68804526 0.4555043 0.68831408 0.53427124 0.68853009 0.18030393 0.56940842 0.022770166
		 0.56897652 0.61336201 0.57059562 0.53459519 0.57037973 0.45582819 0.57016385 0.35777026
		 0.56989503 0.25907081 0.56962442 0.17965615 0.80570889 0.022122383 0.80527711 0.61271423
		 0.80689621 0.53394735 0.80668032 0.45518041 0.80646431 0.35712248 0.8061955 0.25842297
		 0.80592489 0.021798491 0.92342734 0.61239034 0.92504644 0.17933226 0.92385924 0.25809908
		 0.92407525 0.35679859 0.92434573 0.45485651 0.92461467 0.5336234 0.92483056 0.18030393
		 0.07230451 0.022770166 0.071872696 0.61336201 0.073491804 0.53459519 0.073275886
		 0.45582819 0.073059939 0.35777026 0.072791114 0.25907081 0.072520524 0.022446275
		 0.19002296 0.61303812 0.19164208 0.17998004 0.19045478 0.25874692 0.19067082 0.35744637
		 0.19094138 0.4555043 0.19121021 0.53427124 0.19142616;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".pt[0:101]" -type "float3"  2 0 0 0.99999994 0 0 -6.2286354e-08 
		0 0 2.0000145 0 0 1.0000176 0 0 2.0819829e-05 0 0 3.1779203 0 0.18147875 2.5165696 
		0 0.1366107 1.8619429 0 0.085018821 3.1289036 0 0.22638588 2.4649048 0 0.1832777 
		1.8325381 0 0.10853776 6.3114429 0 0.31362373 6.3114429 0 0.32622963 6.3114429 0 
		0.31362373 6.3114429 0 0.31362373 6.3114429 0 0.32622963 6.3114429 0 0.31362373 2.3292587 
		0 0.026310999 2.2977743 0 0.054454088 1.4064982 0 0.021850452 0.50368345 0 0.00078574492 
		0.50925499 0 0 1.427789 0 0.0046233521 4.5399485 0 0.31921116 4.5302472 0 0.32622963 
		4.1579404 0 0.31585285 3.8094356 0 0.28167415 3.7830112 0 0.31194189 4.1612034 0 
		0.31585285 5.3982868 0 0.32622963 5.3997111 0 0.32622963 5.2049284 0 0.32622963 5.0101461 
		0 0.32622963 5.0081062 0 0.32622963 5.2031965 0 0.32622963 5.8474684 0 0.32622963 
		5.8481908 0 0.32622963 5.75033 0 0.32622963 5.6524692 0 0.32622963 5.6514339 0 0.32622963 
		5.7494512 0 0.32622963 4.9598837 0 0.32622963 4.957799 0 0.32622963 4.6675143 0 0.32622963 
		4.3915176 0 0.31194189 4.3802156 0 0.32622963 4.6700497 0 0.32622963 3.793119 0 0.26699051 
		3.7577481 0 0.29873851 3.2387922 0 0.26212391 2.7437606 0 0.20158558 2.7376857 0 
		0.21284941 3.2639911 0 0.24133149 2.6449165 0 0.13491549 2.6918123 0 0.09205769 1.9014812 
		0 0.051791828 1.0977699 0 0.024906263 1.0803254 0 0.036567401 1.857617 0 0.0907453 
		2.0909052 0 0 2.0812058 0 0.0077055832 1.1081259 0 0 0.12734064 0 0 0.13019629 0 
		0 1.1105506 0 0 2.1732762 0 0.02597151 2.1942914 0 0.0077055832 1.2456504 0 0 0.28930408 
		0 0 0.28536701 0 0 1.2376839 0 0.0046233521 2.0233617 0 0 2.0222816 0 0 1.0270966 
		0 0 0.031911947 0 0 0.033458982 0 0 1.0284103 0 0 2.4952722 0 0.054878391 2.4547777 
		0 0.091602005 1.6130579 0 0.051400431 0.77013552 0 0.012401462 0.78144753 0 0.0064898394 
		1.646889 0 0.022154821 2.8692284 0 0.18110842 2.9191353 0 0.13535027 2.1912129 0 
		0.091158822 1.4577992 0 0.05245864 1.4341825 0 0.070133261 2.1410916 0 0.13623461 
		3.4690192 0 0.22666369 3.424762 0 0.26699051 2.8306954 0 0.22666369 2.276571 0 0.1463948 
		2.2827001 0 0.14589496 2.8750982 0 0.18704078 4.1267676 0 0.31921116 4.1504421 0 
		0.29873851 3.6922181 0 0.28625765 3.2360659 0 0.27170518 3.2537246 0 0.24946029 3.6883242 
		0 0.28625765;
	setAttr -s 102 ".vt[0:101]"  -0.99781924 0 0 -0.49781916 0 0 0.0021808334 0 0
		 -0.99782652 0.9944309 -0.0058080284 -0.49782801 0.9944309 -0.0070632086 0.0021703923 0.61688757 -0.0083183888
		 -1.67751873 0.99721545 -1.63803124 -1.32440937 0.99721545 -1.99202812 -0.97130001 0.61688757 -2.34602499
		 -1.67546391 0 -1.63597894 -1.3219105 0 -1.98953235 -0.96835709 0 -2.34308577 -3.31144285 1 -2.31362367
		 -3.31144285 1 -2.81362367 -3.31144285 0.61688757 -3.31362367 -3.31144285 0 -2.31362367
		 -3.31144285 0 -2.81362367 -3.31144285 0 -3.31362367 -1.1756041 0.99582314 -0.88940829
		 -1.17393339 0 -0.88538545 -0.71199352 0 -1.076727152 -0.25005376 0 -1.26806891 -0.25244668 0.61688757 -1.27383053
		 -0.71402538 0.99582314 -1.081619501 -2.42739916 0.99860775 -2.13806486 -2.42605758 0 -2.13750958
		 -2.23471594 0 -2.5994494 -2.043374062 0 -3.061389208 -2.045295715 0.61688757 -3.062184334
		 -2.23634744 0.99860775 -2.6001246 -2.86007738 0 -2.2691679 -2.86078954 0.99930388 -2.26930952
		 -2.76339817 0.99930388 -2.75973296 -2.66600704 0.61688757 -3.25015616 -2.66498709 0 -3.24995327
		 -2.76253223 0 -2.75956082 -3.084668159 0 -2.30248284 -3.085029364 0.99965191 -2.30251837
		 -3.036098957 0.99965191 -2.80011868 -2.98716855 0.61688757 -3.29771852 -2.98665094 0 -3.29766774
		 -3.035659552 0 -2.80007529 -2.64087582 0.99895585 -2.21431565 -2.63983345 0 -2.21399975
		 -2.49469113 0 -2.69247007 -2.34954882 0 -3.17094016 -2.35104179 0.61688757 -3.17139268
		 -2.49595881 0.99895585 -2.69285417 -2.027873993 0.99791157 -1.92491698 -2.026062489 0 -1.92370772
		 -1.74827731 0 -2.33944273 -1.47049224 0 -2.7551775 -1.47308671 0.61688757 -2.75690937
		 -1.75048041 0.99791157 -2.3409133 -1.38773513 0 -1.28538048 -1.38975418 0.99651933 -1.28839707
		 -0.97445571 0.99651933 -1.56683421 -0.55915725 0.61688757 -1.84527123 -0.55626553 0 -1.84095073
		 -0.9720003 0 -1.56316566 -1.04327178 0.99512702 -0.45634887 -1.042274833 0 -0.45136559
		 -0.55188215 0 -0.54891074 -0.061489519 0 -0.64645594 -0.062917344 0.61688757 -0.65359312
		 -0.55309451 0.99512702 -0.55497098 -1.097443104 0 -0.67160952 -1.098817587 0.99547505 -0.67612392
		 -0.62064439 0.99547505 -0.82224196 -0.14247124 0.61688757 -0.96835989 -0.14050271 0 -0.96189421
		 -0.61897284 0 -0.8167519 -1.0095000267 0.99477899 -0.23219295 -1.0089600086 0 -0.22677477
		 -0.5113675 0 -0.27578336 -0.013775171 0 -0.32479191 -0.014548689 0.61688757 -0.33255196
		 -0.51202434 0.99477899 -0.28237247 -1.27289438 0.99617124 -1.094154477 -1.27100897 0 -1.090634704
		 -0.83004832 0 -1.32633305 -0.38908768 0 -1.56203139 -0.39178789 0.61688757 -1.56707275
		 -0.83234107 0.99617124 -1.33061361 -1.5229876 0 -1.46774733 -1.52506196 0.99686742 -1.47027135
		 -1.13900506 0.99686742 -1.78801346 -0.75294811 0.61688757 -2.10575557 -0.74997711 0 -2.10214067
		 -1.13648236 0 -1.78494406 -1.84566069 0.99756348 -1.79006624 -1.84369552 0 -1.78845525
		 -1.52649879 0 -2.17496061 -1.20930219 0 -2.56146574 -1.21211672 0.61688757 -2.56377292
		 -1.5288887 0.99756348 -2.1769197 -2.22080851 0 -2.040433884 -2.22240949 0.99825966 -2.041288853
		 -1.98705697 0.99825966 -2.48243427 -1.75170469 0.61688757 -2.92357969 -1.7494117 0 -2.92235541
		 -1.98511004 0 -2.48139477;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 1 4 1 2 5 0 3 72 0 4 77 1 5 76 0 6 9 0 8 11 0 9 84 0 10 89 1 11 88 0 12 13 0
		 13 14 0 15 16 0 16 17 0 6 90 0 7 95 1 8 94 0 12 15 0 13 16 1 14 17 0 15 36 0 16 41 1
		 17 40 0 18 78 0 19 66 0 20 71 1 21 70 0 22 82 0 23 83 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 42 0 25 96 0 26 101 1 27 100 0 28 46 0 29 47 1 24 25 1 25 26 1
		 26 27 1 27 28 1 28 29 1 29 24 1 30 43 0 31 37 0 32 38 1 33 39 0 34 45 0 35 44 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 30 1 36 30 0 37 12 0 38 13 1 39 14 0 40 34 0 41 35 1
		 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 31 0 43 25 0 44 26 1 45 27 0 46 33 0
		 47 32 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 97 0 49 91 0 50 92 1 51 93 0
		 52 99 0 53 98 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 79 0 55 85 0 56 86 1
		 57 87 0 58 81 0 59 80 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 67 0 61 73 0
		 62 74 1 63 75 0 64 69 0 65 68 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 61 0
		 67 18 0 68 23 1 69 22 0 70 63 0 71 62 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1
		 72 60 0 73 0 0 74 1 1 75 2 0 76 64 0 77 65 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 72 1 78 55 0 79 19 0 80 20 1 81 21 0 82 57 0 83 56 1 78 79 1 79 80 1 80 81 1 81 82 1
		 82 83 1 83 78 1 84 54 0 85 6 0;
	setAttr ".ed[166:199]" 86 7 1 87 8 0 88 58 0 89 59 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1 90 48 0 91 9 0 92 10 1 93 11 0 94 52 0 95 53 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 90 1 96 49 0 97 24 0 98 29 1 99 28 0 100 51 0 101 50 1
		 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 96 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 8 2 -10 -1
		mu 0 4 12 13 14 15
		f 4 9 3 -11 -2
		mu 0 4 15 14 11 10
		f 4 11 -152 -13 -3
		mu 0 4 3 103 109 2
		f 4 12 -151 -14 -4
		mu 0 4 2 109 108 5
		f 4 141 0 -143 -148
		mu 0 4 105 16 1 106
		f 4 142 1 -144 -149
		mu 0 4 106 1 4 107
		f 4 10 13 -150 143
		mu 0 4 4 5 108 107
		f 4 -12 -9 -142 -147
		mu 0 4 103 3 0 104
		f 4 23 -188 -25 -5
		mu 0 4 20 124 130 21
		f 4 24 -187 -26 -6
		mu 0 4 21 130 129 24
		f 4 26 21 -28 -20
		mu 0 4 26 29 28 27
		f 4 27 22 -29 -21
		mu 0 4 27 28 31 30
		f 4 177 6 -179 -184
		mu 0 4 126 35 34 127
		f 4 178 7 -180 -185
		mu 0 4 127 34 37 128
		f 4 -16 25 -186 179
		mu 0 4 37 24 129 128
		f 4 -24 14 -178 -183
		mu 0 4 124 20 39 125
		f 4 -15 -166 -171 -17
		mu 0 4 18 17 119 117
		f 4 16 -176 -18 -7
		mu 0 4 8 118 123 7
		f 4 17 -175 -19 -8
		mu 0 4 7 123 122 9
		f 4 167 15 18 -174
		mu 0 4 121 6 9 122
		f 4 166 5 -168 -173
		mu 0 4 120 19 6 121
		f 4 165 4 -167 -172
		mu 0 4 119 17 19 120
		f 4 -27 -70 -75 -30
		mu 0 4 38 23 63 61
		f 4 29 -80 -31 -22
		mu 0 4 32 62 67 33
		f 4 30 -79 -32 -23
		mu 0 4 33 67 66 36
		f 4 71 28 31 -78
		mu 0 4 65 25 36 66
		f 4 70 20 -72 -77
		mu 0 4 64 22 25 65
		f 4 69 19 -71 -76
		mu 0 4 63 23 22 64
		f 4 -45 50 -82 -87
		mu 0 4 68 47 48 69
		f 4 44 -92 -50 55
		mu 0 4 47 68 74 53
		f 4 49 -91 -49 54
		mu 0 4 53 74 73 52
		f 4 48 -90 83 53
		mu 0 4 52 73 72 51
		f 4 82 52 -84 -89
		mu 0 4 71 50 51 72
		f 4 81 51 -83 -88
		mu 0 4 70 49 50 71
		f 4 -58 -63 -69 74
		mu 0 4 63 56 54 61
		f 4 57 75 -59 -64
		mu 0 4 56 63 64 57
		f 4 58 76 -60 -65
		mu 0 4 57 64 65 58
		f 4 59 77 72 -66
		mu 0 4 58 65 66 59
		f 4 73 -67 -73 78
		mu 0 4 67 60 59 66
		f 4 68 -68 -74 79
		mu 0 4 62 55 60 67
		f 4 -81 86 -57 62
		mu 0 4 56 68 69 54
		f 4 56 87 -62 67
		mu 0 4 55 70 71 60
		f 4 61 88 -61 66
		mu 0 4 60 71 72 59
		f 4 84 65 60 89
		mu 0 4 73 58 59 72
		f 4 85 64 -85 90
		mu 0 4 74 57 58 73
		f 4 80 63 -86 91
		mu 0 4 68 56 57 74
		f 4 -190 -195 -46 -51
		mu 0 4 47 133 131 48
		f 4 45 -200 -47 -52
		mu 0 4 49 132 137 50
		f 4 46 -199 -48 -53
		mu 0 4 50 137 136 51
		f 4 191 -54 47 -198
		mu 0 4 135 52 51 136
		f 4 190 -55 -192 -197
		mu 0 4 134 53 52 135
		f 4 189 -56 -191 -196
		mu 0 4 133 47 53 134
		f 4 -33 38 -154 -159
		mu 0 4 110 40 41 111
		f 4 32 -164 -38 43
		mu 0 4 40 110 116 46
		f 4 37 -163 -37 42
		mu 0 4 46 116 115 45
		f 4 36 -162 155 41
		mu 0 4 45 115 114 44
		f 4 154 40 -156 -161
		mu 0 4 113 43 44 114
		f 4 153 39 -155 -160
		mu 0 4 112 42 43 113
		f 4 -130 -135 -34 -39
		mu 0 4 40 98 96 41
		f 4 33 -140 -35 -40
		mu 0 4 42 97 102 43
		f 4 34 -139 -36 -41
		mu 0 4 43 102 101 44
		f 4 131 -42 35 -138
		mu 0 4 100 45 44 101
		f 4 130 -43 -132 -137
		mu 0 4 99 46 45 100
		f 4 129 -44 -131 -136
		mu 0 4 98 40 46 99
		f 4 -117 122 -129 134
		mu 0 4 98 89 90 96
		f 4 116 135 -122 127
		mu 0 4 89 98 99 95
		f 4 121 136 -121 126
		mu 0 4 95 99 100 94
		f 4 120 137 132 125
		mu 0 4 94 100 101 93
		f 4 133 124 -133 138
		mu 0 4 102 92 93 101
		f 4 128 123 -134 139
		mu 0 4 97 91 92 102
		f 4 -141 146 -118 -123
		mu 0 4 89 103 104 90
		f 4 117 147 -119 -124
		mu 0 4 91 105 106 92
		f 4 118 148 -120 -125
		mu 0 4 92 106 107 93
		f 4 144 -126 119 149
		mu 0 4 108 94 93 107
		f 4 145 -127 -145 150
		mu 0 4 109 95 94 108
		f 4 140 -128 -146 151
		mu 0 4 103 89 95 109
		f 4 -153 158 -105 110
		mu 0 4 84 110 111 82
		f 4 104 159 -110 115
		mu 0 4 83 112 113 88
		f 4 109 160 -109 114
		mu 0 4 88 113 114 87
		f 4 156 113 108 161
		mu 0 4 115 86 87 114
		f 4 157 112 -157 162
		mu 0 4 116 85 86 115
		f 4 152 111 -158 163
		mu 0 4 110 84 85 116
		f 4 -106 -111 -165 170
		mu 0 4 119 84 82 117
		f 4 105 171 -107 -112
		mu 0 4 84 119 120 85
		f 4 106 172 -108 -113
		mu 0 4 85 120 121 86
		f 4 107 173 168 -114
		mu 0 4 86 121 122 87
		f 4 169 -115 -169 174
		mu 0 4 123 88 87 122
		f 4 164 -116 -170 175
		mu 0 4 118 83 88 123
		f 4 -177 182 -94 -99
		mu 0 4 75 124 125 76
		f 4 93 183 -95 -100
		mu 0 4 77 126 127 78
		f 4 94 184 -96 -101
		mu 0 4 78 127 128 79
		f 4 180 -102 95 185
		mu 0 4 129 80 79 128
		f 4 181 -103 -181 186
		mu 0 4 130 81 80 129
		f 4 176 -104 -182 187
		mu 0 4 124 75 81 130
		f 4 -93 98 -189 194
		mu 0 4 133 75 76 131
		f 4 92 195 -98 103
		mu 0 4 75 133 134 81
		f 4 97 196 -97 102
		mu 0 4 81 134 135 80
		f 4 96 197 192 101
		mu 0 4 80 135 136 79
		f 4 193 100 -193 198
		mu 0 4 137 78 79 136
		f 4 188 99 -194 199
		mu 0 4 132 77 78 137;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "Wall10ShapeOrig" -p "Wall10";
	rename -uid "AFDC2321-4EE1-264F-769C-BA87349F2BC2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 138 ".uvst[0].uvsp[0:137]" -type "float2" 0.022932112 0.5099014
		 0.53475714 0.51130462 0.25923276 0.51054925 0.18046588 0.51033324 0.45599017 0.51108867
		 0.35793224 0.51081985 0.35663661 0.98342091 0.53346145 0.98390573 0.61222839 0.98412162
		 0.45469454 0.98368979 0.83951747 0.76874912 0.83975512 0.85417926 0.70227069 0.76913083
		 0.70265245 0.90637761 0.77127588 0.9061867 0.77089405 0.76893997 0.61352396 0.5115205
		 0.17917031 0.98293436 0.021636546 0.98250246 0.25793713 0.98315036 0.18046588 0.01322937
		 0.25923276 0.013445377 0.25793713 0.48604652 0.17917031 0.48583049 0.35793224 0.013715982
		 0.35663661 0.48631704 0.80213892 0.20444787 0.73570728 0.20591086 0.73278141 0.073047452
		 0.79921305 0.071584508 0.66817099 0.15721211 0.66634971 0.074510425 0.61222839 0.48701775
		 0.53346145 0.48680186 0.53475714 0.014200747 0.61352396 0.014416665 0.45469454 0.48658592
		 0.45599017 0.013984799 0.021636546 0.48539862 0.022932112 0.012797564 0.17981809
		 0.74663377 0.022284329 0.74620193 0.61287618 0.74782109 0.53410929 0.7476052 0.45534235
		 0.7473892 0.35728443 0.74712038 0.25858495 0.74684978 0.17981809 0.24952993 0.022284329
		 0.24909809 0.61287618 0.25071722 0.53410929 0.2505013 0.45534235 0.25028536 0.35728443
		 0.25001651 0.25858495 0.24974595 0.021960437 0.36724836 0.61255229 0.36886749 0.1794942
		 0.36768019 0.25826102 0.36789623 0.35696054 0.36816677 0.45501846 0.36843562 0.53378534
		 0.36865157 0.021798491 0.42632347 0.61239034 0.42794263 0.17933226 0.42675534 0.25809908
		 0.42697138 0.35679859 0.42724192 0.45485651 0.42751077 0.5336234 0.42772672 0.17965615
		 0.30860507 0.022122383 0.30817324 0.61271423 0.30979234 0.53394735 0.30957645 0.45518041
		 0.3093605 0.35712248 0.30909163 0.25842297 0.30882108 0.18014199 0.13137965 0.022608221
		 0.13094783 0.61320007 0.13256694 0.53443325 0.13235103 0.45566624 0.13213508 0.35760832
		 0.13186625 0.25890887 0.13159567 0.021960437 0.86435223 0.61255229 0.86597133 0.1794942
		 0.86478406 0.25826102 0.86500007 0.35696054 0.86527061 0.45501846 0.86553949 0.53378534
		 0.86575544 0.18014199 0.62848353 0.022608221 0.62805164 0.61320007 0.6296708 0.53443325
		 0.62945491 0.45566624 0.62923896 0.35760832 0.62897015 0.25890887 0.62869954 0.022446275
		 0.68712676 0.61303812 0.68874598 0.17998004 0.68755865 0.25874692 0.68777466 0.35744637
		 0.68804526 0.4555043 0.68831408 0.53427124 0.68853009 0.18030393 0.56940842 0.022770166
		 0.56897652 0.61336201 0.57059562 0.53459519 0.57037973 0.45582819 0.57016385 0.35777026
		 0.56989503 0.25907081 0.56962442 0.17965615 0.80570889 0.022122383 0.80527711 0.61271423
		 0.80689621 0.53394735 0.80668032 0.45518041 0.80646431 0.35712248 0.8061955 0.25842297
		 0.80592489 0.021798491 0.92342734 0.61239034 0.92504644 0.17933226 0.92385924 0.25809908
		 0.92407525 0.35679859 0.92434573 0.45485651 0.92461467 0.5336234 0.92483056 0.18030393
		 0.07230451 0.022770166 0.071872696 0.61336201 0.073491804 0.53459519 0.073275886
		 0.45582819 0.073059939 0.35777026 0.072791114 0.25907081 0.072520524 0.022446275
		 0.19002296 0.61303812 0.19164208 0.17998004 0.19045478 0.25874692 0.19067082 0.35744637
		 0.19094138 0.4555043 0.19121021 0.53427124 0.19142616;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".vt[0:101]"  -0.99781924 0 0 -0.49781916 0 0 0.0021808334 0 0
		 -0.99781924 0.9944309 -0.0095735788 -0.49781916 0.9944309 -0.0095735788 0.0021808334 0.61688757 -0.0095735788
		 -0.99781924 0.99721545 -3 -0.49781916 0.99721545 -3 0.0021808334 0.61688757 -3 -0.99781924 0 -2.99521303
		 -0.49781916 0 -2.99521303 0.0021808334 0 -2.99521303 -0.99781924 1 -5.99042606 -0.49781916 1 -5.99042606
		 0.0021808334 0.61688757 -5.99042606 -0.99781924 0 -5.99042606 -0.49781916 0 -5.99042606
		 0.0021808334 0 -5.99042606 -0.99781924 0.99582314 -1.50478673 -0.99781924 0 -1.49760652
		 -0.49781916 0 -1.49760652 0.0021808334 0 -1.49760652 0.0021808334 0.61688757 -1.50478673
		 -0.49781916 0.99582314 -1.50478673 -0.99781924 0.99860775 -4.49521303 -0.99781924 0 -4.49281979
		 -0.49781916 0 -4.49281979 0.0021808334 0 -4.49281979 0.0021808334 0.61688757 -4.49521303
		 -0.49781916 0.99860775 -4.49521303 -0.99781924 0 -5.24162292 -0.99781924 0.99930388 -5.24281979
		 -0.49781916 0.99930388 -5.24281979 0.0021808334 0.61688757 -5.24281979 0.0021808334 0 -5.24162292
		 -0.49781916 0 -5.24162292 -0.99781924 0 -5.61602449 -0.99781924 0.99965191 -5.61662292
		 -0.49781916 0.99965191 -5.61662292 0.0021808334 0.61688757 -5.61662292 0.0021808334 0 -5.61602449
		 -0.49781916 0 -5.61602449 -0.99781924 0.99895585 -4.86901665 -0.99781924 0 -4.86722136
		 -0.49781916 0 -4.86722136 0.0021808334 0 -4.86722136 0.0021808334 0.61688757 -4.86901665
		 -0.49781916 0.99895585 -4.86901665 -0.99781924 0.99791157 -3.74760652 -0.99781924 0 -3.74401641
		 -0.49781916 0 -3.74401641 0.0021808334 0 -3.74401641 0.0021808334 0.61688757 -3.74760652
		 -0.49781916 0.99791157 -3.74760652 -0.99781924 0 -2.24640989 -0.99781924 0.99651933 -2.25239325
		 -0.49781916 0.99651933 -2.25239325 0.0021808334 0.61688757 -2.25239325 0.0021808334 0 -2.24640989
		 -0.49781916 0 -2.24640989 -0.99781924 0.99512702 -0.75718015 -0.99781924 0 -0.74880326
		 -0.49781916 0 -0.74880326 0.0021808334 0 -0.74880326 0.0021808334 0.61688757 -0.75718015
		 -0.49781916 0.99512702 -0.75718015 -0.99781924 0 -1.12320495 -0.99781924 0.99547505 -1.13098347
		 -0.49781916 0.99547505 -1.13098347 0.0021808334 0.61688757 -1.13098347 0.0021808334 0 -1.12320495
		 -0.49781916 0 -1.12320495 -0.99781924 0.99477899 -0.38337687 -0.99781924 0 -0.37440163
		 -0.49781916 0 -0.37440163 0.0021808334 0 -0.37440163 0.0021808334 0.61688757 -0.38337687
		 -0.49781916 0.99477899 -0.38337687 -0.99781924 0.99617124 -1.87858999 -0.99781924 0 -1.8720082
		 -0.49781916 0 -1.8720082 0.0021808334 0 -1.8720082 0.0021808334 0.61688757 -1.87858999
		 -0.49781916 0.99617124 -1.87858999 -0.99781924 0 -2.62081146 -0.99781924 0.99686742 -2.62619662
		 -0.49781916 0.99686742 -2.62619662 0.0021808334 0.61688757 -2.62619662 0.0021808334 0 -2.62081146
		 -0.49781916 0 -2.62081146 -0.99781924 0.99756348 -3.37380314 -0.99781924 0 -3.3696146
		 -0.49781916 0 -3.3696146 0.0021808334 0 -3.3696146 0.0021808334 0.61688757 -3.37380314
		 -0.49781916 0.99756348 -3.37380314 -0.99781924 0 -4.11841822 -0.99781924 0.99825966 -4.12140989
		 -0.49781916 0.99825966 -4.12140989 0.0021808334 0.61688757 -4.12140989 0.0021808334 0 -4.11841822
		 -0.49781916 0 -4.11841822;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 3 4 0 4 5 0 6 7 0 7 8 0 9 10 0 10 11 0
		 0 3 0 1 4 1 2 5 0 3 72 0 4 77 1 5 76 0 6 9 0 8 11 0 9 84 0 10 89 1 11 88 0 12 13 0
		 13 14 0 15 16 0 16 17 0 6 90 0 7 95 1 8 94 0 12 15 0 13 16 1 14 17 0 15 36 0 16 41 1
		 17 40 0 18 78 0 19 66 0 20 71 1 21 70 0 22 82 0 23 83 1 18 19 1 19 20 1 20 21 1 21 22 1
		 22 23 1 23 18 1 24 42 0 25 96 0 26 101 1 27 100 0 28 46 0 29 47 1 24 25 1 25 26 1
		 26 27 1 27 28 1 28 29 1 29 24 1 30 43 0 31 37 0 32 38 1 33 39 0 34 45 0 35 44 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 30 1 36 30 0 37 12 0 38 13 1 39 14 0 40 34 0 41 35 1
		 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 36 1 42 31 0 43 25 0 44 26 1 45 27 0 46 33 0
		 47 32 1 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 42 1 48 97 0 49 91 0 50 92 1 51 93 0
		 52 99 0 53 98 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1 53 48 1 54 79 0 55 85 0 56 86 1
		 57 87 0 58 81 0 59 80 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 54 1 60 67 0 61 73 0
		 62 74 1 63 75 0 64 69 0 65 68 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 60 1 66 61 0
		 67 18 0 68 23 1 69 22 0 70 63 0 71 62 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 66 1
		 72 60 0 73 0 0 74 1 1 75 2 0 76 64 0 77 65 1 72 73 1 73 74 1 74 75 1 75 76 1 76 77 1
		 77 72 1 78 55 0 79 19 0 80 20 1 81 21 0 82 57 0 83 56 1 78 79 1 79 80 1 80 81 1 81 82 1
		 82 83 1 83 78 1 84 54 0 85 6 0;
	setAttr ".ed[166:199]" 86 7 1 87 8 0 88 58 0 89 59 1 84 85 1 85 86 1 86 87 1
		 87 88 1 88 89 1 89 84 1 90 48 0 91 9 0 92 10 1 93 11 0 94 52 0 95 53 1 90 91 1 91 92 1
		 92 93 1 93 94 1 94 95 1 95 90 1 96 49 0 97 24 0 98 29 1 99 28 0 100 51 0 101 50 1
		 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 96 1;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 0 9 -3 -9
		mu 0 4 12 15 14 13
		f 4 1 10 -4 -10
		mu 0 4 15 10 11 14
		f 4 2 12 151 -12
		mu 0 4 3 2 109 103
		f 4 3 13 150 -13
		mu 0 4 2 5 108 109
		f 4 147 142 -1 -142
		mu 0 4 105 106 1 16
		f 4 148 143 -2 -143
		mu 0 4 106 107 4 1
		f 4 -144 149 -14 -11
		mu 0 4 4 107 108 5
		f 4 146 141 8 11
		mu 0 4 103 104 0 3
		f 4 4 24 187 -24
		mu 0 4 20 21 130 124
		f 4 5 25 186 -25
		mu 0 4 21 24 129 130
		f 4 19 27 -22 -27
		mu 0 4 26 27 28 29
		f 4 20 28 -23 -28
		mu 0 4 27 30 31 28
		f 4 183 178 -7 -178
		mu 0 4 126 127 34 35
		f 4 184 179 -8 -179
		mu 0 4 127 128 37 34
		f 4 -180 185 -26 15
		mu 0 4 37 128 129 24
		f 4 182 177 -15 23
		mu 0 4 124 125 39 20
		f 4 16 170 165 14
		mu 0 4 18 117 119 17
		f 4 6 17 175 -17
		mu 0 4 8 7 123 118
		f 4 7 18 174 -18
		mu 0 4 7 9 122 123
		f 4 173 -19 -16 -168
		mu 0 4 121 122 9 6
		f 4 172 167 -6 -167
		mu 0 4 120 121 6 19
		f 4 171 166 -5 -166
		mu 0 4 119 120 19 17
		f 4 29 74 69 26
		mu 0 4 38 61 63 23
		f 4 21 30 79 -30
		mu 0 4 32 33 67 62
		f 4 22 31 78 -31
		mu 0 4 33 36 66 67
		f 4 77 -32 -29 -72
		mu 0 4 65 66 36 25
		f 4 76 71 -21 -71
		mu 0 4 64 65 25 22
		f 4 75 70 -20 -70
		mu 0 4 63 64 22 23
		f 4 86 81 -51 44
		mu 0 4 68 69 48 47
		f 4 -56 49 91 -45
		mu 0 4 47 53 74 68
		f 4 -55 48 90 -50
		mu 0 4 53 52 73 74
		f 4 -54 -84 89 -49
		mu 0 4 52 51 72 73
		f 4 88 83 -53 -83
		mu 0 4 71 72 51 50
		f 4 87 82 -52 -82
		mu 0 4 70 71 50 49
		f 4 -75 68 62 57
		mu 0 4 63 61 54 56
		f 4 63 58 -76 -58
		mu 0 4 56 57 64 63
		f 4 64 59 -77 -59
		mu 0 4 57 58 65 64
		f 4 65 -73 -78 -60
		mu 0 4 58 59 66 65
		f 4 -79 72 66 -74
		mu 0 4 67 66 59 60
		f 4 -80 73 67 -69
		mu 0 4 62 67 60 55
		f 4 -63 56 -87 80
		mu 0 4 56 54 69 68
		f 4 -68 61 -88 -57
		mu 0 4 55 60 71 70
		f 4 -67 60 -89 -62
		mu 0 4 60 59 72 71
		f 4 -90 -61 -66 -85
		mu 0 4 73 72 59 58
		f 4 -91 84 -65 -86
		mu 0 4 74 73 58 57
		f 4 -92 85 -64 -81
		mu 0 4 68 74 57 56
		f 4 50 45 194 189
		mu 0 4 47 48 131 133
		f 4 51 46 199 -46
		mu 0 4 49 50 137 132
		f 4 52 47 198 -47
		mu 0 4 50 51 136 137
		f 4 197 -48 53 -192
		mu 0 4 135 136 51 52
		f 4 196 191 54 -191
		mu 0 4 134 135 52 53
		f 4 195 190 55 -190
		mu 0 4 133 134 53 47
		f 4 158 153 -39 32
		mu 0 4 110 111 41 40
		f 4 -44 37 163 -33
		mu 0 4 40 46 116 110
		f 4 -43 36 162 -38
		mu 0 4 46 45 115 116
		f 4 -42 -156 161 -37
		mu 0 4 45 44 114 115
		f 4 160 155 -41 -155
		mu 0 4 113 114 44 43
		f 4 159 154 -40 -154
		mu 0 4 112 113 43 42
		f 4 38 33 134 129
		mu 0 4 40 41 96 98
		f 4 39 34 139 -34
		mu 0 4 42 43 102 97
		f 4 40 35 138 -35
		mu 0 4 43 44 101 102
		f 4 137 -36 41 -132
		mu 0 4 100 101 44 45
		f 4 136 131 42 -131
		mu 0 4 99 100 45 46
		f 4 135 130 43 -130
		mu 0 4 98 99 46 40
		f 4 -135 128 -123 116
		mu 0 4 98 96 90 89
		f 4 -128 121 -136 -117
		mu 0 4 89 95 99 98
		f 4 -127 120 -137 -122
		mu 0 4 95 94 100 99
		f 4 -126 -133 -138 -121
		mu 0 4 94 93 101 100
		f 4 -139 132 -125 -134
		mu 0 4 102 101 93 92
		f 4 -140 133 -124 -129
		mu 0 4 97 102 92 91
		f 4 122 117 -147 140
		mu 0 4 89 90 104 103
		f 4 123 118 -148 -118
		mu 0 4 91 92 106 105
		f 4 124 119 -149 -119
		mu 0 4 92 93 107 106
		f 4 -150 -120 125 -145
		mu 0 4 108 107 93 94
		f 4 -151 144 126 -146
		mu 0 4 109 108 94 95
		f 4 -152 145 127 -141
		mu 0 4 103 109 95 89
		f 4 -111 104 -159 152
		mu 0 4 84 82 111 110
		f 4 -116 109 -160 -105
		mu 0 4 83 88 113 112
		f 4 -115 108 -161 -110
		mu 0 4 88 87 114 113
		f 4 -162 -109 -114 -157
		mu 0 4 115 114 87 86
		f 4 -163 156 -113 -158
		mu 0 4 116 115 86 85
		f 4 -164 157 -112 -153
		mu 0 4 110 116 85 84
		f 4 -171 164 110 105
		mu 0 4 119 117 82 84
		f 4 111 106 -172 -106
		mu 0 4 84 85 120 119
		f 4 112 107 -173 -107
		mu 0 4 85 86 121 120
		f 4 113 -169 -174 -108
		mu 0 4 86 87 122 121
		f 4 -175 168 114 -170
		mu 0 4 123 122 87 88
		f 4 -176 169 115 -165
		mu 0 4 118 123 88 83
		f 4 98 93 -183 176
		mu 0 4 75 76 125 124
		f 4 99 94 -184 -94
		mu 0 4 77 78 127 126
		f 4 100 95 -185 -95
		mu 0 4 78 79 128 127
		f 4 -186 -96 101 -181
		mu 0 4 129 128 79 80
		f 4 -187 180 102 -182
		mu 0 4 130 129 80 81
		f 4 -188 181 103 -177
		mu 0 4 124 130 81 75
		f 4 -195 188 -99 92
		mu 0 4 133 131 76 75
		f 4 -104 97 -196 -93
		mu 0 4 75 81 134 133
		f 4 -103 96 -197 -98
		mu 0 4 81 80 135 134
		f 4 -102 -193 -198 -97
		mu 0 4 80 79 136 135
		f 4 -199 192 -101 -194
		mu 0 4 137 136 79 78
		f 4 -200 193 -100 -189
		mu 0 4 132 137 78 77;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5797C611-45BA-A39C-60FC-FC855A3F0119";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2B9037DA-4C05-0243-39DE-2C98FF5F8166";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "77EDF133-4040-67F0-F7D5-029C03878E77";
createNode displayLayerManager -n "layerManager";
	rename -uid "57062FAB-4162-6842-D4FB-F0A79E6706BC";
createNode displayLayer -n "defaultLayer";
	rename -uid "1C31CC0F-4FAD-64E1-74BC-3CA6E26C8D82";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8CDD501E-49F3-78D7-0C16-34857F3B4051";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E587C362-49A4-DC52-A18E-FEAF746BFB7E";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D02FBE00-4B56-8EF1-48E6-19A011198D94";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 344\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 344\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 344\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1318\n            -height 732\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1318\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1318\\n    -height 732\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 3 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "95C894D5-48EB-8BF6-A109-3C9D02BA9F8C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 100 -ast 1 -aet 100 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "3420E2FF-41DA-D9B8-257C-C280F3AB82ED";
	setAttr ".d" 3;
	setAttr ".sw" 2;
	setAttr ".cuv" 4;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "FCB4221F-4862-A9DE-89B1-8994CD225267";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 0.5 -1.5 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5002211332321167 0.49263012409210205 -1.5009578466415405 ;
	setAttr ".ro" -type "double3" 172.40274255497317 -12.999999805235166 179.9999998839352 ;
	setAttr ".ps" -type "double2" 1.6492232206188049 1.3925534533947004 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" -1.8946084976196289 0.10412349551916122 0.22298085689544678 0.22297640144824982
		 0 3.470329761505127 -0.1322115957736969 -0.13220894336700439 0.43740484118461609 0.45100840926170349 0.96583622694015503 0.9658169150352478
		 -0.577492356300354 -1.0334357023239136 7.4168491363525391 7.61669921875;
	setAttr ".prgt" 1318;
	setAttr ".ptop" 732;
createNode polyTweak -n "polyTweak1";
	rename -uid "0270FF33-4B41-F4C4-2016-A68FA4C7DC3F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[5]" -type "float3" 0 -0.37754333 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.37754333 0 ;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "EEB36849-4C44-033B-E0C3-E7ABE7882481";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[8]" "e[10]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "7E51BF3C-4784-4949-38D6-6DBD7CD2DB13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "6E3E22C0-4EE7-8CC8-9E16-7EB713100A05";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:7]" "e[14]" "e[16]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "92ACCF52-4F8B-A8A9-4706-3692C8495C20";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[0:25]" -type "float2" -0.97156054 -0.36449319 -0.24091655
		 -0.37178719 -0.51794124 -0.8139807 -0.81953412 -0.81211871 -0.10727045 -0.38044572
		 -0.20392224 -0.64969653 0.40125313 -0.53389317 0.10822716 -0.52965987 0.35663661
		 0.0099622291 0.18874818 0.46350688 -0.08162725 0.48701775 0.4426274 0.4410966 0.27625686
		 -0.1227853 0.27790064 -0.30633715 -0.29222196 -0.1052638 -0.29734755 -0.41607434
		 -0.005898118 -0.41834325 -0.0047796369 -0.11415187 -0.38096869 -0.36287409 0.66817099
		 -0.3191427 0.65428257 0.029021116 -0.51474148 -0.24827725 0.10535744 0.071584508
		 -0.6722191 0.48539862 0.38806814 0.049752474 -0.076517001 -0.25375751;
createNode polyUnite -n "polyUnite2";
	rename -uid "A4748B79-4F3C-B0A0-14E2-D2B8D89FB509";
createNode groupId -n "groupId1";
	rename -uid "E1E3316B-467F-48C6-F8A6-4489F99E4A80";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "6050C478-455B-A269-7604-ADA3DCF1E3BC";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.53367534903632652 0.49443091162795172 -1.5095736018396344 1;
createNode polyUnite -n "polyUnite3";
	rename -uid "E169874A-4C66-090C-FE1B-F383C352DDD4";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId2";
	rename -uid "0B723CFC-4B53-7A67-93D9-8BA9F81C566F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "178FF96D-4B69-48DA-BABE-DF8D7264125C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "055DA9F6-4672-D31A-A50F-95BDD656D0B0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "4B321816-4605-BFA5-95AB-508949BF0166";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "2D3C548F-460D-B147-677C-1983497A7512";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "B2371350-4076-F39B-7765-7C8457C8FB65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "0F4F5384-422A-BA7C-125E-64A568D59050";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "211381E3-496C-6363-2293-23A245DF7BCB";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "D13A03B5-4894-250B-BAB0-F8BE10A2EFA2";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "812C595D-404C-02E9-8D64-4BBEA9679998";
	setAttr ".dc" -type "componentList" 1 "f[12]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "4E82B6ED-42EF-2AAB-F7AD-689E15F6D543";
	setAttr ".ics" -type "componentList" 2 "vtx[0:5]" "vtx[18:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "863B8731-4FE3-9340-6FE1-9CA9176F0B24";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -1 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.50243044 ;
	setAttr ".tk[3]" -type "float3" 0 0 -1 ;
	setAttr ".tk[4]" -type "float3" 0 0 -0.50327677 ;
	setAttr ".tk[18]" -type "float3" -0.99999976 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.49910408 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.99999976 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.5022127 0 0 ;
createNode polyPlanarProj -n "polyPlanarProj2";
	rename -uid "25CF1EF1-469B-0488-5892-D09C8BC04ED0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.5 0.80844378471374512 -1.5000000055879359 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2.9999999888241282 2.9999999888241282 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "C7A15FF3-40E0-8010-C579-4881B72A9F46";
	setAttr ".uopa" yes;
	setAttr -s 44 ".uvtk[0:43]" -type "float2" -0.00064778328 0.00021590292
		 -0.00064784288 -0.00013442338 0.022214457 0.031408623 -0.00064778328 -0.00021590292
		 -0.00064781308 8.1524253e-05 -0.00064781308 0.0003503412 -0.0014629364 -0.000731498
		 -0.0014629364 0.000731498 0.00064781308 0.0003503561 0.00064784288 -0.00013446808
		 0.00064778328 -0.0003503561 0.00064781308 8.1479549e-05 -0.00064778328 -0.0003503412
		 -0.00091063976 0 0.00091063976 -0.0014629588 0.00064778328 -0.00021594763 0.0014629364
		 0.0014629588 0.00064778328 0.00021591783 0.0014629364 1.4901161e-08 -0.23310937 0.28570753
		 0.00019091368 -0.00019085407 0.00019091368 0 -0.00019091368 9.5486641e-05 -0.00019085407
		 -9.5486641e-05 0.00011885166 0.00019085407 -0.00011879206 0 -0.00064778328 0.00037771463
		 -0.00064781308 0.0001617074 0.00064781308 0.0001617074 0.00064778328 0.00037777424
		 -0.00064781308 -0.00010889769 0.00064781308 -0.00010883808 0.00064778328 -0.00080955029
		 0.00064784288 -0.00059366226 -0.00064784288 -0.00059360266 -0.00064778328 -0.00080955029
		 0.00064781308 -0.00037765503 -0.00064781308 -0.00037771463 0.00064778328 0.00080960989
		 -0.00064778328 0.00080955029 -0.23296015 -0.9891308 0.022214398 -0.9891308 -0.48805532
		 0.54167837 -0.48805532 -0.9891308;
createNode polyPlanarProj -n "polyPlanarProj3";
	rename -uid "00D4BCBC-4FE6-AFD2-DEB6-ADA25BE264AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -1.5000000651925802 0.80844378471374512 -0.50000000558793589 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 2.9999998696148396 2.9999998696148396 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "102AA636-44DB-3FEE-B2F1-19BF4A62D1C3";
	setAttr ".uopa" yes;
	setAttr -s 23 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 0.041374013 0.0015323713 ;
	setAttr ".uvtk[4]" -type "float2" 0.041374013 0.0015323713 ;
	setAttr ".uvtk[5]" -type "float2" 0.041374013 0.0015323713 ;
	setAttr ".uvtk[8]" -type "float2" 0.041374013 0.0015323713 ;
	setAttr ".uvtk[9]" -type "float2" 0.041374013 0.0015323713 ;
	setAttr ".uvtk[10]" -type "float2" 0.041374013 0.0015323713 ;
	setAttr ".uvtk[11]" -type "float2" 0.041374013 0.0015323713 ;
	setAttr ".uvtk[12]" -type "float2" 0.041374013 0.0015323713 ;
	setAttr ".uvtk[27]" -type "float2" 0.18112187 -0.14564818 ;
	setAttr ".uvtk[28]" -type "float2" 0.27167678 0.021018416 ;
	setAttr ".uvtk[30]" -type "float2" 0.041374035 -0.0030647563 ;
	setAttr ".uvtk[31]" -type "float2" 0.041374035 -0.0030647563 ;
	setAttr ".uvtk[32]" -type "float2" 0.041374005 -0.0030647563 ;
	setAttr ".uvtk[33]" -type "float2" 0.041374005 -0.0030647563 ;
	setAttr ".uvtk[34]" -type "float2" 0.041374005 -0.0030647563 ;
	setAttr ".uvtk[35]" -type "float2" 0.041374005 -0.0030647563 ;
	setAttr ".uvtk[36]" -type "float2" 0.041374035 -0.0030647563 ;
	setAttr ".uvtk[37]" -type "float2" 0.041374035 -0.0030647563 ;
	setAttr ".uvtk[44]" -type "float2" -0.56210262 0.47332761 ;
	setAttr ".uvtk[45]" -type "float2" -0.48554477 0.21657108 ;
	setAttr ".uvtk[46]" -type "float2" 0.36223158 0.18768504 ;
	setAttr ".uvtk[47]" -type "float2" -0.63776845 0.73101413 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "82D1BD05-466E-23F3-50A0-4D93EAFE2BDB";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.035856204629195254 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "09BDDD35-4938-72AB-25CD-6B980B0483DE";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.035856204629195254 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "B06D0D65-4999-BC4A-51FA-39B842E8C190";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.035856204629195254 0 -2.9904263981603654 1;
	setAttr ".am" yes;
createNode polyUnite -n "polyUnite4";
	rename -uid "E149DA1D-4786-5362-C3AC-01A555592C39";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId7";
	rename -uid "D23C8FB1-4824-97C2-27E4-2185612E193B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "6686D40D-4316-575B-9677-58A66BD65A6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId8";
	rename -uid "C1F17F65-4529-2717-7258-D7B6567FF948";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "361DB92B-488F-3A0A-8832-D89CCDB079CC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "BEED8598-4F98-C231-277E-B2B732099C57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:7]";
createNode groupId -n "groupId10";
	rename -uid "2BFCAC9B-409E-18E4-3137-54A4096E5001";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "86330A7A-47CE-38E4-F5AB-518382CA428F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "7CC5C7AC-406D-E35D-5160-71AB225C211E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "D5DDB3B4-4567-2354-0A0F-BC9A14519CE2";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySplit -n "polySplit1";
	rename -uid "24E0F7CB-49B9-E2E1-4571-3E965F1AEDAD";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483637 -2147483632 -2147483631 -2147483630 -2147483635 -2147483636 
		-2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "A7EB958B-4B8F-5B14-1EEB-ECB9B522934B";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483625 -2147483619 -2147483618 -2147483617 -2147483623 -2147483624 
		-2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "9705CCE1-4213-DE6F-3524-13B442BA6753";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483619 -2147483604 -2147483599 -2147483600 -2147483617 -2147483618 
		-2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "0307095E-4973-703D-3D66-968D3C4D7ED6";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483619 -2147483591 -2147483590 -2147483589 -2147483617 -2147483618 
		-2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "7653EFF1-4802-4F64-C29B-73A853372DD2";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483604 -2147483592 -2147483587 -2147483588 -2147483600 -2147483599 
		-2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "CEC0B3ED-43BF-569D-FF08-3E845016D46D";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483625 -2147483603 -2147483602 -2147483601 -2147483623 -2147483624 
		-2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "621E2E5C-4824-EDC7-0594-7892C5E1749E";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483632 -2147483616 -2147483611 -2147483612 -2147483630 -2147483631 
		-2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "3C71D315-4F5C-ED4F-A7AF-6FB9EC967F1F";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483637 -2147483615 -2147483614 -2147483613 -2147483635 -2147483636 
		-2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "D8E362E9-43A0-FD05-71A4-AD93FB555D7E";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483615 -2147483532 -2147483527 -2147483528 -2147483613 -2147483614 
		-2147483615;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "2CD078BB-4716-A20D-A15D-C0A0070E05AC";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483637 -2147483531 -2147483530 -2147483529 -2147483635 -2147483636 
		-2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "5EEAA7B9-46BE-352A-F9DA-79B293A7019C";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483616 -2147483544 -2147483539 -2147483540 -2147483612 -2147483611 
		-2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "480B6409-4FD4-D1D2-0794-27B98FACAEFB";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483632 -2147483543 -2147483542 -2147483541 -2147483630 -2147483631 
		-2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "45D3DE52-469E-0DB6-BC02-BF8ED078940A";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483625 -2147483555 -2147483554 -2147483553 -2147483623 -2147483624 
		-2147483625;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "7784AE25-4322-AD98-1343-BE914FD19206";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483603 -2147483556 -2147483551 -2147483552 -2147483601 -2147483602 
		-2147483603;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode nonLinear -n "bend1";
	rename -uid "40DEBEFB-489C-C5AF-738A-1BBD0777B4C5";
	addAttr -is true -ci true -k true -sn "cur" -ln "curvature" -smn -3.14159 -smx 
		3.14159 -at "doubleAngle";
	addAttr -is true -ci true -k true -sn "lb" -ln "lowBound" -dv -1 -max 0 -smn -10 
		-smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "hb" -ln "highBound" -dv 1 -min 0 -smn 0 -smx 
		10 -at "double";
	setAttr -k on ".cur" 45;
	setAttr -k on ".lb" 0;
	setAttr -k on ".hb" 3;
createNode groupId -n "groupId12";
	rename -uid "7D72F8AF-4477-C1FE-56B7-97ADBF938F95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "AA19AA93-492C-E03B-1C42-9B89EE62477B";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 13 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "transformGeometry1.og" "WallShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "WallShape.uvst[0].uvtw";
connectAttr "groupId1.id" "Outside_CornerShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_CornerShape.iog.og[0].gco";
connectAttr "groupId2.id" "Wall4Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "Wall4Shape.iog.og[1].gco";
connectAttr "groupId3.id" "Wall4Shape.ciog.cog[1].cgid";
connectAttr "groupId4.id" "Wall5Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "Wall5Shape.iog.og[1].gco";
connectAttr "groupId5.id" "Wall5Shape.ciog.cog[1].cgid";
connectAttr "polyTweakUV3.out" "Wall6Shape.i";
connectAttr "groupId6.id" "Wall6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall6Shape.iog.og[0].gco";
connectAttr "polyTweakUV3.uvtk[0]" "Wall6Shape.uvst[0].uvtw";
connectAttr "groupId7.id" "Wall7Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall7Shape.iog.og[0].gco";
connectAttr "groupParts2.og" "Wall7Shape.i";
connectAttr "groupId8.id" "Wall7Shape.ciog.cog[0].cgid";
connectAttr "groupId9.id" "Wall8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall8Shape.iog.og[0].gco";
connectAttr "groupParts3.og" "Wall8Shape.i";
connectAttr "groupId10.id" "Wall8Shape.ciog.cog[0].cgid";
connectAttr "bend1.og[0]" "Wall9Shape.i";
connectAttr "groupId11.id" "Wall9Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall9Shape.iog.og[0].gco";
connectAttr "polySplit14.out" "Wall9ShapeOrig.i";
connectAttr "bend1.msg" "bend1Handle.sml";
connectAttr "bend1.cur" "bend1HandleShape.cur";
connectAttr "bend1.lb" "bend1HandleShape.lb";
connectAttr "bend1.hb" "bend1HandleShape.hb";
connectAttr "groupId12.id" "Outside_BendShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Outside_BendShape.iog.og[0].gco";
connectAttr "groupId13.id" "Wall10Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "Wall10Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyPlanarProj1.ip";
connectAttr "WallShape.wm" "polyPlanarProj1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "transformGeometry1.ig";
connectAttr "Wall4Shape.o" "polyUnite3.ip[0]";
connectAttr "Wall5Shape.o" "polyUnite3.ip[1]";
connectAttr "Wall4Shape.wm" "polyUnite3.im[0]";
connectAttr "Wall5Shape.wm" "polyUnite3.im[1]";
connectAttr "polyUnite3.out" "groupParts1.ig";
connectAttr "groupId6.id" "groupParts1.gi";
connectAttr "groupParts1.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "Wall6Shape.wm" "polyMergeVert1.mp";
connectAttr "deleteComponent4.og" "polyTweak2.ip";
connectAttr "polyMergeVert1.out" "polyPlanarProj2.ip";
connectAttr "Wall6Shape.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyPlanarProj3.ip";
connectAttr "Wall6Shape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyTweakUV3.ip";
connectAttr "polySurfaceShape1.o" "polyMergeVert2.ip";
connectAttr "Wall7Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "Wall7Shape.wm" "polyMergeVert3.mp";
connectAttr "polySurfaceShape2.o" "polyMergeVert4.ip";
connectAttr "Wall8Shape.wm" "polyMergeVert4.mp";
connectAttr "Wall7Shape.o" "polyUnite4.ip[0]";
connectAttr "Wall8Shape.o" "polyUnite4.ip[1]";
connectAttr "Wall7Shape.wm" "polyUnite4.im[0]";
connectAttr "Wall8Shape.wm" "polyUnite4.im[1]";
connectAttr "polyMergeVert3.out" "groupParts2.ig";
connectAttr "groupId7.id" "groupParts2.gi";
connectAttr "polyMergeVert4.out" "groupParts3.ig";
connectAttr "groupId9.id" "groupParts3.gi";
connectAttr "polyUnite4.out" "groupParts4.ig";
connectAttr "groupId11.id" "groupParts4.gi";
connectAttr "groupParts4.og" "polyMergeVert5.ip";
connectAttr "Wall9Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "Wall9ShapeOrig.w" "bend1.ip[0].ig";
connectAttr "Wall9ShapeOrig.o" "bend1.orggeom[0]";
connectAttr "bend1HandleShape.dd" "bend1.dd";
connectAttr "bend1Handle.wm" "bend1.ma";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "FloorShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "WallShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_CornerShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall4Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall4Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall5Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall5Shape.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall7Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall7Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall8Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall9Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Outside_BendShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "Wall10Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
// End of Modular.ma
