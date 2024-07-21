SELECT  (b2.prov+b2.kab+b2.kec+b2.des+b2.nbs) as kode_wilayah, 
        b2.status_dok,
        b2.b1r108 as NURT, 
        b2.b1r109 as NUS, 
        b2.nama_krt, 
        b2.nama_utp,
        b7r701,
        CONCAT(
            CASE WHEN (
                b7r702 like '4499' and LOWER(b7r701) like '%lainnya:%lain%'
            ) THEN '7.1, ' END,

            CASE WHEN (
                ((b7r702 like '4499') and 
                (LOWER(b7r701) like '%kerbau%potong%' OR 
                LOWER(b7r701) like '%kerbau%perah%' OR 
                LOWER(b7r701) like '%sapi%potong%' OR
                LOWER(b7r701) like '%sapi%perah%' OR
                LOWER(b7r701) like '%kuda%' OR
                LOWER(b7r701) like '%babi%' OR
                LOWER(b7r701) like '%domba%potong%' OR
                LOWER(b7r701) like '%domba%perah%' OR
                LOWER(b7r701) like '%kambing%potong%' OR
                LOWER(b7r701) like '%kambing%perah%' OR
                LOWER(b7r701) like '%kelinci%potong%' OR
                LOWER(b7r701) like '%kelinci%non%potong%' OR
                LOWER(b7r701) like '%rusa%' OR
                LOWER(b7r701) like '%unta%' OR
                LOWER(b7r701) like '%keledai%' OR
                LOWER(b7r701) like '%ayam%kampung%biasa%' OR
                LOWER(b7r701) like '%ayam%kampung%pedaging%' OR
                LOWER(b7r701) like '%ayam%kampung%petelur%' OR
                LOWER(b7r701) like '%ayam%ras%pedaging%' OR
                LOWER(b7r701) like '%ayam%ras%petelur%' OR
                LOWER(b7r701) like '%itik%pedaging%' OR
                LOWER(b7r701) like '%itik%petelur%' OR
                LOWER(b7r701) like '%itik%manila%' OR
                LOWER(b7r701) like '%angsa%' OR
                LOWER(b7r701) like '%merpati%' OR
                LOWER(b7r701) like '%puyuh%pedaging%' OR
                LOWER(b7r701) like '%puyuh%petelur%' OR
                LOWER(b7r701) like '%kalkun%' OR
                LOWER(b7r701) like '%burung%unta%' OR
                LOWER(b7r701) like '%anjing%' OR
                LOWER(b7r701) like '%cacing%' OR
                LOWER(b7r701) like '%hamster%' OR
                LOWER(b7r701) like '%marmut%' OR
                LOWER(b7r701) like '%jangkrik%' OR
                LOWER(b7r701) like '%kucing%' OR
                LOWER(b7r701) like '%lebah%' OR
                LOWER(b7r701) like '%ulat%sutera%' OR
                LOWER(b7r701) like '%walet%' OR
                LOWER(b7r701) like '%ayam%lokal%lainnya%' OR
                LOWER(b7r701) like '%unggas%non%pangan%'))
            ) THEN '7.2, ' END,

            CASE WHEN (
                ((b7r702 like '4499') and 
                (LOWER(b7r701) like '%Akara%' OR
                LOWER(b7r701) like '%Alap%' OR
                LOWER(b7r701) like '%Albakora%' OR
                LOWER(b7r701) like '%Alu%' OR
                LOWER(b7r701) like '%Anoa%' OR
                LOWER(b7r701) like '%Arenga%' OR
                LOWER(b7r701) like '%Arowana%' OR
                LOWER(b7r701) like '%Arulis%' OR
                LOWER(b7r701) like '%Arwana%' OR
                LOWER(b7r701) like '%Badis%' OR
                LOWER(b7r701) like '%Balam%' OR
                LOWER(b7r701) like '%Bandeng%' OR
                LOWER(b7r701) like '%Bangau%' OR
                LOWER(b7r701) like '%Banteng%' OR
                LOWER(b7r701) like '%Banyar%' OR
                LOWER(b7r701) like '%Barbir%' OR
                LOWER(b7r701) like '%Barbus%' OR
                LOWER(b7r701) like '%Baronang%' OR
                LOWER(b7r701) like '%Barong%' OR
                LOWER(b7r701) like '%Baung%' OR
                LOWER(b7r701) like '%Bawal%' OR
                LOWER(b7r701) like '%Bayan%' OR
                LOWER(b7r701) like '%Belanak%' OR
                LOWER(b7r701) like '%Belibis%' OR
                LOWER(b7r701) like '%Belida%' OR
                LOWER(b7r701) like '%Beloso%' OR
                LOWER(b7r701) like '%Belut%' OR
                LOWER(b7r701) like '%Bentilap%' OR
                LOWER(b7r701) like '%Bentong%' OR
                LOWER(b7r701) like '%Beo%' OR
                LOWER(b7r701) like '%Beronang%' OR
                LOWER(b7r701) like '%Beruang%' OR
                LOWER(b7r701) like '%Beruk%' OR
                LOWER(b7r701) like '%Berukung%' OR
                LOWER(b7r701) like '%Betok%' OR
                LOWER(b7r701) like '%Betta%' OR
                LOWER(b7r701) like '%Betutu%' OR
                LOWER(b7r701) like '%Beunteur%' OR
                LOWER(b7r701) like '%Biawak%' OR
                LOWER(b7r701) like '%Bilih%' OR
                LOWER(b7r701) like '%Black%Gost%' OR
                LOWER(b7r701) like '%Botia%' OR
                LOWER(b7r701) like '%Buaya%' OR
                LOWER(b7r701) like '%Bulu%' OR
                LOWER(b7r701) like '%Bunglon%' OR
                LOWER(b7r701) like '%Cakalang%' OR
                LOWER(b7r701) like '%Cenderawasih%' OR
                LOWER(b7r701) like '%Cendro%' OR
                LOWER(b7r701) like '%Ciblek%' OR
                LOWER(b7r701) like '%Corydoras%' OR
                LOWER(b7r701) like '%Cucut%' OR
                LOWER(b7r701) like '%Cumi%' OR
                LOWER(b7r701) like '%Cupang%' OR
                LOWER(b7r701) like '%Dara%' OR
                LOWER(b7r701) like '%Depik%' OR
                LOWER(b7r701) like '%Diskus%' OR
                LOWER(b7r701) like '%Dogol%' OR
                LOWER(b7r701) like '%Ekor%Kuning%' OR
                LOWER(b7r701) like '%Elang%' OR
                LOWER(b7r701) like '%Endeavor%Pawn%' OR
                LOWER(b7r701) like '%Fasciata%' OR
                LOWER(b7r701) like '%Gabus%' OR
                LOWER(b7r701) like '%Gajah%' OR
                LOWER(b7r701) like '%Gaji%' OR
                LOWER(b7r701) like '%Galah%' OR
                LOWER(b7r701) like '%Gapi%' OR
                LOWER(b7r701) like '%Genggehek%' OR
                LOWER(b7r701) like '%Gerot%' OR
                LOWER(b7r701) like '%Golok%' OR
                LOWER(b7r701) like '%grago%' OR
                LOWER(b7r701) like '%Grim%' OR
                LOWER(b7r701) like '%Gulamah%' OR
                LOWER(b7r701) like '%Gurame%' OR
                LOWER(b7r701) like '%Gurami%' OR
                LOWER(b7r701) like '%Gurita%' OR
                LOWER(b7r701) like '%Hampal%' OR
                LOWER(b7r701) like '%Harimau%' OR
                LOWER(b7r701) like '%Harlequin%' OR
                LOWER(b7r701) like '%Head%Stander%' OR
                LOWER(b7r701) like '%Ikan%' OR
                LOWER(b7r701) like '%Liar%' OR
                LOWER(b7r701) like '%Jalak%' OR
                LOWER(b7r701) like '%Jambal%' OR
                LOWER(b7r701) like '%Japuh%' OR
                LOWER(b7r701) like '%Jelawat%' OR
                LOWER(b7r701) like '%Jerbung%' OR
                LOWER(b7r701) like '%Jrebung%' OR
                LOWER(b7r701) like '%Julung%' OR
                LOWER(b7r701) like '%Kacer%' OR
                LOWER(b7r701) like '%Kadal%' OR
                LOWER(b7r701) like '%Kaisar%' OR
                LOWER(b7r701) like '%Kakap%' OR
                LOWER(b7r701) like '%Kakatua%' OR
                LOWER(b7r701) like '%Kalong%' OR
                LOWER(b7r701) like '%Kancera%' OR
                LOWER(b7r701) like '%Kancil%' OR
                LOWER(b7r701) like '%Kangguru%' OR
                LOWER(b7r701) like '%Kapas%' OR
                LOWER(b7r701) like '%Karandang%' OR
                LOWER(b7r701) like '%Karang%' OR
                LOWER(b7r701) like '%Kartetra%' OR
                LOWER(b7r701) like '%Kasturi%' OR
                LOWER(b7r701) like '%Katak%' OR
                LOWER(b7r701) like '%Kehung%' OR
                LOWER(b7r701) like '%Kelabau%' OR
                LOWER(b7r701) like '%Kelelawar%' OR
                LOWER(b7r701) like '%Kembung%' OR
                LOWER(b7r701) like '%Kenari%' OR
                LOWER(b7r701) like '%Kendia%' OR
                LOWER(b7r701) like '%Kepiting%' OR
                LOWER(b7r701) like '%Kera%' OR
                LOWER(b7r701) like '%Kerang%' OR
                LOWER(b7r701) like '%Kerapu%' OR
                LOWER(b7r701) like '%Keting%' OR
                LOWER(b7r701) like '%Ketup%' OR
                LOWER(b7r701) like '%Kijang%' OR
                LOWER(b7r701) like '%Kissing%Gourame%' OR
                LOWER(b7r701) like '%Koan%' OR
                LOWER(b7r701) like '%Kodok%' OR
                LOWER(b7r701) like '%Koi%' OR
                LOWER(b7r701) like '%Koki%' OR
                LOWER(b7r701) like '%Kongo%Salem%' OR
                LOWER(b7r701) like '%Koral%transplant%' OR
                LOWER(b7r701) like '%Kuniran%' OR
                LOWER(b7r701) like '%Kupu%' OR
                LOWER(b7r701) like '%Kura%' OR
                LOWER(b7r701) like '%Kurau%' OR
                LOWER(b7r701) like '%Kurisi%' OR
                LOWER(b7r701) like '%Kuro%' OR
                LOWER(b7r701) like '%Kutilang%' OR
                LOWER(b7r701) like '%Kuwe%' OR
                LOWER(b7r701) like '%Kuwuk%' OR
                LOWER(b7r701) like '%Labi%' OR
                LOWER(b7r701) like '%Lais%' OR
                LOWER(b7r701) like '%Lalang%' OR
                LOWER(b7r701) like '%Lalawak%' OR
                LOWER(b7r701) like '%Lalia%' OR
                LOWER(b7r701) like '%Lampan%' OR
                LOWER(b7r701) like '%Layang%' OR
                LOWER(b7r701) like '%Layaran%' OR
                LOWER(b7r701) like '%Layur%' OR
                LOWER(b7r701) like '%Lele%' OR
                LOWER(b7r701) like '%Lemadang%' OR
                LOWER(b7r701) like '%Lemon%Chichlid%' OR
                LOWER(b7r701) like '%Lempuk%' OR
                LOWER(b7r701) like '%Lemuru%' OR
                LOWER(b7r701) like '%Lencam%' OR
                LOWER(b7r701) like '%Lidah%' OR
                LOWER(b7r701) like '%Lindi%' OR
                LOWER(b7r701) like '%Lola%' OR
                LOWER(b7r701) like '%Lolosi%Biru%' OR
                LOWER(b7r701) like '%Lomei%' OR
                LOWER(b7r701) like '%Louhan%' OR
                LOWER(b7r701) like '%Lukas%' OR
                LOWER(b7r701) like '%Madidihang%' OR
                LOWER(b7r701) like '%Maleo%' OR
                LOWER(b7r701) like '%Mambruk%' OR
                LOWER(b7r701) like '%Manggilala%' OR
                LOWER(b7r701) like '%Manvis%' OR
                LOWER(b7r701) like '%Manyung%' OR
                LOWER(b7r701) like '%Mas%' OR
                LOWER(b7r701) like '%Menjangan%' OR
                LOWER(b7r701) like '%Merak%' OR
                LOWER(b7r701) like '%Moa%Kembang%' OR
                LOWER(b7r701) like '%Mola%' OR
                LOWER(b7r701) like '%Moli%' OR
                LOWER(b7r701) like '%Monyet%' OR
                LOWER(b7r701) like '%Mujair%' OR
                LOWER(b7r701) like '%Mulut%Api%' OR
                LOWER(b7r701) like '%Murai%Batu%' OR
                LOWER(b7r701) like '%Musang%' OR
                LOWER(b7r701) like '%Nias%' OR
                LOWER(b7r701) like '%Nilem%' OR
                LOWER(b7r701) like '%Niyasa%' OR
                LOWER(b7r701) like '%Nomei%' OR
                LOWER(b7r701) like '%Nuri%' OR
                LOWER(b7r701) like '%Orang%Utan%' OR
                LOWER(b7r701) like '%Oskar%' OR
                LOWER(b7r701) like '%Paradis%' OR
                LOWER(b7r701) like '%Parang%' OR
                LOWER(b7r701) like '%Paray%' OR
                LOWER(b7r701) like '%Pari%' OR
                LOWER(b7r701) like '%Patin%' OR
                LOWER(b7r701) like '%Payangka%' OR
                LOWER(b7r701) like '%Pedang%' OR
                LOWER(b7r701) like '%Peperek%Slipmouths%' OR
                LOWER(b7r701) like '%Perkutut%' OR
                LOWER(b7r701) like '%Phantom%Merah%' OR
                LOWER(b7r701) like '%Pisang%' OR
                LOWER(b7r701) like '%Plati%' OR
                LOWER(b7r701) like '%Pleci%' OR
                LOWER(b7r701) like '%Pucul%' OR
                LOWER(b7r701) like '%Rainbow%' OR
                LOWER(b7r701) like '%Raja%' OR
                LOWER(b7r701) like '%Rajungan%' OR
                LOWER(b7r701) like '%Rangkong%' OR
                LOWER(b7r701) like '%Ratu%' OR
                LOWER(b7r701) like '%Remis%' OR
                LOWER(b7r701) like '%Repang%' OR
                LOWER(b7r701) like '%Rostris%' OR
                LOWER(b7r701) like '%Rumput%Laut%' OR
                LOWER(b7r701) like '%Sadarin%' OR
                LOWER(b7r701) like '%Sebelah%' OR
                LOWER(b7r701) like '%Selanget%' OR
                LOWER(b7r701) like '%Selar%' OR
                LOWER(b7r701) like '%Semah%' OR
                LOWER(b7r701) like '%Senangin%' OR
                LOWER(b7r701) like '%Senuk%' OR
                LOWER(b7r701) like '%Sepat%' OR
                LOWER(b7r701) like '%Seren%' OR
                LOWER(b7r701) like '%Sidat%' OR
                LOWER(b7r701) like '%Sili%' OR
                LOWER(b7r701) like '%Siluk%' OR
                LOWER(b7r701) like '%Silver%Dollar%' OR
                LOWER(b7r701) like '%Singaringan%' OR
                LOWER(b7r701) like '%Siput%' OR
                LOWER(b7r701) like '%Siro%' OR
                LOWER(b7r701) like '%Slengseng%' OR
                LOWER(b7r701) like '%Sliro%' OR
                LOWER(b7r701) like '%Soa%Payung%' OR
                LOWER(b7r701) like '%Sotong%' OR
                LOWER(b7r701) like '%Sulawesi%' OR
                LOWER(b7r701) like '%Sumbawa%' OR
                LOWER(b7r701) like '%Sumpit%' OR
                LOWER(b7r701) like '%Sunglir%' OR
                LOWER(b7r701) like '%Swanggi%' OR
                LOWER(b7r701) like '%Talang%' OR
                LOWER(b7r701) like '%Tambakan%' OR
                LOWER(b7r701) like '%Tapir%' OR
                LOWER(b7r701) like '%tawar%' OR
                LOWER(b7r701) like '%Tawes%' OR
                LOWER(b7r701) like '%Tekukur%' OR
                LOWER(b7r701) like '%Tembang%' OR
                LOWER(b7r701) like '%Tempeh%' OR
                LOWER(b7r701) like '%Tenggiri%' OR
                LOWER(b7r701) like '%Terbang%' OR
                LOWER(b7r701) like '%Teri%' OR
                LOWER(b7r701) like '%Teripang%' OR
                LOWER(b7r701) like '%Terubuk%' OR
                LOWER(b7r701) like '%Tetengkek%' OR
                LOWER(b7r701) like '%Tigawaja%' OR
                LOWER(b7r701) like '%Tiger%Ceplok%' OR
                LOWER(b7r701) like '%Tiram%' OR
                LOWER(b7r701) like '%Toman%' OR
                LOWER(b7r701) like '%Tongkol%' OR
                LOWER(b7r701) like '%Tontong%tebu%' OR
                LOWER(b7r701) like '%Trenggiling%' OR
                LOWER(b7r701) like '%Tuna%' OR
                LOWER(b7r701) like '%Tupai%' OR
                LOWER(b7r701) like '%Ubur%' OR
                LOWER(b7r701) like '%Udang%' OR
                LOWER(b7r701) like '%Ular%' OR
                LOWER(b7r701) like '%Vaname%' OR
                LOWER(b7r701) like '%Wader%' OR
                LOWER(b7r701) like '%Windu%'))
            ) THEN '7.3, ' END,
            
            CASE WHEN (
                 b7r702 in ('4101','4102','4103','4104','4105') and (b7r704a_k2 > 50)
            ) THEN '7.5, ' END,

            CASE WHEN (
                b7r702 in ('4201', '4202', '4203', '4204', '4205') and (b7r704a_k2 > 100)
            ) THEN '7.6, ' END,

            CASE WHEN (
                b7r702 in ('4302', '4303') and (b7r704a_k2 < 50)
            ) THEN '7.7, ' END,

            CASE WHEN (
                b7r702 in ('4413') and (b7r704a_k2 > 100)
            ) THEN '7.8, ' END,

            CASE WHEN (
                b7r702 in ('4101','4103','4104','4105')
                and(cast(cast(b7r704a_k3 as bigint)*1.00/nullif(cast(b7r704a_k2 as bigint)*1.00,0) as decimal (10,2)) > 50000 or cast(cast(b7r704a_k3 as bigint)*1.00/nullif(cast(b7r704a_k2 as bigint)*1.00,0) as decimal (10,2)) < 5000)               
            ) THEN '7.9, ' END
            
        ) AS Anomali
FROM Blok2 b2
    left join Blok7 b7 on b2.id = b7.id
ORDER BY b2.prov,b2.kab,b2.kec,b2.des,b2.nbs,b2.b1r109, b2.b1r108