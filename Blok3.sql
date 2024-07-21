SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        CONCAT(
            CASE WHEN (
                b3r303e_k2 <> (b3r303a_k2 + b3r303b_k2 + b3r303c_k2 - b3r303d_k2)
            ) THEN '3.1, ' END,

            CASE WHEN (
                b3r303e_k2 > 0 AND ((b3r303e_k2 < 4) or (b3r303e_k2 > 250000))
            ) THEN '3.2, ' END,

            CASE WHEN (
                b3r303e_k3 <> (b3r303a_k3 + b3r303b_k3 + b3r303c_k3 - b3r303d_k3)
            ) THEN '3.3, ' END,
            
            CASE WHEN (
                b3r303e_k3 > 0 AND ((b3r303e_k3 < 5) or (b3r303e_k3 > 100000))
            ) THEN '3.4, ' END,

            CASE WHEN (
                b3r303e_k4 > 0 AND ((b3r303e_k4 < 4) or (b3r303e_k4 > 250000))
            ) THEN '3.5, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok3 b3 on b2.id = b3.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108