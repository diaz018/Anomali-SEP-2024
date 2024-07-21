SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b6r601,
        CONCAT(
            CASE WHEN (
                b6r602 not in ('2306', '3101', '3102', '3103', '3104', '3105', '3106', '3107', '3108', '3109', '3110', '3111', '3112', '3113', '3114', '3115', '3116', '3117', '3118', '3119', '3120', '3121', '3123', '3124', '3125', '3126', '3127', '3128', '3129', '3130', '3131', '3132', '3198', '3199', '2612', '3201', '3202', '3203', '3204', '3205', '3206', '3207', '3208', '3209', '3210', '3211', '3212', '3213', '3299')
            ) THEN '6.1, ' END,

            CASE WHEN (
                (b6r602 like '3%99') and (
                (b6r601 like '%aren%') or
                (b6r601 like '%cengkeh%') or
                (b6r601 like '%gambir%') or
                (b6r601 like '%mete%') or
                (b6r601 like '%jarak%pagar%') or
                (b6r601 like '%kakao%') or
                (b6r601 like '%kakao%') or
                (b6r601 like '%coklat%') or
                (b6r601 like '%kapok%') or
                (b6r601 like '%karet%') or
                (b6r601 like '%kayu%manis%') or
                (b6r601 like '%kelapa%') or
                (b6r601 like '%sawit%') or
                (b6r601 like '%kemenyan%') or
                (b6r601 like '%kemiri%') or
                (b6r601 like '%kenanga%') or
                (b6r601 like '%kina%') or
                (b6r601 like '%klerek%') or
                (b6r601 like '%kopi%') or
                (b6r601 like '%lada%') or
                (b6r601 like '%lontar%') or
                (b6r601 like '%panili%') or
                (b6r601 like '%pala%') or
                (b6r601 like '%pandan%anyaman%') or
                (b6r601 like '%pinang%') or
                (b6r601 like '%sagu%') or
                (b6r601 like '%soga%') or
                (b6r601 like '%teh%') or
                (b6r601 like '%andaliman%') or
                (b6r601 like '%gayam%') or
                (b6r601 like '%kurma%') or
                (b6r601 like '%abaca%manila%') or
                (b6r601 like '%akar%wangi%') or
                (b6r601 like '%jute%') or
                (b6r601 like '%kapas%') or
                (b6r601 like '%kenaf%') or
                (b6r601 like '%nilam%') or
                (b6r601 like '%rami%') or
                (b6r601 like '%rosela%') or
                (b6r601 like '%sereh%wangi%') or
                (b6r601 like '%tebu%') or
                (b6r601 like '%tembakau%') or
                (b6r601 like '%rumput%gajah%') or
                (b6r601 like '%sisal%'))
            ) THEN '6.4, ' END,

            CASE WHEN (
                ((b6r603 > 250000) or (b6r603 < 4))
            ) THEN '6.5, ' END,
            
            CASE WHEN (
                (b6r604a > 0 AND ((b6r604b/NULLIF(b6r604a,0) > b6r603)))
            ) THEN '6.6, ' END,

            CASE WHEN (
                (b6r604d > 0 AND ((b6r604d/NULLIF(b6r604c,0) > b6r603)))
            ) THEN '6.7, ' END,

            CASE WHEN (
                (b6r605c > b6r605b)
            ) THEN '6.8, ' END,

            CASE WHEN (
                (b6r605d > b6r605b)
            ) THEN '6.9, ' END,

            CASE WHEN (
                ((b6r605c + b6r605d) > b6r605b)
            ) THEN '6.10, ' END,

            CASE WHEN (
                (b6r602 in ('3201') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.1 or b6r606h/NULLIF(b6r604d,0)>0.3)) or 
                (b6r602 in ('3202') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.08 or b6r606h/NULLIF(b6r604d,0)>0.23)) or 
                (b6r602 in ('3203') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.13 or b6r606h/NULLIF(b6r604d,0)>0.38)) or 
                (b6r602 in ('3204') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.01 or b6r606h/NULLIF(b6r604d,0)>0.04)) or
                (b6r602 in ('3205') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.13 or b6r606h/NULLIF(b6r604d,0)>0.38)) or
                (b6r602 in ('3206') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.46 or b6r606h/NULLIF(b6r604d,0)>1.39)) or
                (b6r602 in ('3207') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.14 or b6r606h/NULLIF(b6r604d,0)>0.42)) or
                (b6r602 in ('3208') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.11 or b6r606h/NULLIF(b6r604d,0)>0.34)) or
                (b6r602 in ('3209') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<1.11 or b6r606h/NULLIF(b6r604d,0)>3.32)) or
                (b6r602 in ('3210') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<3.51 or b6r606h/NULLIF(b6r604d,0)>10.54)) or
                (b6r602 in ('3211') and (b6r604d)>0 and (b6r606h/NULLIF(b6r604d,0)<0.06 or b6r606h/NULLIF(b6r604d,0)>0.18))
            ) THEN '6.11, ' END,

            CASE WHEN (
                (b6r602 in ('3101') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<50.64 or b6r606h/NULLIF(b6r605c,0)>151.91)) or 
                (b6r602 in ('3102') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<2.51 or b6r606h/NULLIF(b6r605c,0)>7.54)) or 
                (b6r602 in ('3103') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<1.06 or b6r606h/NULLIF(b6r605c,0)>3.17)) or 
                (b6r602 in ('3104') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<1.50 or b6r606h/NULLIF(b6r605c,0)>4.50)) or
                (b6r602 in ('3105') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<2.57 or b6r606h/NULLIF(b6r605c,0)>7.71)) or
                (b6r602 in ('3106') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.04 or b6r606h/NULLIF(b6r605c,0)>0.13)) or
                (b6r602 in ('3107') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.32 or b6r606h/NULLIF(b6r605c,0)>0.97)) or
                (b6r602 in ('3108') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<1.75 or b6r606h/NULLIF(b6r605c,0)>5.24)) or
                (b6r602 in ('3109') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<3.30 or b6r606h/NULLIF(b6r605c,0)>9.89)) or
                (b6r602 in ('3110') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.68 or b6r606h/NULLIF(b6r605c,0)>2.03)) or
                (b6r602 in ('3111') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<57.82 or b6r606h/NULLIF(b6r605c,0)>173.45)) or
                (b6r602 in ('3112') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<17.44 or b6r606h/NULLIF(b6r605c,0)>52.31)) or
                (b6r602 in ('3114') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<3.67 or b6r606h/NULLIF(b6r605c,0)>11.01)) or
                (b6r602 in ('3115') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<2.21 or b6r606h/NULLIF(b6r605c,0)>6.62)) or
                (b6r602 in ('3117') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.30 or b6r606h/NULLIF(b6r605c,0)>0.90)) or
                (b6r602 in ('3119') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.25 or b6r606h/NULLIF(b6r605c,0)>0.76)) or
                (b6r602 in ('3120') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.17 or b6r606h/NULLIF(b6r605c,0)>0.52)) or
                (b6r602 in ('3123') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.04 or b6r606h/NULLIF(b6r605c,0)>0.12)) or
                (b6r602 in ('3124') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<1.95 or b6r606h/NULLIF(b6r605c,0)>5.84)) or
                (b6r602 in ('3126') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.36 or b6r606h/NULLIF(b6r605c,0)>1.09)) or
                (b6r602 in ('3127') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<15.23 or b6r606h/NULLIF(b6r605c,0)>45.68)) or
                (b6r602 in ('3129') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<0.07 or b6r606h/NULLIF(b6r605c,0)>0.21)) or
                (b6r602 in ('3198') and (b6r605c)>0 and (b6r606h/NULLIF(b6r605c,0)<183.5 or b6r606h/NULLIF(b6r605c,0)>550.49))
            ) THEN '6.12, ' END,

            CASE WHEN (
                ((b6r602 = '3103') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 45.52 or b6r607a/NULLIF(b6r606h,0) > 136.57)) or
                ((b6r602 = '3105') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 8.40 or b6r607a/NULLIF(b6r606h,0) > 25.21)) or
                ((b6r602 = '3107') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 10.62 or b6r607a/NULLIF(b6r606h,0) > 31.87)) or 
                ((b6r602 = '3109') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 3.98 or b6r607a/NULLIF(b6r606h,0) > 11.94)) or 
                ((b6r602 = '3111') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 1.04 or b6r607a/NULLIF(b6r606h,0) > 3.13)) or 
                ((b6r602 = '3112') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 1.64 or b6r607a/NULLIF(b6r606h,0) > 4.92)) or 
                ((b6r602 = '3114') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 15.10 or b6r607a/NULLIF(b6r606h,0) > 45.29)) or 
                ((b6r602 = '3119') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 10.86 or b6r607a/NULLIF(b6r606h,0) > 120.0)) or 
                ((b6r602 = '3120') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 44.27 or b6r607a/NULLIF(b6r606h,0) > 132.82)) or 
                ((b6r602 = '3123') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 100 or b6r607a/NULLIF(b6r606h,0) > 300)) or 
                ((b6r602 = '3124') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 26.05 or b6r607a/NULLIF(b6r606h,0) > 78.14)) or 
                ((b6r602 = '3126') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 3.77 or b6r607a/NULLIF(b6r606h,0) > 11.32)) or 
                ((b6r602 = '3127') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 11.75 or b6r607a/NULLIF(b6r606h,0) > 35.25)) or 
                ((b6r602 = '3210') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 0.33 or b6r607a/NULLIF(b6r606h,0) > 0.98)) or 
                ((b6r602 = '3211') AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 22.50 or b6r607a/NULLIF(b6r606h,0) > 67.50)) or  
                ((b6r602 in ('3101', '3102', '3104', '3106', '3108', '3110', '3113', '3115', '3116', '3117', '3118', '3121', '3125', '3128', '3129', '3130', '3131', '3132', '3198', '3199', '3201', '3202', '3203', '3204', '3205', '3206', '3209', '3212', '3213', '3299')) AND (b6r606h > 0) AND (b6r607a/NULLIF(b6r606h,0) < 1 or b6r607a/NULLIF(b6r606h,0) > 150))
            ) THEN '6.13, ' END,

            CASE WHEN (
                (b6r607b > 0) AND ((b6r607b) < 100 or (b6r607b) > 500000)
            ) THEN '6.14, ' END,

            CASE WHEN (
                (b6r607c > 0) AND ((b6r607c) < 50 or (b6r607c) > 100000)
            ) THEN '6.15, ' END,

            CASE WHEN (
                (b6r617 > 0) AND (b6r608 > 0) AND ((cast(b6r608 as decimal)/NULLIF(cast(b6r617 as decimal),0)) > 0.13)
            ) THEN '6.16, ' END,

            CASE WHEN (
                (b6r617 > 0) AND (b6r609 > 0) AND (cast(b6r609 as decimal)/NULLIF(cast(b6r617 as decimal),0) > 0.18)
            ) THEN '6.17, ' END,

            CASE WHEN (
                (b6r617 > 0) AND (b6r610 > 0) AND (cast(b6r610 as decimal)/NULLIF(cast(b6r617 as decimal),0) > 0.03)
            ) THEN '6.18, ' END,

            CASE WHEN (
                (b6r617 > 0) AND (cast((b6r611a+b6r611b+b6r611c) as decimal) > 0) AND (cast((b6r611a+b6r611b+b6r611c) as decimal)/NULLIF(cast(b6r617 as decimal),0) > 0.6)
            ) THEN '6.19, ' END,

            CASE WHEN (
                (b6r617 > 0) AND (b6r612 > 0) AND (cast(b6r612 as decimal)/NULLIF(cast(b6r617 as decimal),0) > 0.04)
            ) THEN '6.20, ' END,

            CASE WHEN (
                (b6r617 > 0) AND (b6r613 > 0) AND (cast(b6r613 as decimal)/NULLIF(cast(b6r617 as decimal),0)  > 0.08)
            ) THEN '6.21, ' END,

            CASE WHEN (
                (b6r617 > 0) AND ((b6r614a+b6r614b) > 0) AND ((cast((b6r614a+b6r614b) as decimal)/NULLIF(cast(b6r617 as decimal),0) < 0.16) OR (cast((b6r614a+b6r614b) as decimal)/NULLIF(cast(b6r617 as decimal),0) > 0.4))
            ) THEN '6.22, ' END,

            CASE WHEN (
                (b6r617 > 0) AND (b6r615 > 0) AND (cast(b6r615 as decimal)/NULLIF(cast(b6r617 as decimal),0) > 0.12)
            ) THEN '6.23, ' END,

            CASE WHEN (
                (b6r617 > 0) AND (b6r616 > 0) AND (cast(b6r616 as decimal)/NULLIF(cast(b6r617 as decimal),0) > 0.11)
            ) THEN '6.24, ' END,

            CASE WHEN (
                (b6r617 > 0) AND ((b6r607a+b6r607b+b6r607c) > 0) AND ((cast(b6r617 as decimal)/NULLIF(cast((b6r607a+b6r607b+b6r607c) as decimal),0) < 0.38) OR (cast(b6r617 as decimal)/NULLIF(cast((b6r607a+b6r607b+b6r607c) as decimal),0) > 0.82))
            ) THEN '6.25, ' END,

            CASE WHEN (
                b6rc < 0
            ) THEN '6.26, ' END,

            CASE WHEN (
                b6rd < 0
            ) THEN '6.27, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok6 b6 on b2.id = b6.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108