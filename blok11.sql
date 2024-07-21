SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b11r1101,
        CONCAT(
            CASE WHEN (
                ((b11r1105 < '5' or b11r1105 > '500000'))
            ) THEN '11.1, ' END,

            CASE WHEN (
                (b11r1105)>0 and (cast(b11r1107a as decimal)/NULLIF(cast(b11r1105 as decimal),0)<'1' or cast(b11r1107a as decimal)/NULLIF(cast(b11r1105 as decimal),0)>'50')
            ) THEN '11.2, ' END,

            CASE WHEN (
                (b11r1106a>0) and (b11r1106b>0) and (cast(b11r1106b as decimal) / NULLIF(cast(b11r1106a as decimal),0)*1000 > '5000000' or (cast(b11r1106b as decimal) / NULLIF(cast(b11r1106a as decimal),0))*1000 < '10')
            ) THEN '11.3, ' END,
            
            CASE WHEN (
                (b11r1107a)>0 and ((b11r1107b/NULLIF(b11r1107a,0))*1000 > 350000 or (b11r1107b/NULLIF(b11r1107a,0))*1000 < 1000)
            ) THEN '11.4, ' END,

            CASE WHEN (
                b11r1110>10000000
            ) THEN '11.5, ' END,

            CASE WHEN (
                (b11r1110>0) AND (b11r1121>0) and (cast(b11r1110 as decimal)/NULLIF(cast(b11r1121 as decimal),0)<0.5 or cast(b11r1110 as decimal)/NULLIF(cast(b11r1121 as decimal),0) >5)
            ) THEN '11.6, ' END,

            CASE WHEN (
                (b11r1111>0) and (b11r1121>0) and (b11r1102='5166' or b11r1102='5215') and cast(b11r1111 as decimal)/NULLIF(cast(b11r1121 as decimal),0)>0.4133*1.5
            ) THEN '11.7, ' END,

            CASE WHEN (
                (b11r1121>0) and (b11r1102 like '54%%') and cast(b11r1111 as decimal)/NULLIF(cast(b11r1121 as decimal),0)>0.7153*1.1
            ) THEN '11.8, ' END,

            CASE WHEN (
                ((b11r1111+b11r1112)>0 and b11r1121>0) and (b11r1102='5188' or b11r1102='5189' or b11r1102='5190' or b11r1102='5191' or b11r1102='5192' or b11r1102='5193' or b11r1102='5194' or b11r1102='5195' or b11r1102='5218' or b11r1102='5219' or b11r1102='5220' or b11r1102='55221' or b11r1102='5222' or b11r1102='5223' or b11r1102='5224' or b11r1102='5225' or b11r1102='5372' or b11r1102='5373' or b11r1102='5374' or b11r1102='5375' or b11r1102='5376' or b11r1102='5377' or b11r1102='5425') and ((cast(b11r1113 as decimal) + cast(b11r1114 as decimal)) / NULLIF(cast(b11r1121 as decimal),0))>0.13335
            ) THEN '11.9, ' END,

            CASE WHEN (
                (b11r1111>0) and (b11r1121>0) and (b11r1102!='5166' and b11r1102!='5215' and b11r1102 not like '54%%' and b11r1102!='5188' and b11r1102!='5189' and b11r1102!='5190' and b11r1102!='5191' and b11r1102!='5192' and b11r1102!='5193' and b11r1102!='5194' and b11r1102!='5195' and b11r1102!='5218' and b11r1102!='5219' and b11r1102!='5220' and b11r1102!='5221' and b11r1102!='5222' and b11r1102!='5223' and b11r1102!='5224' and b11r1102!='5225' and b11r1102!='5372' and b11r1102!='5373' and b11r1102!='5374' and b11r1102!='5375' and b11r1102!='5376' and b11r1102!='5377' and b11r1102!='5425') and cast(b11r1111 as decimal) /NULLIF(cast(b11r1121 as decimal),0)>0.3028*1.5
            ) THEN '11.10, ' END,

            CASE WHEN (
                (b11r1121>0) and (b11r1102 like '54%%') and ((cast(b11r1113 as decimal) + cast(b11r1114 as decimal)) / NULLIF(cast(b11r1121 as decimal),0))>0.0070*1.5
            ) THEN '11.11, ' END,

            CASE WHEN (
                ((b11r1111+b11r1112)>0 and b11r1121>0) and (b11r1102='5188' or b11r1102='5189' or b11r1102='5190' or b11r1102='5191' or b11r1102='5192' or b11r1102='5193' or b11r1102='5194' or b11r1102='5195' or b11r1102='5218' or b11r1102='5219' or b11r1102='5220' or b11r1102='55221' or b11r1102='5222' or b11r1102='5223' or b11r1102='5224' or b11r1102='5225' or b11r1102='5372' or b11r1102='5373' or b11r1102='5374' or b11r1102='5375' or b11r1102='5376' or b11r1102='5377' or b11r1102='5425') and ((cast(b11r1113 as decimal) + cast(b11r1114 as decimal)) / NULLIF(cast(b11r1121 as decimal),0))>0.13335
            ) THEN '11.12, ' END,

            CASE WHEN (
                ((b11r1111+b11r1112)>0 and b11r1121>0) and (b11r1102!='5166' and b11r1102!='5215' and b11r1102 not like '54%%' and b11r1102!='5188' and b11r1102!='5189' and b11r1102!='5190' and b11r1102!='5191' and b11r1102!='5192' and b11r1102!='5193' and b11r1102!='5194' and b11r1102!='5195' and b11r1102!='5218' and b11r1102!='5219' and b11r1102!='5220' and b11r1102!='55221' and b11r1102!='5222' and b11r1102!='5223' and b11r1102!='5224' and b11r1102!='5225' and b11r1102!='5372' and b11r1102!='5373' and b11r1102!='5374' and b11r1102!='5375' and b11r1102!='5376' and b11r1102!='5377' and b11r1102!='5425') and ((cast(b11r1113 as decimal) + cast(b11r1114 as decimal)) / NULLIF(cast(b11r1121 as decimal),0))>0.17415
            ) THEN '11.13, ' END,

            CASE WHEN (
                (b11r1121>0) and (b11r1102 like '54%%') and (cast(b11r1112 as decimal)/NULLIF(cast(b11r1121 as decimal),0)) >0.3347*1.5
            ) THEN '11.14, ' END,

            CASE WHEN (
                (b11r1112>0) and (b11r1121>0) and (b11r1102='5188' or b11r1102='5189' or b11r1102='5190' or b11r1102='5191' or b11r1102='5192' or b11r1102='5193' or b11r1102='5194' or b11r1102='5195' or b11r1102='5218' or b11r1102='5219' or b11r1102='5220' or b11r1102='55221' or b11r1102='5222' or b11r1102='5223' or b11r1102='5224' or b11r1102='5225' or b11r1102='5372' or b11r1102='5373' or b11r1102='5374' or b11r1102='5375' or b11r1102='5376' or b11r1102='5377' or b11r1102='5425') and (cast(b11r1112 as decimal)/NULLIF(cast(b11r1121 as decimal),0))>0.6*1.25
            ) THEN '11.15, ' END,

            CASE WHEN (
                (b11r1112>0) and (b11r1121>0) and (b11r1102!='5166' and b11r1102!='5215' and b11r1102 not like '54%%' and b11r1102!='5188' and b11r1102!='5189' and b11r1102!='5190' and b11r1102!='5191' and b11r1102!='5192' and b11r1102!='5193' and b11r1102!='5194' and b11r1102!='5195' and b11r1102!='5218' and b11r1102!='5219' and b11r1102!='5220' and b11r1102!='5221' and b11r1102!='5222' and b11r1102!='5223' and b11r1102!='5224' and b11r1102!='5225' and b11r1102!='5372' and b11r1102!='5373' and b11r1102!='5374' and b11r1102!='5375' and b11r1102!='5376' and b11r1102!='5377' and b11r1102!='5425') and cast(b11r1112 as decimal)/NULLIF(cast(b11r1121 as decimal),0)>0.6892*1.25
            ) THEN '11.16, ' END,

            CASE WHEN (
                (b11r1121)>0 and ((b11r1102='5166' or b11r1102='5215') and cast((b11r1115a+b11r1115c) as decimal)/NULLIF(cast(b11r1121 as decimal),0)>0.3360*1.5)
            ) THEN '11.17, ' END,

            CASE WHEN (
                (b11r1121>0) and (b11r1102 like '54%%') and cast((b11r1115a+b11r1115c) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.1729*1.5
            ) THEN '11.18, ' END,

            CASE WHEN (
                ((b11r1115a+b11r1115b)>0) and (b11r1121>0) and (b11r1102='5188' or b11r1102='5189' or b11r1102='5190' or b11r1102='5191' or b11r1102='5192' or b11r1102='5193' or b11r1102='5194' or b11r1102='5195' or b11r1102='5218' or b11r1102='5219' or b11r1102='5220' or b11r1102='5221' or b11r1102='5222' or b11r1102='5223' or b11r1102='5224' or b11r1102='5225' or b11r1102='5372' or b11r1102='5373' or b11r1102='5374' or b11r1102='5375' or b11r1102='5376' or b11r1102='5377' or b11r1102='5425') and cast((b11r1115a+b11r1115c) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.37095
            ) THEN '11.19, ' END,

            CASE WHEN (
                ((b11r1115a+b11r1115b)>0) and (b11r1121>0) and (b11r1102!='5166' and b11r1102!='5215' and b11r1102 not like '54%%' and b11r1102!='5188' and b11r1102!='5189' and b11r1102!='5190' and b11r1102!='5191' and b11r1102!='5192' and b11r1102!='5193' and b11r1102!='5194' and b11r1102!='5195' and b11r1102!='5218' and b11r1102!='5219' and b11r1102!='5220' and b11r1102!='55221' and b11r1102!='5222' and b11r1102!='5223' and b11r1102!='5224' and b11r1102!='5225' and b11r1102!='5372' and b11r1102!='5373' and b11r1102!='5374' and b11r1102!='5375' and b11r1102!='5376' and b11r1102!='5377' and b11r1102!='5425') and cast((b11r1115a+b11r1115c) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.51645
            ) THEN '11.20, ' END,

            CASE WHEN (
                (B11r1121)>0 and ((b11r1102='5166' or b11r1102='5215') and cast((b11r1118a+b11r1118b) as decimal)/NULLIF(cast(b11r1121 as decimal),0) >0.0492*1.5)
            ) THEN '11.21, ' END,

            CASE WHEN (
                (b11r1121>0) and (b11r1102 like '54%%') and cast((b11r1118a+b11r1118b) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.1729*1.5
            ) THEN '11.22, ' END,

            CASE WHEN (
                (b11r1118a+b11r1118b>0) and (b11r1121>0) and (b11r1102='5188' or b11r1102='5189' or b11r1102='5190' or b11r1102='5191' or b11r1102='5192' or b11r1102='5193' or b11r1102='5194' or b11r1102='5195' or b11r1102='5218' or b11r1102='5219' or b11r1102='5220' or b11r1102='5221' or b11r1102='5222' or b11r1102='5223' or b11r1102='5224' or b11r1102='5225' or b11r1102='5372' or b11r1102='5373' or b11r1102='5374' or b11r1102='5375' or b11r1102='5376' or b11r1102='5377' or b11r1102='5425') and cast((b11r1118a+b11r1118b) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.3534
            ) THEN '11.23, ' END,

            CASE WHEN (
                (b11r1118a+b11r1118b>0) and (b11r1121>0) and (b11r1102!='5166' and b11r1102!='5215' and b11r1102 not like '54%%' and b11r1102!='5188' and b11r1102!='5189' and b11r1102!='5190' and b11r1102!='5191' and b11r1102!='5192' and b11r1102!='5193' and b11r1102!='5194' and b11r1102!='5195' and b11r1102!='5218' and b11r1102!='5219' and b11r1102!='5220' and b11r1102!='55221' and b11r1102!='5222' and b11r1102!='5223' and b11r1102!='5224' and b11r1102!='5225' and b11r1102!='5372' and b11r1102!='5373' and b11r1102!='5374' and b11r1102!='5375' and b11r1102!='5376' and b11r1102!='5377' and b11r1102!='5425') and cast((b11r1118a+b11r1118b) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.3462
            ) THEN '11.24, ' END,

            CASE WHEN (
                (b11r1121>0) and (b11r1102='5166' or b11r1102='5215') and cast((b11r1116+b11r1117+b11r1119+b11r1120) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.504
            ) THEN '11.25, ' END,

            CASE WHEN (
                (b11r1121>0) and (b11r1102 like '54%%') and cast((b11r1116+b11r1117+b11r1119+b11r1120) as decimal)/NULLIF(cast(b11r1121 as decimal),0) >0.1729*1.5
            ) THEN '11.26, ' END,

            CASE WHEN (
                (b11r1116+b11r1117+b11r1119+b11r1120>0) and (b11r1121>0) and (b11r1102='5188' or b11r1102='5189' or b11r1102='5190' or b11r1102='5191' or b11r1102='5192' or b11r1102='5193' or b11r1102='5194' or b11r1102='5195' or b11r1102='5218' or b11r1102='5219' or b11r1102='5220' or b11r1102='5221' or b11r1102='5222' or b11r1102='5223' or b11r1102='5224' or b11r1102='5225' or b11r1102='5372' or b11r1102='5373' or b11r1102='5374' or b11r1102='5375' or b11r1102='5376' or b11r1102='5377' or b11r1102='5425') and cast((b11r1116+b11r1117+b11r1119+b11r1120) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.37095
            ) THEN '11.27, ' END,

            CASE WHEN (
                (b11r1116+b11r1117+b11r1119+b11r1120>0) and (b11r1121>0) and (b11r1102!='5166' and b11r1102!='5215' and b11r1102 not like '54%%' and b11r1102!='5188' and b11r1102!='5189' and b11r1102!='5190' and b11r1102!='5191' and b11r1102!='5192' and b11r1102!='5193' and b11r1102!='5194' and b11r1102!='5195' and b11r1102!='5218' and b11r1102!='5219' and b11r1102!='5220' and b11r1102!='55221' and b11r1102!='5222' and b11r1102!='5223' and b11r1102!='5224' and b11r1102!='5225' and b11r1102!='5372' and b11r1102!='5373' and b11r1102!='5374' and b11r1102!='5375' and b11r1102!='5376' and b11r1102!='5377' and b11r1102!='5425') and cast((b11r1116+b11r1117+b11r1119+b11r1120) as decimal)/NULLIF(cast(b11r1121 as decimal),0) > 0.51645
            ) THEN '11.28, ' END,

            CASE WHEN (
                ((b11r1119 > 1000000))
            ) THEN '11.29, ' END  
        ) AS Anomali
FROM Blok2 b2
    left join Blok11 b11 on b2.id = b11.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108