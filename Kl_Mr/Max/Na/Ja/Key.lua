local UserPy = game.Players.LocalPlayer.Name
local ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
local whitelist = string.split((ClientId), '-')
local Hxven = whitelist[5]

local whitelist = {
	--["Admin"] = "Admin", --Dis : kkkk -- Game : kkkkkk --THB10
	["ba2c2048b81d"] = "3c04d383-7de3-4c10-aec7-ba2c2048b81d", --MrMaxNaJa
	["741797658105"] = "8b630005-2003-41f5-84ce-741797658105", --MrMaxNaJa
	["8ca7d84a2cc8"] = "fdaba1e9-c20d-4d10-946e-8ca7d84a2cc8", -- Wx
	["c80c1c29ca03"] = "c02a7e07-eb73-4f09-8739-c80c1c29ca03", -- Wx --จำลอง
	["212bf151f285"] = "151be2d7-d3c4-4bcb-a4a3-212bf151f285", -- MrMaxNaJa and

	["b7047c99ef36"] = "8758137a-e608-4ab6-b8de-b7047c99ef36", --Dis : park1526 --Game : DorothiezU8748 --THB 10
	["2440cdd729c5"] = "6ed89a3c-37a6-469c-a869-2440cdd729c5", --Dis : lilfaxe --Game : FAXEHOPE --THB 10
	["903dee7dc1d6"] = "d2d34fbf-768c-431e-9fb4-903dee7dc1d6", --Dis : ddx445 -- Game : 11lfutpbhurv11_23 --THB10
	["cdf07ebf23b0"] = "7f9f2621-299c-4acf-98b5-cdf07ebf23b0", --Dis : ameenthailand -- Game : JJShopJQlb --THB10
	--["9da146e62ef9"] = "a38e323b-f6c0-4a4e-a693-9da146e62ef9", --Dis : ameenthailand.   Game : JJShopJQlb --THB 10 ชื้อ 2
	--["41ae65f24275"] = "0f70bd65-ea8b-4bf2-80c2-41ae65f24275", --Dis : smokey0792 -- Game : ooloo0_0 --THB10 -- ย้าย 1
	--["8ad25655c214"] = "1fdd74e5-16e4-4590-9f5a-8ad25655c214", --Dis : smokey0792 -- Game : ooloo0_0 --THB10 คนนี้ลบโหลดตัวรันใหม่เลยสร้างkeyใหม่่
	--["581575ce67cb"] = "e0a24a6b-dc0d-411b-a79f-581575ce67cb", --Dis ti_it | Game : kritmaidaihackna THB10
	["a670ccec9050"] = "35942f62-1d1a-4d77-af4d-a670ccec9050", --Dis ti_it
	["69984051992F"] = "1832A2A7-519D-4986-B367-69984051992F", --Dis exousss | Game : demarbec
	["a22494a1b7cd"] = "0a8d55c6-74c4-4639-a121-a22494a1b7cd", --Dis somrak_fbi.   Game | : Pro_Somrak THB 10
	["24c3da743496"] = "51553654-5dc5-4775-8d1c-24c3da743496", --Dis fun2096  THB10
	--["b4f081247e3b"] = "dddd761d-0847-4b5e-b445-b4f081247e3b", --Dis : immaculate_eagle_76055 -- Game :  --THB10
	-- ["f5a54dac5f20"] = "12b1d9cf-7705-4a67-ba5f-f5a54dac5f20", --Dis : w8z6hc -- Game :  --THB20 มันโหลดตัวรันใหม่
	["10c5701c5bd4"] = "0fda1e4c-dd41-4a1a-837e-10c5701c5bd4", --Dis w8z6hc อันล่าสุด
	["2c24a414fe3f"] = "344ae7e8-68f9-4589-ae00-2c24a414fe3f", --Dis : pobo_2077 -- Game :  --THB20
	["df2e5a931a9f"] = "b8487a66-4063-4e1a-af3c-df2e5a931a9f", --Dis : palm123112 -- Game :  --THB20
	--["b8ee5ed97021"] = "21f4f41a-a763-4da8-a166-b8ee5ed97021", -----Dis : smokey0792 -- Game : ooloo0_0 --THB10 keyใหม่อยู่นี้

	--// วันที่ 18 เดือน 4 ปี 2567 //--
	--["69bbe39e5ffd"] = "23a6010f-877a-47af-bd98-69bbe39e5ffd", ---Dis py661 THB 20  ลบเกมโหลดใหม่
	["13071b00148a"] = "9bb259ce-6822-4eb0-873f-13071b00148a", --Dis plub3757 THB 20 
	["fab643351602"] = "433b16b6-f27e-4c39-b3a0-fab643351602", --Dis xxoilkunhgxx THB 20
	["e6633977750a"] = "89130351-e264-439a-a825-e6633977750a", --Dis ohmxp0 THB20
	-- ["af5f08d245ca"] = "e3a9df58-2d36-4b7c-bd69-af5f08d245ca", --Dis nay6267 THB20 เเก้ ลบโหลดใหม่
	["f5876d83d580"] = "6e30c9a6-5a48-4039-ad83-f5876d83d580", --Dis py661  20 THB อยู่นี้
	--["058c2ac84526"] = "390781b0-6beb-4fd4-aa22-058c2ac84526", --Dis aom.92 20 THB
	-- 19/4/2567
	["06efa3681ab2"] = "2c1b9b73-f7f7-4e7e-bb4c-06efa3681ab2", --Dis .kikig 20 THB
	["65b71826d69b"] = "e93a58fc-8546-48e6-bbd7-65b71826d69b", -- Dis kiwkodkool 20 THB
	["3783c8775e63"] = "100b205d-d413-4183-88ed-3783c8775e63", --Dis rwiphlechuuerd THB 20
	["634022b05397"] = "27315009-b0ed-4994-bb75-634022b05397", --Dis godfathercrcr THB 20
	["6fbfb2136bed"] = "2469bbd0-dc08-406c-a900-6fbfb2136bed", --Dis wish.x THB 20
	["2849d34c00cf"] = "c2ec8c18-954a-4a8e-af94-2849d34c00cf", --Dis asdad.asd THB 20 MrMax - 20 ธนา
	["ecf089750b6a"] = "c0c594cd-3c0e-4b55-b628-ecf089750b6a", --Dis achinakub THB 20 
	["1a5c226f665b"] = "896f49fc-79ec-46ea-b703-1a5c226f665b", --Dis nay6267 THB 20 เเก้ใหม่
	["9315c7fb812d"] = "02908ea9-c865-41e5-84df-9315c7fb812d", --Dis karu02913 THB 20
	["0a75ea6b5bf4"] = "6c51c9bd-ab8e-460d-8db6-0a75ea6b5bf4", --Dis rakthaiii 20 THB
	["ea0a3cda0320"] = "768ac446-f534-47e6-8d9c-ea0a3cda0320", --Dis thanongtoi_ 20 THB
	--["17e74ec7689d"] = "ac83a092-c75b-4279-8a93-17e74ec7689d", --Dis .33.0514_27886 20 THB
	--["27333fb1d71d"] = "f3a5b7ae-6b31-4837-8fcf-27333fb1d71d", --Dis pun37774 20 THB
	["88b29271751a"] = "ffc407af-d54a-457c-baaa-88b29271751a", --Dis hszx.15 YT No Buy
	["4754ae0453a4"] = "9cfc269a-a31f-49b5-84cd-4754ae0453a4", --Dis pao089355 20 THB
	--20/4/2567
	["bd5afa2eb60a"] = "62b7d5c9-08f9-4f89-bd6d-bd5afa2eb60a", --Dis _wakumi2 30 THB
	["f50b3f94d110"] = "26d7bc2a-d737-43f0-86bd-f50b3f94d110", --Dis thnwatrphuukhamsrii 30 THB
	["057cd16103d5"] = "2b28d151-a93b-43e5-820a-057cd16103d5", --Dis rimuru1763 30 THB
	["6aad3d26ce09"] = "b4f9dfa4-57eb-42a7-8857-6aad3d26ce09", --Dis saran07 30THB
	--["7ee608ad5090"] = "cd6f5c5f-bbf5-4e93-966f-7ee608ad5090", --Dis stellas_t 30THB ธนาคาร
	["ac1e81413d7c"] = "5f5a0fe5-70e4-4b0a-8a98-ac1e81413d7c", --Dis aomqi 30THB
	--21/4/2567
	["7b5d170a5185"] = "ebb983e7-a46a-4158-8a47-7b5d170a5185", --Dis  gleeeeeeeeeeeeee 30 THB
	--["66e58ba1d394"] = "8777b153-032d-4179-8b24-66e58ba1d394", --Dis itssense 30THB
	["978699e05d51"] = "65d1ce06-235e-4bef-9013-978699e05d51", --Dis fhdjnvvb 20 THB  --ติดอยู่10บาท
	--["63da7f3b7640"] = "ffbbc6b6-68c1-403f-8bb0-63da7f3b7640", --Dis .33.0514_27886 ซื้อเพิ่ม 25 
	["c10e6326f5e1"] = "441f6d97-b1d6-49bb-b527-c10e6326f5e1", --Dis noob00_8 30 THB
	--["cbbc85b226bf"] = "2d91d6d3-10ed-44fd-97e7-cbbc85b226bf", --Dis p_poom082 30 THB
	["d2d7a229d152"] = "e5d6dc1a-f499-4e90-9bd7-d2d7a229d152", --Dis thnwatrphuukhamsrii เเก้HWID 15 THB
	["083B6C31D6D8"] = "9C671507-19ED-4D14-9107-083B6C31D6D8", --Dis eurosadlhwqofihsad 30 THB
	["adcc019c6c93"] = "3be0d390-7b1d-4dce-a931-adcc019c6c93", --Dis daimokin 30 THB
	--22/4/2567
	["af0d8ff3e5b2"] = "05cce1ac-b696-4aa7-8ad2-af0d8ff3e5b2", --Dis p_poom082 15 THB เปลี่ยน Hwid โอนแล้วหารแล้ว 7.5 THB ทำการเมื่อ 1:16
	----------------------------------------------------------
	["189073ef20df"] = "89dcb8bd-408f-4b13-b7e0-189073ef20df", --Dis ghu9118 30 THB
	["9ccb698851f5"] = "4d3e0a57-635e-42d5-b88e-9ccb698851f5", --Dis tew4808 30 THB
	["c3ee20062484"] = "d4bd322f-f08b-49fa-b67d-c3ee20062484", --Dis aqj7xc 30 THB
	["0b00d07baa01"] = "26e23a07-a925-4004-97cf-0b00d07baa01", --Dis somrak_fbi. 15 THB ย้าย Hwid
	["475addf80f0a"] = "debd8212-cb72-4f5f-93bb-475addf80f0a", --Dis ken5574 30 THB
	--["81f508453f00"] = "55de75aa-dab9-4b41-a038-81f508453f00", -- Dis .33.0514_27886 30 THB ซื้อKeyเพิ่ม
	--23/4/2567
	["b6eac4ce0786"] = "3572f0d0-36a9-4cbf-b91f-b6eac4ce0786", -- Dis sakurakotori 30 THB
	["1bdfd5ef076f"] = "b757d483-424c-418e-a9f3-1bdfd5ef076f", -- Dis taelovemayziuziu 30 THB
	["9bc8442c7774"] = "4d174f80-199c-4fc8-8d98-9bc8442c7774", -- Dis taelovemayziuziu 30 THB --2 key
	--["978699e05d51"] = "65d1ce06-235e-4bef-9013-978699e05d51", -- Dis fhdjnvvb 10 THB  --ครบแล้ว
	--["a097b58e2ed1"] = "c81d3c30-bb8c-4d06-9523-a097b58e2ed1", --Dis trgracemega 30 THB
	--["eeb1c00cda53"] = "1af75b6b-711b-4bbc-b320-eeb1c00cda53", --Dis isosloobad 30 THB
	--["17e666b8f704"] = "c924457d-df92-48cd-a701-17e666b8f704", --Dis .3539 30 THB
	["c2b3ccc66c40"] = "9825f130-2ad7-4d03-8b46-c2b3ccc66c40", --Dis no7308 30 THB
	["1aa2a2273b9e"] = "276f7f48-3d2e-4d0e-a120-1aa2a2273b9e", --Dis thxng525258216 30 THB
	["fd9dc5a24dc8"] = "a297163c-7afc-4c84-ac62-fd9dc5a24dc8", --Dis hakurei5027 30 THB
	["6d59abbe212a"] = "1601dfe9-6226-4bd3-a747-6d59abbe212a", --Dis Wx Freezzzzz
	-- เริ่มใหม่ 24/4/2567
	--["bec4a1db00c2"] = "2f35cd08-0f42-4733-b026-bec4a1db00c2", --Dis fhdjnvvb เกมอัพเดท
	["bd8e3a1204c5"] = "4f889720-9ea4-4036-9514-bd8e3a1204c5", --Dis trgracemega เกมอัพเดท
	["dbc815ece718"] = "f1fa962e-3b53-404a-96b9-dbc815ece718", --Dis itssense เกมอัพเดท
	["0fd99bd44321"] = "b3fe896a-3533-45e8-9fad-0fd99bd44321", --Dis .kalw | 30 THB
	["eeb1c00cda53"] = "1af75b6b-711b-4bbc-b320-eeb1c00cda53", --Dis isosloobad --เกมอัพเดท
	["ff03d5699d11"] = "12bfccd2-0ff6-47f3-b8bc-ff03d5699d11", --Dis fiion0888 | 30 THB
	["4ef8b06356a3"] = "d83a188c-7650-4475-a34b-4ef8b06356a3", --Dis .33.0514_27886 เกมอัพเดท
	["8e724e9995c7"] = "b04136f9-a1c3-4024-8cc7-8e724e9995c7", --Dis .33.0514_27886 เกมอัพเดท
	["d1f7d2001da3"] = "0482ef3e-c3cf-4ccf-ad7e-d1f7d2001da3", --Dis .33.0514_27886 เกมอัพเดท
	["cfefc7dfd6de"] = "ad3aa7b3-8c6d-4566-b22f-cfefc7dfd6de", --Dis xz10094 | 40 THB
	["46bcd79b5e75"] = "aef07a3a-71af-406d-acd8-46bcd79b5e75", --Dis aom.92
	--["96973d815e5c"] = "ce92361c-55ca-4c07-a3e6-96973d815e5c", --Dis .kikig
	["214e3e3385e2"] = "7081ba46-76b2-4adc-8981-214e3e3385e2", --Dis pun37774
	["d4dcd86aed94"] = "9292a3ac-7f5c-4ece-9d9d-d4dcd86aed94", --Dis .3539
	["25621f000b19"] = "6ff7421e-70f8-4ccb-8ba8-25621f000b19", --Dis ohmxp0
	["9da146e62ef9"] = "a38e323b-f6c0-4a4e-a693-9da146e62ef9", --Dis ameenthailand
	["6662418e567a"] = "11bb8d01-739f-44d7-b586-6662418e567a", --Dis .kikig
	["08bd7f2282a4"] = "b7a3a50d-0756-4835-8f2e-08bd7f2282a4", --Dis thelord00500
	["194c3bd8b1f1"] = "2d11443b-ea0d-46d2-8c94-194c3bd8b1f1", --Dis fhdjnvvb
	--25/4/2567
	["7b214a63d056"] = "97c919cc-ef03-4df9-b15a-7b214a63d056", --Dis jovial_sparrow_52224
	["b09955b2eec5"] = "0db73f6a-d845-4831-837a-b09955b2eec5", --Dis .33.0514_27886 
	["162584e751cd"] = "03ac8d18-650d-4fa6-9d74-162584e751cd", --Dis .33.0514_27886
	["7ff891a7b2e7"] = "3489efc5-31c2-4225-8d2d-7ff891a7b2e7", --Dis .33.0514_27886
	["fc10415513c7"] = "64380d86-d303-4194-a80a-fc10415513c7", --Dis .33.0514_27886
	["af2d681ed406"] = "4afe33a8-f122-4d95-b3ec-af2d681ed406", --Dis immaculate_eagle_76055
	["80ebf7ceb9f5"] = "5847c07e-15bb-4031-a0f4-80ebf7ceb9f5", --Dis yoichiro3671 40 THB
	["80ebf7ceb9f5"] = "5310b76c-294a-410d-8730-acc042b0eb95", --Dis kg_kengky 40 THB
	["e3d7e41c5f79"] = "846ca058-9a4a-4a9b-a8a4-e3d7e41c5f79", -- Dis stellas_t เกมอัพ
	["9a9a38cded89"] = "2a9406d1-3ea8-47bf-8f51-9a9a38cded89", -- Dis popo3304 40 THB
	["f2854edc4106"] = "fbb57db6-7a96-4b4b-b7a6-f2854edc4106", -- Dis beet223 40 THB
	["d0c49f3b8e3d"] = "36e8b8c8-553b-4ff6-8f95-d0c49f3b8e3d", -- Dis kizawaoka_17589 40 THB
	["2189c4fa5482"] = "37804193-37a2-4c9d-a521-2189c4fa5482", -- Dis 2189c4fa5482 30 THB -- ธนาคาร
	["50b1ae23372e"] = "6cc29c31-c3f4-4470-896e-50b1ae23372e", -- Dis taxlaxy 40 THB
	["17595f5aeaf3"] = "1e63c7e8-412c-4c20-9312-17595f5aeaf3", -- Dis niaq_kaniya 40 THB Wx ไม่รับลูกค้า lol
	["53e71a23c669"] = "f18afe54-b8ed-4929-8302-53e71a23c669", -- Dis thereal4689 40 THB 
	["9d3b171fcae9"] = "52c81e18-5067-4c9d-b5b1-9d3b171fcae9", --Dis smokey0792 เกมอัพ
	["2e3fe1088157"] = "73052529-c495-4bf8-94d3-2e3fe1088157", -- Dis kkaa0219 40 THB
	["3CE4CC1DDB77"] = "49117F59-36F9-4570-8FC9-3CE4CC1DDB77", -- Dis hongta989 40 THB
	["7c00dac71a1a"] = "5384ee05-5614-4215-8271-7c00dac71a1a", --Dis dagma55 40 THB
	["5b0b6447ff95"] = "f9b209ef-90af-4a02-a22d-5b0b6447ff95", --Dis thxng525258216 เกมอัพ
	["3d3d0f6ddb12"] = "744ab700-322e-42b3-9587-3d3d0f6ddb12", --Dis bbnk0243_54313 40 THB
	["e290d751ce6d"] = "fee0f3f9-493c-4dc0-837e-e290d751ce6d", --Dis black_pipo 40 THB
	["622a4ffd9b6e"] = "bf08add0-b74f-4f19-974d-622a4ffd9b6e", --Dis fhdjnvvb เกมอัพ
	["43408dfbbce4"] = "3e70b715-91d0-45a6-a3e0-43408dfbbce4", --Dis zyur_1tm 40 THB
	["d0cffa667bc6"] = "f859a540-fe96-4085-b27a-d0cffa667bc6", --Dis  เกมอัพ
	["ecc2eba1663d"] = "f9e31e85-d29f-42ab-af29-ecc2eba1663d", --Dis kjx1864 40 THB
	["5c00aee48256"] = "e6ec5241-04f3-44e6-9afd-5c00aee48256", --Dis areyou_chxnxtip06 40 THB
	["8d59293c72bb"] = "deb01686-9e66-4320-a086-8d59293c72bb", --Dis gojo_2244 40 THB
	["ce97f72bebb5"] = "1245051b-19a5-4766-a71d-ce97f72bebb5", --Dis ohmxp0
	["9dfc479b9a1c"] = "ece5e398-2357-4c96-8bb9-9dfc479b9a1c", --Dis itssense
	["a1d147967c52"] = "72f90e16-a23f-4eeb-8cbf-a1d147967c52", --Dis trgracemega 40 THB
	["b142e8fe19a0"] = "2556f49b-99bd-4aff-879b-b142e8fe19a0", --Dis fhdjnvvb เกมอัพ
	["ea6a15c272f4"] = "0470b1be-000f-4327-898a-ea6a15c272f4", --Dis
	["2fed8ea55425"] = "b3718f93-f081-4824-90fe-2fed8ea55425", --Dis stellas_t 40 THB
	["5df802cbf403"] = "3c62a6e5-0739-40f8-87bc-5df802cbf403", --Dis .3539
	["8dd5b0e2b814"] = "f86650e2-595e-4318-b616-8dd5b0e2b814", --Dis areyou_chxnxtip06 เกมอัพ
	["6b1c6bc40815"] = "88f1c0f0-c8b4-4590-8b7a-6b1c6bc40815", --Dis .mintada 40 THB
	["adcc019c6c93"] = "3be0d390-7b1d-4dce-a931-adcc019c6c93", --Dis daimokin เกมอัพ
	["4bcf9292c623"] = "46272a08-079d-4fd7-a946-4bcf9292c623", --Dis khnhlkhrabaimtngchm 40 THB
	["e290d751ce6d"] = "fee0f3f9-493c-4dc0-837e-e290d751ce6d", --Dis black_pipo
	["ab726669d92b"] = "a04de207-2fad-4693-80bb-ab726669d92b", --Dis  wise_possum_23477 40 THB
	["2bc56a03afd6"] = "d44fb0df-de02-4dd4-99f0-2bc56a03afd6",
	["00286faf2aab"] = "8690aef9-ef5b-4e4d-81d0-00286faf2aab", 
	["fdfc059cb2f4"] = "ee0cc3d8-bcb5-41c8-b780-fdfc059cb2f4", --Dis mimosa5615 40 THB
	["885bba87f5de"] = "a180d59c-1428-4c51-a0d8-885bba87f5de", --Dis chayut0764 40 THB
	["d3f9d18aff13"] = "a9e116e8-5183-467e-a529-d3f9d18aff13", --Dis hakurei5027 Up
	["c1118cabe6ca"] = "90c12aab-a817-4565-9e37-c1118cabe6ca", --Dis no7308
	["c9cf75631975"] = "f77a9fcd-eb62-46aa-9a3a-c9cf75631975", --Dis เกมอัพ tew4808
	["f7d93a1d13ad"] = "2e2cff03-5240-47a0-b11e-f7d93a1d13ad", --Dis aom.92 ธนา
	["61e287f77aba"] = "c81e079c-6abf-48c2-8856-61e287f77aba", 
	["7bcf2b62d419"] = "724bf2a8-6544-4471-813a-7bcf2b62d419", -- รีHWId 15 บาท
	["a8fef55ae9ad"] = "569777b4-7a49-4656-9ed7-a8fef55ae9ad", --Dis  trgracemega 50 บาท
	["c27048c3692b"] = "60d7691c-8471-4014-b95e-c27048c3692b", --เกมอัพ  daimokin 
	["665ecb7ce797"] = "f9095981-912d-4f00-be4f-665ecb7ce797", --Dis thanapon052 40 THB
	["027176714085"] = "11f5fd98-1531-4b55-9a4b-027176714085", --เกมอัพ
	["83a93b38f3cb"] = "c79e57af-a4ea-43bb-a35a-83a93b38f3cb", --Dis nopparuj_wongsa 40 THB
	["c11d1796aec2"] = "c3804b4c-0384-43c5-8fea-c11d1796aec2",--Dis pong07715
	["659e5de5e0a0"] = "28591889-2c26-4550-866f-659e5de5e0a0",--รีHWID 15 Discord mimosa5615
	["4eaee7a8e886"] = "aa7767ea-1443-44e6-b73e-4eaee7a8e886", --เกมอัพ kg_kengky
	["9b5e0d7efa26"] = "b8c86cd7-601f-4b44-819e-9b5e0d7efa26", --เกมอัพ
	["43021dd28d2d"] = "6d3e0f9b-f88a-490e-af53-43021dd28d2d", --15 THB
	["1cb6a6cabedc"] = "113c01fb-c984-4857-a69e-1cb6a6cabedc", --40 THB kao7034
	["afa4f4e54ba9"] = "198c7cfa-118d-41e0-9810-afa4f4e54ba9", --40 THB
	["598b8cda01fc"] = "3955e527-813c-433a-a552-598b8cda01fc", --40 THB
	["933dd0fadcd0"] = "1ac601c5-55e8-4166-bd4b-933dd0fadcd0", --40 THB
	["64541f56fb57"] = "6da9e79c-42bf-4ada-a48d-64541f56fb57", --40 THB
	["e9c0f619a91d"] = "7e717640-625c-49fa-b24e-e9c0f619a91d", --40THB
	["cea0b481df11"] = "9b69d3de-03d1-4923-97c0-cea0b481df11", --40 THB
	["37ceae3c9934"] = "b5a30ef5-c820-4817-a6f4-37ceae3c9934", --40THB
	["d8fbba465641"] = "d4df1432-f1ca-452b-be2c-d8fbba465641", --40THB
	["6354ee0f030e"] = "2ee1f7ea-4fca-467a-8dd3-6354ee0f030e", --40THB
	["acfebce356c9"] = "c1acdda5-4175-458a-a490-acfebce356c9", --40 THB




--[[
_G.register_key = "acfebce356c9"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/Test/main/README.md"))()
--]]

	
	["Admin"] = "Admin" --Dis :  -- Game :  --THB 
}



if _G.register_key == Hxven then
	if whitelist[_G.register_key] == game:GetService("RbxAnalyticsService"):GetClientId() then
		print("whitelist![1] ")
		_G.MrMaxNaJaBuy = true
		if game.PlaceId == 4520749081 then--kl
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
		elseif game.PlaceId == 6381829480 then--kl
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
		elseif game.PlaceId == 15759515082 then--kl
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
		elseif game.PlaceId == 9790558424 then--mp
			loadstring(game:HttpGet("https://raw.githubusercontent.com/xOne2/mp/main/README.md"))()
		elseif game.PlaceId == 2753915549 then--BF
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Narongrit_Songkaew.lua"))()
		elseif game.PlaceId == 4442272183 then -- BF
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Narongrit_Songkaew.lua"))()
		elseif game.PlaceId == 7449423635 then -- BF
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Narongrit_Songkaew.lua"))()
		--elseif game.PlaceId == 6897167394 then --DeMonPice
			--loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/LoveH/Kl_Mr/Max/Na/Ke_y__DEmonP.lua"))()
		elseif game.PlaceId == 3351674303 then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Wxzzz1/1Z/main/README.md"))()
		else
			game:GetService("Players").LocalPlayer:Kick("Not Support")
		end
		print("whitelist![1] OK")
    else
        setclipboard("https://discord.gg/6e8vnRFrFH")
        wait(0.5)
		if _G.key == "I Love MrMaxNaJa Hack Kl" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
		else
        	game.Players.LocalPlayer:kick("Error 49H\nติดต่อแอดมิน\nสำหรับคนที่ซื้อแล้วขึ้นหน้านี้")
		end
    end
else
	wait(0.5)
	if _G.key == "I Love MrMaxNaJa Hack Kl" then
		wait(0.5)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Songkaew/LoveYou/main/Kl_Mr/Max/Na/Ja/Hee.lua"))()
	else
    	game.Players.LocalPlayer:kick("Error 59H\nติดต่อแอดมิน\nสำหรับคนที่ซื้อแล้วขึ้นหน้านี้")
	end
end
