SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b8r801,
        CONCAT(
            CASE WHEN (
                ((b8r802  LIKE '%99%'))
            ) THEN '8.1, ' END,

            CASE WHEN (
                ((b8r803 > '100000'))
            ) THEN '8.2, ' END,

            CASE WHEN (
                (b8r805b>'0' and b8r805e/NULLIF(b8r805b,0) > '10000')
            ) THEN '8.3, ' END,
            
            CASE WHEN (
                (b8r805b>'0' and b8r805e/NULLIF(b8r805b,0) = '0' and b8r808='0')
            ) THEN '8.4, ' END,

            CASE WHEN (
                ((b8r806h > '100000'))
            ) THEN '8.5, ' END,

            CASE WHEN (
                ((b8r807a ='0' and b8r806h <> '0') or(b8r807a <>'0' and b8r806h = '0'))
            ) THEN '8.6, ' END,

            CASE WHEN (
                 ((b8r806a='1' and b8r806h <>'0' and b8r807a <> '0' and (b8r807a/NULLIF(b8r806h,0) > '30000' or b8r807a/NULLIF(b8r806h,0) < '10')) or ((b8r806a='2' or b8r806a='3') and b8r806h <>'0' and b8r807a <> '0' and b8r807a/NULLIF(b8r806h,0) > '50'))
            ) THEN '8.7, ' END,

            CASE WHEN (
                (b8r807b >'0' and b8r807b < '10' or b8r807b > '100000')
            ) THEN '8.8, ' END,

            CASE WHEN (
                (b8r807c >'0' and b8r807c < '10' or b8r807c > '50000')
            ) THEN '8.9, ' END,

            CASE WHEN (
                (b8r807a > '0' and  b8r807c >=  b8r807a)
            ) THEN '8.10, ' END,

            CASE WHEN (
                (b8r818 <>'0' and (b8r808+b8r809)*100/NULLIF(b8r818,0) > '40')
            ) THEN '8.11, ' END,

            CASE WHEN (
                (b8r818 <>'0' and  b8r810*100/NULLIF(b8r818,0) > '40')
            ) THEN '8.12, ' END,

            CASE WHEN (
                (b8r818 <>'0' and ( b8r811*100/NULLIF(b8r818,0) > '40'))
            ) THEN '8.13, ' END,

            CASE WHEN (
                (b8r818 <>'0' and (b8r812a+b8r812b+b8r812c)*100/NULLIF(b8r818,0) > '80')
            ) THEN '8.14, ' END,

            CASE WHEN (
                (b8r818 <>'0' and b8r813*100/NULLIF(b8r818,0) > '40')
            ) THEN '8.15, ' END,

            CASE WHEN (
                (b8r818 <>'0' and b8r814*100/NULLIF(b8r818,0) > '40')
            ) THEN '8.16, ' END,

            CASE WHEN (
                (b8r818 <>'0' and (b8r815a+b8r815b)*100/NULLIF(b8r818,0) > '50')
            ) THEN '8.17, ' END,

            CASE WHEN (
                (b8r818 <>'0' and b8r816*100/NULLIF(b8r818,0) > '20')
            ) THEN '8.18, ' END,

            CASE WHEN (
                (( b8rc <= '0'))
            ) THEN '8.19, ' END,

            CASE WHEN (
                (b8rd <= '0')
            ) THEN '8.20, ' END

        ) AS Anomali
FROM Blok2 b2
    left join Blok8 b8 on b2.id = b8.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108