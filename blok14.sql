SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        CONCAT(
            CASE WHEN (
                b14ra_k2 > 1000000
            ) THEN '14.1, ' END,

            CASE WHEN (
                b14rb_k2 > 10000000
            ) THEN '14.2, ' END,

            CASE WHEN (
                b14r1402_k2 > 10000000
            ) THEN '14.3, ' END,
            
            CASE WHEN (
                b14r1403_k2 > 100000000
            ) THEN '14.4, ' END,

            CASE WHEN (
                 b14r1404a_k2 > 500000
            ) THEN '14.5, ' END,

            CASE WHEN (
                 b14r1404b_k2 > 500000
            ) THEN '14.6, ' END,

            CASE WHEN (
                 b14r1405a_k2 > 10000000
            ) THEN '14.7, ' END,

            CASE WHEN (
                 b14r1405b_k2 > 10000000
            ) THEN '14.8, ' END,

            CASE WHEN (
                 b14r1406_k2 > 1000000
            ) THEN '14.9, ' END,

            CASE WHEN (
                 b14r1408_k2 > 1000000
            ) THEN '14.10, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok14 b14 on b2.id = b14.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108