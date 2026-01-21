-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2023 at 01:06 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id10840443_springbootdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `search_image` varchar(179) NOT NULL,
  `styleid` int(11) NOT NULL,
  `brands_filter_facet` varchar(4) NOT NULL,
  `price` int(11) NOT NULL,
  `product_additional_info` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`search_image`, `styleid`, `brands_filter_facet`, `price`, `product_additional_info`) VALUES
('http://assets.myntassets.com/assets/images/10271347/2019/10/24/2286c5fb-f5c2-436d-ac0a-4e41c79831b51571906926278-Nike-Men-Black-Solid-Standard-Fit-NSW-CE-PK-BASIC-DRI-FIT-Tr-1.jpg', 10271347, 'Nike', 3551, 'Men NSW CE DRI-FIT Tracksuit'),
('http://assets.myntassets.com/assets/images/10588800/2019/11/27/4e404162-53e0-4361-9730-be891993ab7a1574846180854-AS-M-NSW-JGGR-PLAYRS-WVN-NFS-5911574846178266-1.jpg', 10588800, 'Nike', 2396, 'Men NSW PLAYRS Solid Joggers'),
('http://assets.myntassets.com/assets/images/10609404/2019/9/28/6c49897e-51f9-4e4d-a5ee-9675029133cc1569655735440-Nike-Sportswear-Club-1711569655734185-1.jpg', 10609404, 'Nike', 1996, 'Dri-FIT CLUB JSY Solid Joggers'),
('http://assets.myntassets.com/assets/images/10714242/2019/11/29/57e3a3c3-a7a2-405b-a596-3246d60ff0dc1575017786189-Nike-Men-Grey-DOWNSHIFTER-7-Running-Shoes-741575017783904-1.jpg', 10714242, 'Nike', 3196, 'Men DOWNSHIFTER Running Shoes'),
('http://assets.myntassets.com/assets/images/10714390/2019/12/2/864258a3-4107-4a76-8aab-3fb4cda1e9a01575283695267-Nike-Men-Grey-Solid-Retaliation-2-Training-Shoes-19015752836-1.jpg', 10714390, 'Nike', 5096, 'Retaliation 2 Training Shoes'),
('http://assets.myntassets.com/assets/images/10762822/2019/12/9/111aaeb8-a27b-4a65-9235-b9100b0755771575890754263-AS-M-NK-THRMA-PANT-TAPER-NFS-1311575890751027-1.jpg', 10762822, 'Nike', 2316, 'AS THRMA PANT TAPER Joggers'),
('http://assets.myntassets.com/assets/images/11045412/2020/1/27/e6960eab-d26b-4f6c-9112-b1e1df81acf91580110510954-Nike-Men-Sports-Shoes-6361580110509597-1.jpg', 11045412, 'Nike', 3371, 'Men FLY.BY MID Shoes'),
('http://assets.myntassets.com/assets/images/11045422/2020/1/24/a472de0d-dfae-48ec-8ec4-5c11e4c5c0d51579847880420-Nike-Unisex-Grey-Textile-Basketball-Shoes-1861579847879011-1.jpg', 11045422, 'Nike', 4121, 'Unisex PRECISION Basketball'),
('http://assets.myntassets.com/assets/images/11045460/2020/1/23/209cbeb0-f10b-4890-aa43-747407e31a881579765130081-Nike-Women-Sports-Shoes-8941579765128777-1.jpg', 11045460, 'Nike', 2996, 'Women DOWNSHIFTER 9 Shoes'),
('http://assets.myntassets.com/assets/images/11045474/2020/1/23/0ec0861d-0f58-45bc-95c0-4164cb83b04c1579764258401-Nike-Unisex-Sports-Shoes-8021579764257030-1.jpg', 11045474, 'Nike', 3596, 'Unisex Skateboarding Shoes'),
('http://assets.myntassets.com/assets/images/11045486/2020/1/23/28b89811-2ec1-444f-8335-bd8125189fa01579765097039-Nike-Women-Sports-Shoes-5001579765095319-1.jpg', 11045486, 'Nike', 4496, 'Women RENEW RIDE Running Shoes'),
('http://assets.myntassets.com/assets/images/11045496/2020/1/23/05a59ee5-da89-40a2-a431-5156b6baffa01579765113369-Nike-Air-Max-Excee-3371579765111671-1.jpg', 11045496, 'Nike', 5996, 'Women AIR MAX EXCEE Sneakers'),
('http://assets.myntassets.com/assets/images/11045528/2020/2/26/452d46b9-e4de-4fa7-9677-d481c02cd6c11582709122729-Nike-Men-Grey--Navy-Blue-FLYBY-MID-Leather-Basketball-Shoes--1.jpg', 11045528, 'Nike', 3371, 'Men FLY.BY MID Basketball'),
('http://assets.myntassets.com/assets/images/11045560/2020/1/23/c7fc6185-f028-4945-91f2-962685174d551579762568013-Nike-Men-Sports-Shoes-8421579762566885-1.jpg', 11045560, 'Nike', 5246, 'Men RENEW RUN Shoes'),
('http://assets.myntassets.com/assets/images/11045580/2020/1/23/45975419-28c3-47dc-b52c-7ff70978c9531579775966649-Nike-Women-Mauve-FLEX-Trainer-9-Training-Shoes-8181579775965-1.jpg', 11045580, 'Nike', 4121, 'Women FLEX Trainer 9 Shoes'),
('http://assets.myntassets.com/assets/images/11045590/2020/1/27/7f3d55cf-29b3-42fc-b0a6-e259761d0a511580110648202-Nike-Men-Sports-Shoes-3701580110646908-1.jpg', 11045590, 'Nike', 4121, 'Men RUNALLDAY 2 Running Shoes'),
('http://assets.myntassets.com/assets/images/11045618/2020/1/27/bb151a71-55ee-4a10-a831-7c756b0ab6f31580121640508-Nike-Men-Black-COURT-VISION-Low-Premium-Sneakers-39415801216-1.jpg', 11045618, 'Nike', 4496, 'COURT VISION Premium Sneakers'),
('http://assets.myntassets.com/assets/images/11045646/2020/1/27/9c584736-c957-48f7-8ea7-dcad69056e6f1580122166649-Nike-Women-White-COURT-VISION-LO-PRMV-Sneakers-1711580122164-1.jpg', 11045646, 'Nike', 4496, 'Women COURT VISION Sneakers'),
('http://assets.myntassets.com/assets/images/11045648/2020/2/26/eeb8b7bb-1070-4b1a-85c1-63111ccb89f71582709158524-Nike-Unisex-Grey-SB-PORTMORE-II-SOLAR-Leather-Skateboarding--1.jpg', 11045648, 'Nike', 4721, 'Unisex PORTMORE Skateboarding'),
('http://assets.myntassets.com/assets/images/11045664/2020/3/13/c3a5e972-5b18-414d-99f9-015bd6c070841584078526155-Nike-Men-Grey-QUEST-2-Running-Shoes-9411584078524665-1.jpg', 11045664, 'Nike', 4496, 'Men QUEST 2 Running Shoes'),
('http://assets.myntassets.com/assets/images/11045728/2020/1/23/7c2230df-5ade-42c6-a939-248b77ab6db31579762598050-Nike-Men-Sports-Shoes-931579762596325-1.jpg', 11045728, 'Nike', 5495, 'Men Run All Day 2 Shoes'),
('http://assets.myntassets.com/assets/images/11045732/2020/1/27/a69f3f34-ce18-4a95-8714-9b54f3d111b01580122300225-Nike-Men-Green--Grey-Solid-Thong-Flip-Flops-251580122299025-1.jpg', 11045732, 'Nike', 1196, 'Men SOLARSOFT Thong Flip-Flops'),
('http://assets.myntassets.com/assets/images/11045754/2020/1/23/141725e1-7956-4937-a7d9-0aee471db9ed1579762931381-Nike-Men-Sports-Shoes-1691579762930024-1.jpg', 11045754, 'Nike', 4496, 'Men Black RENEW RIDE Running'),
('http://assets.myntassets.com/assets/images/11045758/2020/1/27/c6025d9d-f59d-4e27-87fc-08e322dbc12d1580121679816-Nike-Men-Grey-Flex-EXPERIENCE-RN-9-Running-Shoes-25815801216-1.jpg', 11045758, 'Nike', 3746, 'Men EXPERIENCE RN 9 Shoes'),
('http://assets.myntassets.com/assets/images/11045790/2020/3/13/f27d593a-e800-44f9-85bf-98260ce631a91584078485925-Nike-Men-Blue-RENEW-RUN-Running-Shoes-7641584078484865-1.jpg', 11045790, 'Nike', 5246, 'Men RENEW RUN Shoes'),
('http://assets.myntassets.com/assets/images/11045826/2020/1/23/8391d1d5-40c8-4353-a0b3-bc61d271baf21579760991698-Nike-Air-Max-Advantage-3-1031579760990566-1.jpg', 11045826, 'Nike', 4871, 'Men AIR MAX ADVANTAGE Sneakers'),
('http://assets.myntassets.com/assets/images/11045850/2020/1/23/911c81d9-0c7c-4ce7-81bd-d83900bbefce1579761930681-Nike-Women-Sports-Shoes-2531579761928527-1.jpg', 11045850, 'Nike', 5996, 'Women ZOOM Running Shoes'),
('http://assets.myntassets.com/assets/images/11077538/2019/12/17/be4cefb8-5935-4068-ac4a-88d0ddb9b20e1576568157619-AS-NIKE-CLUB-OH-PANT-SWOOSH-NF-9021576568155974-1.jpg', 11077538, 'Nike', 2076, 'Men CLUB SWOOSH Trackpants'),
('http://assets.myntassets.com/assets/images/11077540/2019/12/17/f4dc94a3-7445-47b9-97d2-5e921eadcae01576568169125-AS-NIKE-CLUB-OH-PANT-SWOOSH-NF-2451576568167522-1.jpg', 11077540, 'Nike', 2076, 'Men CLUB SWOOSH Trackpants'),
('http://assets.myntassets.com/assets/images/11127348/2020/2/3/df670e84-ab36-4e58-b2f5-0dc0d18ceb951580719041368-Nike-Men-Tshirts-8061580719039809-1.jpg', 11127348, 'Nike', 1181, 'Solid TS CRKT DRI FIT T-shirt'),
('http://assets.myntassets.com/assets/images/11285974/2020/2/13/17df4429-4f2e-488e-b006-e670e92a42891581582748054-Nike-Women-Tops-3041581582745300-1.jpg', 11285974, 'Nike', 1695, 'Women Printed Running T-Shirt'),
('http://assets.myntassets.com/assets/images/11702408/2020/6/17/63a24282-a1d1-442f-a656-0ae8bd818d051592399438201-AS-M-NSW-HE-DUAL-SHORT-NFS-8031592399436076-1.jpg', 11702408, 'Nike', 2295, 'Men NSW HE DUAL Sports Shorts'),
('http://assets.myntassets.com/assets/images/11890480/2020/6/18/39af0488-2608-429d-a39b-c293312f74641592476776316-AS-M-NSW-HE-DUAL-JGGR-NFS-4761592476774379-1.jpg', 11890480, 'Nike', 2795, 'Men AS M NSW Dri-Fit  Joggers'),
('http://assets.myntassets.com/assets/images/11890712/2020/6/17/4f21bfb4-9531-4fb6-8d23-15589b1e0b5c1592374786377-AS-M-NSW-HE-DUAL-SHORT-NFS-4301592374784221-1.jpg', 11890712, 'Nike', 2295, 'Men HE DUAL NFS Sports Shorts'),
('http://assets.myntassets.com/assets/images/11890714/2020/6/17/48ae0ec3-68e1-4e80-9a1c-843dc8cec4d11592399554167-Nike-Sportswear-Mens-Woven-Shorts-7191592399551413-1.jpg', 11890714, 'Nike', 2295, 'Men NSW FLOW NFS Sports Shorts'),
('http://assets.myntassets.com/assets/images/4030191/2018/4/11/11523428568605-Mens-Nike-Flex-Control-II-Training-Shoe-9901523428568458-1.jpg', 4030191, 'Nike', 4436, 'Men Flex Control II Training'),
('http://assets.myntassets.com/assets/images/4330921/2018/5/11/9ea582f1-d06f-4edc-b4e5-4cc12e015ac91526039470815-Womens-Nike-Revolution-4-Running-Shoe-4791526039470629-1.jpg', 4330921, 'Nike', 2217, 'Women REVOLUTION 4 Running'),
('http://assets.myntassets.com/assets/images/6814148/2018/7/16/ea9c98ae-cba4-4a3d-b54f-dc5cc4425a921531723661926-Nike-Men-Black-AS-M-NK-PANT-EPIC-KNIT-Solid-Training-Track-P-1.jpg', 6814148, 'Nike', 1756, 'Men AS M NK EPIC Track Pants'),
('http://assets.myntassets.com/assets/images/6814234/2019/8/21/690bff02-0d5f-48b2-8c71-31cd0b7c010f1566382323623-Nike-Men-Charcoal-Grey-AS-M-NK-PANT-EPIC-KNIT-Standard-Fit-T-1.jpg', 6814234, 'Nike', 1756, 'PANT EPIC KNIT Track Pants'),
('http://assets.myntassets.com/assets/images/7487547/2018/10/26/34ac3cfc-1720-4fc3-8879-1ea6347266501540538213382-Nike-Men-Sports-Shoes-1591540538213274-1.jpg', 7487547, 'Nike', 3918, 'Men Running Shoes'),
('http://assets.myntassets.com/assets/images/7616580/2018/10/29/2c517e3e-cb28-4abc-b7b0-652e841ec7ff1540796262831-AS-M-NK-THRMA-PANT-TAPER-7491540796262718-1.jpg', 7616580, 'Nike', 2366, 'Men THRMA PANT TAPER Training'),
('http://assets.myntassets.com/assets/images/8101907/2018/12/19/7854cebb-102a-4c16-b1cc-578f706df6f11545214837280-Nike-Men-Grey-Viale-Sneakers-8381545214836248-1.jpg', 8101907, 'Nike', 3971, 'Men Sneakers'),
('http://assets.myntassets.com/assets/images/8194183/2019/3/26/72279ab0-59bb-4a7f-8381-fe2bb7f982441553584600565-Nike-Men-Black-AIR-MAX-OKETO-Sneakers-8111553584598706-1.jpg', 8194183, 'Nike', 4796, 'Men AIR MAX RAITO Sneakers'),
('http://assets.myntassets.com/assets/images/8974221/2019/3/29/71b90d33-7670-4dff-9253-7db62f504db41553849334699-Nike-Men-Black-Loose-Fit-AS-M-NSW-Solid-Track-Pants-13715538-1.jpg', 8974221, 'Nike', 1971, 'Men AS M NSW Track Pants'),
('http://assets.myntassets.com/assets/images/9083003/2019/4/22/0acfd48e-46e9-4acf-8920-639a520b4aa01555927852125-Nike-FlyBy-Low-II-4421555927850672-1.jpg', 9083003, 'Nike', 3496, 'Men FLY.BY LOW II Basketball'),
('http://assets.myntassets.com/assets/images/9621371/2019/6/8/a49328b3-3ec6-4e4a-90a1-5481b07200db1559972663298-Nike-Men-Black-Solid-Sporty-Jacket-3701559972661629-1.jpg', 9621371, 'Nike', 2366, 'Men AS DRY-FIT Sporty Jacket'),
('http://assets.myntassets.com/assets/images/9798029/2019/8/22/f6b57cb3-dcd0-40c8-b58c-cbc3aebd73271566460587961-Nike-Men-White-DOMAIN-2-NS-Cricket-Shoes-1781566460586772-1.jpg', 9798029, 'Nike', 4496, 'Men DOMAIN 2 NS Cricket Shoes'),
('http://assets.myntassets.com/assets/images/9798093/2019/8/22/fdcd98a5-f017-453e-abbc-5c098f01d2a51566460641139-Nike-Men-White-POTENTIAL-3-Cricket-Shoes-8981566460640011-1.jpg', 9798093, 'Nike', 3371, 'Men POTENTIAL 3 Cricket Shoes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`search_image`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
