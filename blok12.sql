SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b12r1201,
        b12r1202,
        b12r1203,
        CONCAT(
            CASE WHEN (
                b12r1204 < 5 or b12r1204 > 1305
            ) THEN '12.1, ' END,

            CASE WHEN (
                (cast(b12r1205b as decimal)/cast(b12r1205a as decimal))*1000 < 5000 or (cast(b12r1205b as decimal)/NULLIF(cast(b12r1205a as decimal),0))*1000 > 1000000
            ) THEN '12.2, ' END,

            CASE WHEN (
                (b12r1206>0) and (b12r1212>0)and (cast(b12r1206 as decimal) / NULLIF(cast(b12r1212 as decimal),0) < 0.8 or cast(b12r1206 as decimal) / NULLIF(cast(b12r1212 as decimal),0) > 5.0)
            ) THEN '12.3, ' END,
            
            CASE WHEN (
                (b12r1206 > 10000000000)
            ) THEN '12.4, ' END,

            CASE WHEN (
                ((b12r1207a+b12r1207b)>0) and ((((cast(b12r1207a as decimal) + cast(b12r1207b as decimal))*cast(b12r1204 as decimal)/ NULLIF(cast(b12r1212 as decimal),0)) + (cast(b12r1209 as decimal)/ NULLIF(cast(b12r1212 as decimal),0)) > 1.5*0.4095 ) and (((cast(b12r1207a as decimal) + cast(b12r1207b as decimal))*cast(b12r1204 as decimal)/ NULLIF(cast(b12r1212 as decimal),0)) + (cast(b12r1209 as decimal)/ NULLIF(cast(b12r1212 as decimal),0)) != 1))
            ) THEN '12.5, ' END,
            
            CASE WHEN (
                (b12r1207c>0) and (b12r1207c>0) and ((cast(b12r1207c as decimal))*cast(b12r1204 as decimal)/ NULLIF(cast(b12r1212 as decimal),0) > 1.5*0.2394) and ((cast(b12r1207c as decimal))*cast(b12r1204 as decimal)/ NULLIF(cast(b12r1212 as decimal),0) != 1) 
            ) THEN '12.6, ' END,

            CASE WHEN (
                (b12r1207d>0) and ((cast(b12r1207d as decimal))*cast(b12r1204 as decimal)/ NULLIF(cast(b12r1212 as decimal),0) > 1.5 * 0.0437) and ((cast(b12r1207d as decimal))*cast(b12r1204 as decimal)/ NULLIF(cast(b12r1212 as decimal),0) != 1)
            ) THEN '12.7, ' END,

            CASE WHEN (
                (b12r1207e>0) and ((cast(b12r1207e as decimal))*cast(b12r1204 as decimal)/ NULLIF(cast(b12r1212 as decimal),0) > 1.5 * 0.1936) and ((cast(b12r1207d as decimal))*cast(b12r1204 as decimal)/ NULLIF(cast(b12r1212 as decimal),0) != 1) 
            ) THEN '12.8, ' END,

            CASE WHEN (
                (b12r1211>0) and cast(b12r1211 as decimal) / NULLIF(cast(b12r1212 as decimal),0) >0.5
            ) THEN '12.9, ' END,

            CASE WHEN (
                (b12r1210>0) and cast(b12r1210 as decimal) / NULLIF(cast(b12r1212 as decimal),0) >0.5
            ) THEN '12.10, ' END,

            CASE WHEN (
                (b12r1210 > 1000000)
            ) THEN '12.11, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok12 b12 on b2.id = b12.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108