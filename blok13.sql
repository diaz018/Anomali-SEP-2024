SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b13ar1301,
        b13br1312,
        CONCAT(
            CASE WHEN (
                b13ar1311>0 and cast(b13ar1304 as decimal)/NULLIF(cast(b13ar1311 as decimal),0)=1
            ) THEN '13.1, ' END,

            CASE WHEN (
                b13ar1311>0 and cast(b13ar1305 as decimal)/NULLIF(cast(b13ar1311 as decimal),0)=1
            ) THEN '13.2, ' END,

            CASE WHEN (
                b13ar1311>0 and ((cast((b13ar1306a+b13ar1306b+b13ar1306c) as decimal))/NULLIF(cast(b13ar1311 as decimal),0))=1
            ) THEN '13.3, ' END,
            
            CASE WHEN (
                b13ar1311>0 and (cast(b13ar1307 as decimal)/NULLIF(cast(b13ar1311 as decimal),0))=1
            ) THEN '13.4, ' END,

            CASE WHEN (
                b13ar1311>0 and ((cast((b13ar1309a+b13ar1309b) as decimal))/NULLIF(cast(b13ar1311 as decimal),0))=1
            ) THEN '13.5, ' END,

            CASE WHEN (
                b13ar1311>0 and ((cast((b13ar1308+b13ar1310) as decimal))/NULLIF(cast(b13ar1311 as decimal),0))=1
            ) THEN '13.6, ' END,

            CASE WHEN (
                b13ar1311>0 and (cast(b13arc as decimal)/NULLIF(cast(b13ar1311 as decimal),0))>2.16
            ) THEN '13.7, ' END,

            CASE WHEN (
                b13arc<0
            ) THEN '13.8, ' END,

            CASE WHEN (
                b13ard<30 or b13ard>10000000
            ) THEN '13.9, ' END,

            CASE WHEN (
                b13br1322>0 and cast(b13br1315 as decimal)/NULLIF(cast(b13br1322 as decimal),0)=1
            ) THEN '13.10, ' END,

            CASE WHEN (
                b13br1322>0 and cast(b13br1316 as decimal)/NULLIF(cast(b13br1322 as decimal),0)=1
            ) THEN '13.11, ' END,

            CASE WHEN (
                b13br1322>0 and ((cast((b13br1317a+b13br1317b+b13br1317c) as decimal))/NULLIF(cast(b13br1322 as decimal),0))=1
            ) THEN '13.12, ' END,

            CASE WHEN (
                b13br1322>0 and (cast(b13br1318 as decimal)/NULLIF(cast(b13br1322 as decimal),0))=1
            ) THEN '13.13, ' END,

            CASE WHEN (
                b13br1322>0 and ((cast((b13br1320a+b13br1320b) as decimal))/NULLIF(cast(b13br1322 as decimal),0))=1
            ) THEN '13.14, ' END,

            CASE WHEN (
                b13br1322>0 and ((cast((b13br1319+b13br1321) as decimal))/NULLIF(cast(b13br1322 as decimal),0))=1
            ) THEN '13.15, ' END,

            CASE WHEN (
                b13br1322>0 and (cast(b13brc as decimal)/NULLIF(cast(b13br1322 as decimal),0))>2.16
            ) THEN '13.16, ' END,

            CASE WHEN (
                b13brc<=0
            ) THEN '13.17, ' END,

            CASE WHEN (
                b13brd<30 or b13brd>10000000
            ) THEN '13.18, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok13A b13A on b2.id = b13A.id
    left join Blok13B b13B on b2.id = b13B.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108