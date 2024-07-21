SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        CONCAT(
            CASE WHEN (
                (b16r1601_k2 > 0 OR b16r1602_k2 > 0) 
                AND (b16r1601_k2 * 100 / NULLIF((b16r1601_k2 + b16r1602_k2), 0) > 70)
            ) THEN '16.1, ' END,

            CASE WHEN (
                (b16r1601_k3 + b16r1602_k3) > 0 
                AND (b16r1601_k3 * 100 / NULLIF((b16r1601_k3 + b16r1602_k3), 0) > 70)
            ) THEN '16.2, ' END,

            CASE WHEN (
                (b16r1601_k2 > '0' OR b16r1602_k2 > '0')  
                AND (b16r1602_k2 * 100 / NULLIF((b16r1601_k2 + b16r1602_k2), 0) > '70')  
            ) THEN '16.3, ' END,
            
            CASE WHEN (
                (( b16r1602_k3*100/(b16r1601_k3 +  b16r1602_k3)  > '70'  ))
            ) THEN '16.4, ' END,

            CASE WHEN (
                (b16r1601_k2 > '10000'  )
            ) THEN '16.5, ' END,

            CASE WHEN (
                (b16r1601_k3 > '200000'  )
            ) THEN '16.6, ' END,

            CASE WHEN (
                ((b16r1602_k2 > '10000'  ))
            ) THEN '16.7, ' END,

            CASE WHEN (
                (( b16r1602_k3  > '250000'  ))
            ) THEN '16.8, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok16 b16 on b2.id = b16.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108