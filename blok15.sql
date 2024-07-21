SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        CONCAT(
            CASE WHEN (
                ((b15r1501_k2 > '1000000' or b15r1501_k2 < '0'))
            ) THEN '15.1, ' END,

            CASE WHEN (
                ((b15r1501_k3 > '1000000' or b15r1501_k3 < '0'))
            ) THEN '15.2, ' END,

            CASE WHEN (
                ((b15r1502_k2 > '1000000' or b15r1502_k2 < '0'))
            ) THEN '15.3, ' END,
            
            CASE WHEN (
                ((b15r1502_k3 > '1000000' or b15r1502_k3 < '0'))
            ) THEN '15.4, ' END,

            CASE WHEN (
                ((b15r1503_k2 > '1000000' or b15r1503_k2 < '0'))
            ) THEN '15.5, ' END,

            CASE WHEN (
                ((b15r1504_k2 > '1000000' or b15r1504_k2 < '0'))
            ) THEN '15.6, ' END,

            CASE WHEN (
                ((b15r1504_k2 > '1000000' or b15r1504_k2 < '0'))
            ) THEN '15.7, ' END,

            CASE WHEN (
                ((b15r1504_k3 > '1000000' or b15r1504_k3 < '0'))
            ) THEN '15.8, ' END,

            CASE WHEN (
                ((b15r1505_k2 > '1000000' or b15r1505_k2 < '0'))
            ) THEN '15.9, ' END,

            CASE WHEN (
                ((b15r1505_k3 > '1000000' or b15r1505_k3 < '0'))
            ) THEN '15.10, ' END,
            
            CASE WHEN (
                ((b15r1506_k2 > '1000000' or b15r1506_k2 < '0'))
            ) THEN '15.11, ' END,

            CASE WHEN (
                ((b15r1506_k3 > '1000000' or b15r1506_k3 < '0'))
            ) THEN '15.12, ' END,

            CASE WHEN (
                ((b15r1507_k2 > '1000000' or b15r1507_k2 < '0'))
            ) THEN '15.13, ' END,

            CASE WHEN (
                ((b15r1507_k3 > '1000000' or b15r1507_k3 < '0'))
            ) THEN '15.14, ' END,

            CASE WHEN (
                ((b15r1508_k2 > '1000000' or b15r1508_k2 < '0'))
            ) THEN '15.15, ' END,
            
            CASE WHEN (
                ((b15r1508_k3 > '1000000' or b15r1508_k3 < '0'))
            ) THEN '15.16, ' END,

            CASE WHEN (
                ((b15r1509_k2 > '1000000' or b15r1509_k2 < '0'))
            ) THEN '15.17, ' END,

            CASE WHEN (
                ((b15r1509_k3 > '1000000' or b15r1509_k3 < '0'))
            ) THEN '15.18, ' END,

            CASE WHEN (
                ((b15r1510_k2 > '1000000' or b15r1510_k2 < '0'))
            ) THEN '15.19, ' END,

            CASE WHEN (
                ((b15r1510_k3 > '1000000' or b15r1510_k3 < '0'))
            ) THEN '15.20, ' END,

            CASE WHEN (
                ((b15r1511_k2 > '1000000' or b15r1511_k2 < '0'))
            ) THEN '15.21, ' END,

            CASE WHEN (
                ((b15r1512_k2 > '11000000' or b15r1512_k2 < '0'))
            ) THEN '15.22, ' END,

            CASE WHEN (
                ((b15r1512_k3 > '1100000' or b15r1512_k3 < '0'))
            ) THEN '15.23, ' END,

            CASE WHEN (
                ((b15rb_k2 > '1000000' or b15rb_k2 < '0'))
            ) THEN '15.24, ' END,

            CASE WHEN (
                ((b15rb_k3 > '1000000' or b15rb_k3 < '0'))
            ) THEN '15.25, ' END,

            CASE WHEN (
                ((b15rc_k2 > '12000000' or b15rc_k2 < '0'))
            ) THEN '15.26, ' END,

            CASE WHEN (
                ((b15rc_k3 > '12000000' or b15rc_k3 < '0'))
            ) THEN '15.27, ' END,

            CASE WHEN (
                (b15rd > '24000000' or b15rd < '0'  )
            ) THEN '15.28, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok15 b15 on b2.id = b15.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108