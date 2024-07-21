SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b10r1001,
        CONCAT(
            CASE WHEN (
                ((b10r1002  LIKE '%49%' or b10r1002 LIKE '%99%'))
            ) THEN '10.1, ' END,

            CASE WHEN (
                ((b10r1004 > '100000'))
            ) THEN '10.2, ' END,

            CASE WHEN (
                (b10r1004 >'0' and b10r1005a >'0' and b10r1005a/b10r1004 > '0' and b10r1005a/b10r1004 < '10' or (b10r1005a/b10r1004 >= '10000'))
            ) THEN '10.3, ' END,
            
            CASE WHEN (
                ((b10r1005b > '0' and (b10r1005b < '10' or b10r1005b  > '50000')))
            ) THEN '10.4, ' END,

            CASE WHEN (
                ((b10r1005b > b10r1005a))
            ) THEN '10.5, ' END,

            CASE WHEN (
                 (b10rc <= '0')
            ) THEN '10.6, ' END,

            CASE WHEN (
                ((b10rd < '0'))
            ) THEN '10.7, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok10 b10 on b2.id = b10.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108