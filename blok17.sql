SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        CONCAT(
            CASE WHEN (
                b17r1729a > '200000'
            ) THEN '17.3, ' END,

            CASE WHEN (
                b17r1729b > '200000'
            ) THEN '17.4, ' END,

            CASE WHEN (
                b17r1730b > 3
            ) THEN '17.5, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok17 b17 on b2.id = b17.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108