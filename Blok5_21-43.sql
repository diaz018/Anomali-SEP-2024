SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b5r501,
        CONCAT(
            CASE WHEN (
                (b5r502 = '2101' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.7 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>90)) or 
                (b5r502 = '2102' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2103' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2104', '2105', '2106', '2107') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2108' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2110' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 = '2111' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 in( '2112', '2113', '2114') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>200)) or 
                (b5r502 in( '2116', '2117', '2118', '2119') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2120', '2121', '2122') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2124', '2125') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2126', '2127', '2128') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2131' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 = '2132' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2133', '2134', '2135', '2136', '2137', '2138', '2139') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>100)) or 
                (b5r502 = '2140' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 in( '2141', '2142', '2143') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15)) or 
                (b5r502 = '2145' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2146', '2147', '2148') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2149', '2150', '2151', '2152' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<7 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>500)) or 
                (b5r502 in( '2153', '2154', '2155', '2156', '2157' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2158', '2159', '2160' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2161', '2162', '2163' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>67.5)) or 
                (b5r502 = '2164' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2165' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2166' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2109', '2115', '2129', '2130', '2144', '2167', '2199' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2302' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2304' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2305' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2301', '2303', '2306', '2399' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2502' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>26.25)) or 
                (b5r502 = '2505' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2507' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2508' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2511' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2519' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2501', '2503', '2504', '2506', '2507', '2509', '2510', '2512', '2513', '2514', '2515', '2516', '2518', '2519', '2599' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2701', '2702', '2703', '2704', '2705', '2706', '2707', '2708', '2709', '2710', '2711', '2712', '2713' , '2799' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15000)) 
            ) THEN '5.21, ' END,

            CASE WHEN (
                (b5r502 = '2101' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.7 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>90)) or 
                (b5r502 = '2102' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2103' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2104', '2105', '2106', '2107') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2108' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2110' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 = '2111' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 in( '2112', '2113', '2114') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>200)) or 
                (b5r502 in( '2116', '2117', '2118', '2119') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2120', '2121', '2122') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2124', '2125') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2126', '2127', '2128') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2131' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 = '2132' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2133', '2134', '2135', '2136', '2137', '2138', '2139') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>100)) or 
                (b5r502 = '2140' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 in( '2141', '2142', '2143') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15)) or 
                (b5r502 = '2145' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2146', '2147', '2148') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2149', '2150', '2151', '2152' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<7 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>500)) or 
                (b5r502 in( '2153', '2154', '2155', '2156', '2157' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2158', '2159', '2160' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2161', '2162', '2163' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>67.5)) or 
                (b5r502 = '2164' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2165' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2166' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2109', '2115', '2129', '2130', '2144', '2167', '2199' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2302' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2304' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2305' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2301', '2303', '2306', '2399' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2502' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>26.25)) or 
                (b5r502 = '2505' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2507' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2508' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2511' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2519' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2501', '2503', '2504', '2506', '2507', '2509', '2510', '2512', '2513', '2514', '2515', '2516', '2518', '2519', '2599' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2701', '2702', '2703', '2704', '2705', '2706', '2707', '2708', '2709', '2710', '2711', '2712', '2713' , '2799' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15000)) 
            ) THEN '5.22, ' END,

            CASE WHEN (
                (b5r502 = '2101' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.7 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>90)) or 
                (b5r502 = '2102' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2103' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2104', '2105', '2106', '2107') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2108' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2110' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 = '2111' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 in( '2112', '2113', '2114') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>200)) or 
                (b5r502 in( '2116', '2117', '2118', '2119') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2120', '2121', '2122') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2124', '2125') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2126', '2127', '2128') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2131' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 = '2132' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2133', '2134', '2135', '2136', '2137', '2138', '2139') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>100)) or 
                (b5r502 = '2140' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 in( '2141', '2142', '2143') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15)) or 
                (b5r502 = '2145' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2146', '2147', '2148') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2149', '2150', '2151', '2152' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<7 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>500)) or 
                (b5r502 in( '2153', '2154', '2155', '2156', '2157' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2158', '2159', '2160' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2161', '2162', '2163' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>67.5)) or 
                (b5r502 = '2164' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2165' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2166' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2109', '2115', '2129', '2130', '2144', '2167', '2199' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2302' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2304' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2305' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2301', '2303', '2306', '2399' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2502' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>26.25)) or 
                (b5r502 = '2505' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2507' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2508' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2511' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2519' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2501', '2503', '2504', '2506', '2507', '2509', '2510', '2512', '2513', '2514', '2515', '2516', '2518', '2519', '2599' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2701', '2702', '2703', '2704', '2705', '2706', '2707', '2708', '2709', '2710', '2711', '2712', '2713' , '2799' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15000)) 
            ) THEN '5.23, ' END,

            CASE WHEN (
                (b5r502 = '2101' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.7 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>90)) or 
                (b5r502 = '2102' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2103' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2104', '2105', '2106', '2107') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2108' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2110' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 = '2111' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 in( '2112', '2113', '2114') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>200)) or 
                (b5r502 in( '2116', '2117', '2118', '2119') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2120', '2121', '2122') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2124', '2125') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2126', '2127', '2128') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2131' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 = '2132' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2133', '2134', '2135', '2136', '2137', '2138', '2139') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>100)) or 
                (b5r502 = '2140' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 in( '2141', '2142', '2143') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15)) or 
                (b5r502 = '2145' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2146', '2147', '2148') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2149', '2150', '2151', '2152' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<7 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>500)) or 
                (b5r502 in( '2153', '2154', '2155', '2156', '2157' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2158', '2159', '2160' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2161', '2162', '2163' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>67.5)) or 
                (b5r502 = '2164' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2165' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2166' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2109', '2115', '2129', '2130', '2144', '2167', '2199' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2302' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2304' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2305' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2301', '2303', '2306', '2399' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2502' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>26.25)) or 
                (b5r502 = '2505' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2507' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2508' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2511' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2519' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2501', '2503', '2504', '2506', '2507', '2509', '2510', '2512', '2513', '2514', '2515', '2516', '2518', '2519', '2599' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2701', '2702', '2703', '2704', '2705', '2706', '2707', '2708', '2709', '2710', '2711', '2712', '2713' , '2799' ) and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15000)) 
            ) THEN '5.24, ' END,

            CASE WHEN (
                (b5r502 = '2201' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>30)) or 
                (b5r502 in( '2202', '2203', '2204') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2206' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>97.5)) or 
                (b5r502 = '2207' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2205', '2208', '2209') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2403' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>105)) or 
                (b5r502 = '2404' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2406' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2407' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.15 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2409' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 in( '2410', '2411') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>300)) or 
                (b5r502 = '2412' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>300)) or 
                (b5r502 = '2413' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>400)) or 
                (b5r502 = '2414' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2415' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2416' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2419' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.15 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2421' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2422' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>42)) or 
                (b5r502 in( '2423', '2424') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2425' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>47.5)) or 
                (b5r502 = '2426' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>30)) or 
                (b5r502 = '2427' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>9)) or 
                (b5r502 = '2428' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2431' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2433', '2434') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2437' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>58.5)) or 
                (b5r502 = '2438' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2439' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2401', '2402', '2405', '2408', '2417', '2418', '2420', '2429', '2430', '2432', '2435', '2436', '2440', '2441', '2442', '2443', '2444', '2499') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>400)) or 
                (b5r502 in( '2603', '2604', '2605') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2607' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15)) or 
                (b5r502 = '2609' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2611' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>142.5)) or 
                (b5r502 = '2613' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2614' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2615' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2619' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2625' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2626' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2628' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2601', '2602', '2606', '2608' , '2610' , '2612' , '2616' , '2617' , '2618' , '2620' , '2621', '2622', '2623', '2624', '2627', '2629', '2630', '2699') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2803' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2804' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>7.5)) or 
                (b5r502 = '2805' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<10 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2810' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<2.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2811' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2813' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>9)) or 
                (b5r502 = '2814' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2816' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15000)) or 
                (b5r502 = '2819' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2821' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2822' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>225)) or 
                (b5r502 = '2825' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2826' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2832' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2835' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<2.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2840' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2801', '2802', '2806', '2807' , '2808' , '2809' , '2812' , '2815' , '2817' , '2818' , '2820', '2823', '2824', '2827', '2828', '2829', '2830', '2831', '2833', '2834', '2836', '2837', '2838', '2839', '2841', '2842', '2843', '2899') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) 
            ) THEN '5.25, ' END,

            CASE WHEN (
                (b5r502 = '2201' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>30)) or 
                (b5r502 in( '2202', '2203', '2204') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2206' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>97.5)) or 
                (b5r502 = '2207' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2205', '2208', '2209') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2403' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>105)) or 
                (b5r502 = '2404' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2406' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2407' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.15 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2409' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 in( '2410', '2411') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>300)) or 
                (b5r502 = '2412' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>300)) or 
                (b5r502 = '2413' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>400)) or 
                (b5r502 = '2414' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2415' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2416' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2419' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.15 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2421' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2422' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>42)) or 
                (b5r502 in( '2423', '2424') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2425' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>47.5)) or 
                (b5r502 = '2426' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>30)) or 
                (b5r502 = '2427' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>9)) or 
                (b5r502 = '2428' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2431' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2433', '2434') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2437' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>58.5)) or 
                (b5r502 = '2438' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2439' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2401', '2402', '2405', '2408', '2417', '2418', '2420', '2429', '2430', '2432', '2435', '2436', '2440', '2441', '2442', '2443', '2444', '2499') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>400)) or 
                (b5r502 in( '2603', '2604', '2605') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2607' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15)) or 
                (b5r502 = '2609' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2611' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>142.5)) or 
                (b5r502 = '2613' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2614' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2615' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2619' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2625' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2626' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2628' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2601', '2602', '2606', '2608' , '2610' , '2612' , '2616' , '2617' , '2618' , '2620' , '2621', '2622', '2623', '2624', '2627', '2629', '2630', '2699') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2803' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2804' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>7.5)) or 
                (b5r502 = '2805' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<10 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2810' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<2.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2811' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2813' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>9)) or 
                (b5r502 = '2814' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2816' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15000)) or 
                (b5r502 = '2819' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2821' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2822' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>225)) or 
                (b5r502 = '2825' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2826' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2832' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2835' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<2.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2840' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2801', '2802', '2806', '2807' , '2808' , '2809' , '2812' , '2815' , '2817' , '2818' , '2820', '2823', '2824', '2827', '2828', '2829', '2830', '2831', '2833', '2834', '2836', '2837', '2838', '2839', '2841', '2842', '2843', '2899') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) 
            ) THEN '5.26, ' END,

            CASE WHEN (
                (b5r502 = '2201' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>30)) or 
                (b5r502 in( '2202', '2203', '2204') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2206' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>97.5)) or 
                (b5r502 = '2207' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2205', '2208', '2209') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2403' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>105)) or 
                (b5r502 = '2404' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2406' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2407' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.15 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2409' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 in( '2410', '2411') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>300)) or 
                (b5r502 = '2412' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>300)) or 
                (b5r502 = '2413' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>400)) or 
                (b5r502 = '2414' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2415' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2416' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2419' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.15 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2421' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2422' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>42)) or 
                (b5r502 in( '2423', '2424') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2425' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>47.5)) or 
                (b5r502 = '2426' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>30)) or 
                (b5r502 = '2427' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>9)) or 
                (b5r502 = '2428' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2431' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2433', '2434') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2437' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>58.5)) or 
                (b5r502 = '2438' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2439' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2401', '2402', '2405', '2408', '2417', '2418', '2420', '2429', '2430', '2432', '2435', '2436', '2440', '2441', '2442', '2443', '2444', '2499') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>400)) or 
                (b5r502 in( '2603', '2604', '2605') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2607' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15)) or 
                (b5r502 = '2609' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2611' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>142.5)) or 
                (b5r502 = '2613' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2614' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2615' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2619' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2625' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2626' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2628' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2601', '2602', '2606', '2608' , '2610' , '2612' , '2616' , '2617' , '2618' , '2620' , '2621', '2622', '2623', '2624', '2627', '2629', '2630', '2699') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2803' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2804' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>7.5)) or 
                (b5r502 = '2805' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<10 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2810' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<2.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2811' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2813' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>9)) or 
                (b5r502 = '2814' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2816' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15000)) or 
                (b5r502 = '2819' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2821' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2822' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>225)) or 
                (b5r502 = '2825' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2826' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2832' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2835' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<2.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2840' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2801', '2802', '2806', '2807' , '2808' , '2809' , '2812' , '2815' , '2817' , '2818' , '2820', '2823', '2824', '2827', '2828', '2829', '2830', '2831', '2833', '2834', '2836', '2837', '2838', '2839', '2841', '2842', '2843', '2899') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) 
            ) THEN '5.27, ' END,

            CASE WHEN (
                (b5r502 = '2201' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>30)) or 
                (b5r502 in( '2202', '2203', '2204') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2206' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>97.5)) or 
                (b5r502 = '2207' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2205', '2208', '2209') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2403' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>105)) or 
                (b5r502 = '2404' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2406' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2407' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.15 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2409' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>82.5)) or 
                (b5r502 in( '2410', '2411') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>300)) or 
                (b5r502 = '2412' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>300)) or 
                (b5r502 = '2413' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>400)) or 
                (b5r502 = '2414' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2415' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2416' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2419' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.15 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2421' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2422' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>42)) or 
                (b5r502 in( '2423', '2424') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2425' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>47.5)) or 
                (b5r502 = '2426' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>30)) or 
                (b5r502 = '2427' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.25 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>9)) or 
                (b5r502 = '2428' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>45)) or 
                (b5r502 = '2431' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 in( '2433', '2434') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>60)) or 
                (b5r502 = '2437' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.2 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>58.5)) or 
                (b5r502 = '2438' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.3 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2439' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>52.5)) or 
                (b5r502 in( '2401', '2402', '2405', '2408', '2417', '2418', '2420', '2429', '2430', '2432', '2435', '2436', '2440', '2441', '2442', '2443', '2444', '2499') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>400)) or 
                (b5r502 in( '2603', '2604', '2605') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2607' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15)) or 
                (b5r502 = '2609' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2611' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>142.5)) or 
                (b5r502 = '2613' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2614' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2615' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2619' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2625' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2626' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2628' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2601', '2602', '2606', '2608' , '2610' , '2612' , '2616' , '2617' , '2618' , '2620' , '2621', '2622', '2623', '2624', '2627', '2629', '2630', '2699') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2803' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2804' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>7.5)) or 
                (b5r502 = '2805' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<10 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2810' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<2.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2811' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2813' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>9)) or 
                (b5r502 = '2814' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2816' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>15000)) or 
                (b5r502 = '2819' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.4 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2821' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2822' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>225)) or 
                (b5r502 = '2825' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2826' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<1 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) or 
                (b5r502 = '2832' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>150)) or 
                (b5r502 = '2835' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<2.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 = '2840' and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.5 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>75)) or 
                (b5r502 in( '2801', '2802', '2806', '2807' , '2808' , '2809' , '2812' , '2815' , '2817' , '2818' , '2820', '2823', '2824', '2827', '2828', '2829', '2830', '2831', '2833', '2834', '2836', '2837', '2838', '2839', '2841', '2842', '2843', '2899') and (b5r506h)>0 and (cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)<0.001 or cast(b5r507a as decimal)/NULLIF(cast(b5r506h as decimal),0)>1500)) 
            ) THEN '5.28, ' END,

            CASE WHEN (
                (b5r507b > 0) AND ((b5r507b) < 100 or (b5r507b) > 500000)
            ) THEN '5.29, ' END,

            CASE WHEN (
                (b5r507c > 0) AND ((b5r507c) < 50 or (b5r507c) > 100000)
            ) THEN '5.30, ' END,

            CASE WHEN (
                (b5r508 > 0) and (b5r517 >0) AND (cast(b5r508 as decimal)/NULLIF(cast(b5r517 as decimal),0) > 0.40)
            ) THEN '5.31, ' END,

            CASE WHEN (
                (b5r509 > 0) and (b5r517 >0) AND (cast(b5r509 as decimal)/NULLIF(cast(b5r517 as decimal),0) > 0.37)
            ) THEN '5.32, ' END,

            CASE WHEN (
                (b5r510 > 0) and (b5r517 >0) AND (cast(b5r510 as decimal)/NULLIF(cast(b5r517 as decimal),0) > 0.42)
            ) THEN '5.33, ' END,

            CASE WHEN (
                (b5r511a+b5r511b+b5r511c) > 0 and (b5r517 >0) AND cast((b5r511a+b5r511b+b5r511c)as decimal)/NULLIF(cast(b5r517 as decimal),0) > 0.72
            ) THEN '5.34, ' END,

            CASE WHEN (
                (b5r512 > 0)  and (b5r517 >0) AND (cast(b5r512 as decimal)/NULLIF(cast(b5r517 as decimal),0) > 0.10)
            ) THEN '5.35, ' END,

            CASE WHEN (
                (b5r513 > 0) and (b5r517 >0) AND (cast(b5r513 as decimal)/NULLIF(cast(b5r517 as decimal),0) > 0.08)
            ) THEN '5.36, ' END,

            CASE WHEN (
                (b5r517 > 0) AND ((b5r514a+b5r514b) > 0) AND ((cast((b5r514a+b5r514b) as decimal)/cast(b5r517 as decimal) < 0.05) OR (cast((b5r514a+b5r514b) as decimal)/cast(b5r517 as decimal) > 0.52))
            ) THEN '5.37, ' END,

            CASE WHEN (
                (b5r515 > 0) and (b5r517 >0) AND ((cast(b5r515 as decimal)/cast(b5r517 as decimal)) > 0.12)
            ) THEN '5.38, ' END,

            CASE WHEN (
                (b5r516 > 0) and (b5r517 >0) AND ((cast(b5r516 as decimal)/cast (b5r517 as decimal)) > 0.11)
            ) THEN '5.39, ' END,

            CASE WHEN (
                (b5r517 > 0) AND ((b5r507a+b5r507b+b5r507c) > 0) AND ((cast(b5r517 as decimal)/cast((b5r507a+b5r507b+b5r507c) as decimal) < 0.04) OR (cast(b5r517 as decimal)/cast((b5r507a+b5r507b+b5r507c) as decimal) > 0.60))
            ) THEN '5.40, ' END,

            CASE WHEN (
                b5rc < 0
            ) THEN '5.41, ' END,

            CASE WHEN (
                b5rd < 0
            ) THEN '5.42, ' END,

            CASE WHEN (
                b5rd > 10000000
            ) THEN '5.43, ' END

        ) AS Anomali
FROM Blok2 b2
    left join Blok5 b5 on b2.id = b5.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108