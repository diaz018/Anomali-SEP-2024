SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b9r901,
        CONCAT(
            CASE WHEN (
                ((b9r902  LIKE '%49%' or b9r902 LIKE '%99%'))
            ) THEN '9.1, ' END,

            CASE WHEN (
                ((b9r903  > '100000'))
            ) THEN '9.2, ' END,

            CASE WHEN (
                ((b9r904b  > '100000'))
            ) THEN '9.3, ' END,
            
            CASE WHEN (
                (((b9r905a+b9r905b)/b9r904b > '0' and (b9r905a+b9r905b)/NULLIF(b9r904b,0) < '10') or (b9r905a+b9r905b)/NULLIF(b9r904b,0)   > '50000')
            ) THEN '9.4, ' END,

            CASE WHEN (
                ((b9r905c  > '0' and b9r905c  < '5') or b9r905c  > '100000')
            ) THEN '9.5, ' END,

            CASE WHEN (
                (b9r905c  > '0' and b9r905c >   (b9r905a + b9r905b))
            ) THEN '9.6, ' END,

            CASE WHEN (
                (b9r906 > '0' and (b9r906 < '100' or b9r906 >'1000000'))
            ) THEN '9.7, ' END,

            CASE WHEN (
                (b9r907 > '0' and (b9r907 < '100' or b9r907 >'1000000'))
            ) THEN '9.8, ' END,

            CASE WHEN (
                ((b9r908 > '0' and b9r908 < '100') or b9r908 >'2500000')
            ) THEN '9.9, ' END,

            CASE WHEN (
                ((b9r909 > '0' and b9r909 < '1000') or b9r909 >'30000')
            ) THEN '9.10, ' END,

            CASE WHEN (
                (((b9r910a+b9r910b+b9r910c) > '0' and (b9r910a+b9r910b+b9r910c) < '1000') or (b9r910a+b9r910b+b9r910c)  >'10000000')
            ) THEN '9.11, ' END,

            CASE WHEN (
                ( b9r911 >'1000000')
            ) THEN '9.12, ' END,

            CASE WHEN (
                ( b9r912 >'1000000')
            ) THEN '9.13, ' END,

            CASE WHEN (
                (b9rc <= '0')
            ) THEN '9.14, ' END,

            CASE WHEN (
                (b9rd <= '0')
            ) THEN '9.15, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok9 b9 on b2.id = b9.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108