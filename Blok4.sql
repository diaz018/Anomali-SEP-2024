SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b4r401,
        CONCAT(
            CASE WHEN (
                b4r402 not in ('1102', '1103', '1104', '1213', '1214', '1215', '1202', '1203', '1204', '1205', '1206', '1207', '1208', '1235', '1209', '1210', '1211', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299')
            ) THEN '4.1, ' END,

            CASE WHEN (
                (b4r402='1102' and b4r401 not like '%Padi%ladang%') or 
                (b4r402='1103' and b4r401 not like '%Padi%sawah%hibrida%') or 
                (b4r402='1104' and b4r401 not like '%Padi%sawah%inbrida%') or 
                (b4r402='1213' and b4r401 not like '%Jagung%hibrida%') or 
                (b4r402='1214' and b4r401 not like '%Jagung%komposit%') or 
                (b4r402='1215' and b4r401 not like '%Jagung%lokal%') or 
                (b4r402='1202' and b4r401 not like '%Kedelai%') or 
                (b4r402='1203' and b4r401 not like '%Kacang%tanah%') or 
                (b4r402='1204' and b4r401 not like '%Kacang%hijau%') or 
                (b4r402='1205' and b4r401 not like '%Ubi%kayu%') or 
                (b4r402='1206' and b4r401 not like '%Ubi%jalar%') or 
                (b4r402='1207' and b4r401 not like '%Sorgum%') or 
                (b4r402='1208' and b4r401 not like '%Gandum%') or 
                (b4r402='1235' and b4r401 not like '%Gandum%Hitam%') or 
                (b4r402='1209' and b4r401 not like '%Talas%') or 
                (b4r402='1210' and b4r401 not like '%Ganyong%') or 
                (b4r402='1211' and b4r401 not like '%Garut%') or 
                (b4r402='1216' and b4r401 not like '%Hotong%') or 
                (b4r402='1217' and b4r401 not like '%Gembili%') or 
                (b4r402='1218' and b4r401 not like '%Kimpul%') or 
                (b4r402='1219' and b4r401 not like '%Iles-iles%') or 
                (b4r402='1220' and b4r401 not like '%Juwawut%') or 
                (b4r402='1221' and b4r401 not like '%Gadung%') or 
                (b4r402='1222' and b4r401 not like '%Suweg%') or 
                (b4r402='1223' and b4r401 not like '%Ubi%saut%') or 
                (b4r402='1224' and b4r401 not like '%Kacang%Babi%') or 
                (b4r402='1225' and b4r401 not like '%Kacang%Bogor%') or 
                (b4r402='1226' and b4r401 not like '%Kacang%Gude/Hiris%') or 
                (b4r402='1227' and b4r401 not like '%Kacang%Komak%') or 
                (b4r402='1228' and b4r401 not like '%Kacang%Koro%Benguk%') or 
                (b4r402='1229' and b4r401 not like '%Kacang%Merah%') or 
                (b4r402='1230' and b4r401 not like '%Kacang%Nagara%') or 
                (b4r402='1231' and b4r401 not like '%Kacang%Rawai%') or 
                (b4r402='1232' and b4r401 not like '%Kacang%Tunggak%') or 
                (b4r402='1233' and b4r401 not like '%Porang%') or 
                (b4r402='1234' and b4r401 not like '%Walur%')
            ) THEN '4.2, ' END,
                
            CASE WHEN (
                b4r402='1299' and (
                (b4r401 like '%jagung%') or
                (b4r401 like '%jagung%hibrida%') or
                (b4r401 like '%jagung%komposit%') or
                (b4r401 like '%jagung%lokal%') or
                (b4r401 like '%kedelai%') or
                (b4r401 like '%kacang%tanah%') or
                (b4r401 like '%kacang%hijau%') or
                (b4r401 like '%ubi%kayu%') or
                (b4r401 like '%ubi%jalar%') or
                (b4r401 like '%sorgum%') or
                (b4r401 like '%gandum%') or
                (b4r401 like '%talas%') or
                (b4r401 like '%ganyong%') or
                (b4r401 like '%garut%') or
                (b4r401 like '%jagung%manis%') or
                (b4r401 like '%hotong%') or
                (b4r401 like '%gembili%') or
                (b4r401 like '%kimpul%') or
                (b4r401 like '%iles%iles%') or
                (b4r401 like '%juwawut%') or
                (b4r401 like '%gadung%') or
                (b4r401 like '%suweg%') or
                (b4r401 like '%ubi%sawut%') or
                (b4r401 like '%kacang%babi%') or
                (b4r401 like '%kacang%bogor%') or
                (b4r401 like '%kacang%gude%hiris%') or
                (b4r401 like '%kacang%komak%') or
                (b4r401 like '%kacang%koro%benguk%') or
                (b4r401 like '%kacang%merah%') or
                (b4r401 like '%kacang%nagara%') or
                (b4r401 like '%kacang%rawai%') or
                (b4r401 like '%kacang%tunggak%'))
            ) THEN '4.3, ' END,

            CASE WHEN (
                b4r403>=100000 or b4r403<=5
            ) THEN '4.4, ' END,

            CASE WHEN (
                cast(b4r404b as decimal)/cast(b4r404a as decimal)>b4r403 and b4r404a>0
            ) THEN '4.5, ' END,

            CASE WHEN (
                cast(b4r404d as decimal)/NULLIF(cast(b4r404c as decimal), 0)>b4r403
            ) THEN '4.6, ' END,

            CASE WHEN (
                b4r404a>3
            ) THEN '4.7, ' END,

            CASE WHEN (
                b4r404c>3 or b4r404c=0
            ) THEN '4.8, ' END,

            CASE WHEN (
                (b4r402 in ('1103','1104') and (b4r404d)>0 and (cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)<0.08 or cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)>(1.5*1.344))) or 
                (b4r402 = '1102' and (b4r404d)>0 and (cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)<0.0875 or cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)>(1.5*1.088))) or 
                (b4r402 in ('1213', '1214', '1215') and (b4r404d)>0 and (cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)<0.08 or cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)>(1.5*3.8192))) or 
                (b4r402 = '1202' and (b4r404d)>0 and (cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)<0.08 or cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)>(1.5*1.4272))) or 
                (b4r402 = '1203' and (b4r404d)>0 and (cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)<0.08 or cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)>(1.5*3.152))) or 
                (b4r402 = '1205' and (b4r404d)>0 and (cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)<0.08 or cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)>(1.5*8))) or 
                (b4r402 = '1206' and (b4r404d)>0 and (cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)<0.08 or cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)>(1.5*7.84))) or 
                (b4r402 in ('1204', '1207', '1208', '1235', '1209', '1210', '1211', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and (b4r404d)>0 and (cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)<0.08 or cast(b4r406h as decimal)/NULLIF(cast(b4r404d as decimal),0)>(1.5*8)))
            ) THEN '4.9, ' END,

            CASE WHEN (
                b4r402 in ('1102', '1103', '1104') and b4r406h>0 and (cast(b4r407a as decimal)/cast(b4r406h as decimal)<3.4 or cast(b4r407a as decimal)/cast(b4r406h as decimal)>(1.5*15)) or
                b4r402 in ('1213', '1214', '1215') and b4r406h>0 and (cast(b4r407a as decimal)/cast(b4r406h as decimal)<3.15232 or cast(b4r407a as decimal)/cast(b4r406h as decimal)>(1.5*8.71744)) or
                b4r402 = '1202' and b4r406h>0 and (cast(b4r407a as decimal)/cast(b4r406h as decimal)<7.12607 or cast(b4r407a as decimal)/cast(b4r406h as decimal)>(1.5*16.50734)) or
                b4r402 = '1203' and b4r406h>0 and (cast(b4r407a as decimal)/cast(b4r406h as decimal)<10.2785 or cast(b4r407a as decimal)/cast(b4r406h as decimal)>(1.5*32.77417)) or
                b4r402 = '1204' and b4r406h>0 and (cast(b4r407a as decimal)/cast(b4r406h as decimal)<9.6154 or cast(b4r407a as decimal)/cast(b4r406h as decimal)>(1.5*28.16823)) or
                b4r402 = '1205' and b4r406h>0 and (cast(b4r407a as decimal)/cast(b4r406h as decimal)<1.53902 or cast(b4r407a as decimal)/cast(b4r406h as decimal)>(1.5*8.79242)) or
                b4r402 = '1206' and b4r406h>0 and (cast(b4r407a as decimal)/cast(b4r406h as decimal)<2.67638 or cast(b4r407a as decimal)/cast(b4r406h as decimal)>(1.5*10.77905)) or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r406h>0 and (cast(b4r407a as decimal)/cast(b4r406h as decimal)<1.53902 or cast(b4r407a as decimal)/cast(b4r406h as decimal)>(1.5*32.77417))
            ) THEN '4.10, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.0243 or
                b4r402 = '1104' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.0105 or
                b4r402 = '1102' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.039 or
                b4r402 = '1213' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.024 or
                b4r402 = '1214' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.0501 or
                b4r402 = '1202' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.0438 or
                b4r402 = '1203' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.0423 or
                b4r402 = '1204' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.0165 or
                b4r402 = '1205' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.1917 or
                b4r402 = '1206' and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.3195 or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r407d>0 and cast(b4r407c as decimal)/cast(b4r407d as decimal)>0.3195
            ) THEN '4.11, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.1977 or
                b4r402 = '1104' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.1002 or
                b4r402 = '1102' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.1425 or
                b4r402 = '1213' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.2763 or
                b4r402 = '1214' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.1485 or
                b4r402 = '1202' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.1959 or
                b4r402 = '1203' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.3573 or
                b4r402 = '1204' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.1578 or
                b4r402 = '1205' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.1284 or
                b4r402 = '1206' and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.2319 or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and  (cast(b4r408 as decimal)/cast(b4r417 as decimal))>0.3573
            ) THEN '4.12, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.3483 or
                b4r402 = '1104' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.2721 or
                b4r402 = '1102' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.252 or
                b4r402 = '1213' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.4212 or
                b4r402 = '1214' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.2271 or
                b4r402 = '1202' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.1491 or
                b4r402 = '1203' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.1578 or
                b4r402 = '1204' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.0966 or
                b4r402 = '1205' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.1524 or
                b4r402 = '1206' and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.0984 or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and  cast(b4r409 as decimal)/cast(b4r417 as decimal)>0.4212
            ) THEN '4.13, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.1125 or
                b4r402 = '1104' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.1281 or
                b4r402 = '1102' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.1053 or
                b4r402 = '1213' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.1089 or
                b4r402 = '1214' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.0531 or
                b4r402 = '1202' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.1206 or
                b4r402 = '1203' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.0492 or
                b4r402 = '1204' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.2166 or
                b4r402 = '1205' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.0216 or
                b4r402 = '1206' and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.0165 or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and cast(b4r410 as decimal)/cast(b4r417 as decimal)>0.2166
            ) THEN '4.14, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.3306) or
                b4r402 = '1104' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.3089) or
                b4r402 = '1102' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.5296) or
                b4r402 = '1213' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.3902) or
                b4r402 = '1214' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.5816) or
                b4r402 = '1202' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.4124) or
                b4r402 = '1203' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.5341) or
                b4r402 = '1204' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.4677) or
                b4r402 = '1205' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.6007) or
                b4r402 = '1206' and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.6690) or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and (cast((b4r411a+b4r411b+b4r411c) as decimal)/cast(b4r417 as decimal))>(1.4*0.5816)
            ) THEN '4.15, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0339 or
                b4r402 = '1104' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0276 or
                b4r402 = '1102' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0384 or
                b4r402 = '1213' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0393 or
                b4r402 = '1214' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0342 or
                b4r402 = '1202' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0378 or
                b4r402 = '1203' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0327 or
                b4r402 = '1204' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.033 or
                b4r402 = '1205' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0189 or
                b4r402 = '1206' and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0105 or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and cast(b4r412 as decimal)/cast(b4r417 as decimal)>0.0393
            ) THEN '4.16, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.6294 or
                b4r402 = '1104' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.7908 or
                b4r402 = '1102' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.4275 or
                b4r402 = '1213' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.54 or
                b4r402 = '1214' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.4047 or
                b4r402 = '1202' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.8667 or
                b4r402 = '1203' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.4554 or
                b4r402 = '1204' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.7815 or
                b4r402 = '1205' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.4209 or
                b4r402 = '1206' and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.2973 or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and (cast((b4r414a+b4r414b) as decimal))/cast(b4r417 as decimal)>0.8667
            ) THEN '4.17, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.4422 or
                b4r402 = '1104' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.5418 or
                b4r402 = '1102' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.2115 or
                b4r402 = '1213' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.2463 or
                b4r402 = '1214' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.0984 or
                b4r402 = '1202' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.1797 or
                b4r402 = '1203' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.1368 or
                b4r402 = '1204' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.1131 or
                b4r402 = '1205' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.1395 or
                b4r402 = '1206' and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.0492 or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and cast(b4r415 as decimal)/cast(b4r417 as decimal)>0.5418
            ) THEN '4.18, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(1.32) or
                b4r402 = '1104' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(1.05) or
                b4r402 = '1102' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(0.81) or
                b4r402 = '1213' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(1.23) or
                b4r402 = '1214' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(1.17) or
                b4r402 = '1202' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(0.42) or
                b4r402 = '1203' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(1.05) or
                b4r402 = '1204' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(0.66) or
                b4r402 = '1205' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(2.07) or
                b4r402 = '1206' and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(3.21) or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and cast(b4rc as decimal)/cast(b4r417 as decimal)>(3.21)
            ) THEN '4.19, ' END,

            CASE WHEN (
                b4r402 = '1103' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.2397 or
                b4r402 = '1104' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.2043 or
                b4r402 = '1102' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.228 or
                b4r402 = '1213' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.1833 or
                b4r402 = '1214' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.2859 or
                b4r402 = '1202' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.2094 or
                b4r402 = '1203' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.2046 or
                b4r402 = '1204' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.1947 or
                b4r402 = '1205' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.3144 or
                b4r402 = '1206' and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.288 or
                b4r402 in ('1207', '1208', '1235', '1209', '1210', '1211', '1215', '1216', '1217', '1218', '1219', '1220', '1221', '1222', '1223', '1224', '1225', '1226', '1227', '1228', '1229', '1230', '1231', '1232', '1233', '1234', '1299') and b4r417>0 and (cast((b4r413+b4r416) as decimal))/cast(b4r417 as decimal)>0.3144
            ) THEN '4.20, ' END,

            CASE WHEN (
                b4rc<=0
            ) THEN '4.21, ' END,

            CASE WHEN (
                b4rd<=0
            ) THEN '4.22, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok4 b4 on b2.id = b4.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108