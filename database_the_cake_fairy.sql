-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2018 at 12:01 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_the_cake_fairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `Id_korisnik` int(11) NOT NULL,
  `Ime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Prezime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `E-mail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Datum_sign_in` datetime NOT NULL,
  `Datum_zadnji_login` datetime NOT NULL,
  `Id_uloga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`Id_korisnik`, `Ime`, `Prezime`, `E-mail`, `Password`, `Datum_sign_in`, `Datum_zadnji_login`, `Id_uloga`) VALUES
(1, 'Lily', ' Ernst', 'lily.e@gmail.com', 'miss_lily', '2018-08-15 05:32:06', '0000-00-00 00:00:00', 2),
(2, 'Betty', 'Crocker', 'b_crocker@yahoo.com', 'bettyc', '2018-08-22 12:18:09', '2018-08-28 10:17:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mjera`
--

CREATE TABLE `mjera` (
  `Id_mjera` int(11) NOT NULL,
  `Naslov` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Skracenica` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recept`
--

CREATE TABLE `recept` (
  `Id_recept` int(11) NOT NULL,
  `Naziv_recept` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Id_kategorija` int(11) NOT NULL,
  `Id_fotografija` int(11) NOT NULL,
  `Id_korisnik` int(11) NOT NULL,
  `Vrijeme_objave_recept` datetime NOT NULL,
  `Ukupno_vrijeme_izrade` time NOT NULL,
  `Upute_za_pripremu` text COLLATE utf8_unicode_ci NOT NULL,
  `Posebna_napomena` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Featured` tinyint(4) NOT NULL DEFAULT '0',
  `Kratki_opis` varchar(160) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recept`
--

INSERT INTO `recept` (`Id_recept`, `Naziv_recept`, `Id_kategorija`, `Id_fotografija`, `Id_korisnik`, `Vrijeme_objave_recept`, `Ukupno_vrijeme_izrade`, `Upute_za_pripremu`, `Posebna_napomena`, `Featured`, `Kratki_opis`) VALUES
(3, 'Simple Fresh Strawberry Cake', 9, 1, 1, '2018-08-23 18:00:00', '00:30:00', 'Preheat the oven to 400F and grease a 9″ round cake pan or pie plate.\r\nBeat the eggs and sugar (and vanilla if desired) using an electric mixer on medium speed for about 3 minutes (or until pale in color)\r\nUsing a rubber spatula or wooden spoon, gently stir in the sifted flour just until the batter is combined and smooth.\r\nFold in the strawberries and pour onto prepared baking pan. Top with a few strawberry halves.\r\nBake for 5 minutes at 400F. Then lower the temp to 350F and bake for another 30-35 minutes or until golden on top and a toothpick in', 'Let cake cool and serve with some whipped cream or enjoy as is. This cake is best fresh the day of. Because of the natural juices from the strawberries, the cake tends to get moist the day after.', 0, 'This simple tasty cake is bursting with strawberry flavor in every bite. All it takes is 4 ingredients and 30 minutes bake time.'),
(4, 'Banana Chocolate  Chip Muffins', 21, 3, 1, '2018-08-27 07:27:09', '00:40:00', '1. Preheat the oven to 350F and line a 12 cup muffin pan with paper liners.\r\n\r\n2. In a large bowl, stir together the flour, sugar, cinnamon, baking soda and salt. Toss in the chocolate chips and set aside.\r\n\r\n3.In a medium bowl, whisk together the mashed bananas, oil, eggs, yogurt and vanilla extract.\r\n\r\n4.Add the wet ingredients to the dry ingredients and mix until just combined.\r\nDivide the batter amongst the 12 muffin cups. Sprinkle a few more chocolate chips on top if desired.\r\n\r\n5.Bake for 20-23 minutes or until a toothpick inserted into the center comes out clean.', 'The muffins can be stored in an airtight container at room temperature for up to 3-4 days.', 0, 'These banana chocolate chip muffins are moist, flavorful and not too sweet. They make for a great everyday breakfast or snack.'),
(5, 'Vanilla Bean Cupcakes', 21, 4, 2, '2018-08-29 04:14:00', '03:15:00', '1. Let eggs stand at room temperature 30 minutes. Meanwhile, place paper baking cup in each of 24 regular-size muffin cups. In medium bowl, mix 2 1/2 cups flour, the baking powder and salt.\r\n\r\n2. Heat oven to 375°F. (For dark or nonstick pans, heat oven to 350°F.) In large bowl, beat 1 cup softened butter, seeds from 1 vanilla bean, and 1 1/2 cups sugar with electric mixer on high speed until light and fluffy. Add eggs, one at a time, beating well after each addition. Stir in 1 teaspoon vanilla. On low speed, beat flour mixture into sugar mixture alternately with 1 cup milk, beating after each addition just until smooth. Scrape side of bowl occasionally. Stir in sour cream.\r\n\r\n3 Spoon batter evenly into muffin cups, filing each about three-fourths full. Bake 20 to 25 minutes or until light golden brown and toothpick inserted in center comes out clean. Cool 5 minutes. Remove cupcakes from pan to cooling racks. Cool completely, about 30 minutes.\r\n\r\n4. Meanwhile, for frosting, in 4-quart saucepan beat 2 cups sugar and 1/2 cup flour with whisk. Beat in 2 cups milk until smooth. Cook over medium heat until mixture comes to a boil, beating constantly. Cook 1 minute longer as it boils. Remove from heat; immediately pour into ungreased 2-quart baking dish or shallow pan with sides. Refrigerate about 1 hour or until cooled.\r\n\r\n5. In large bowl, beat 2 cups softened butter and seeds from 1 vanilla bean with electric mixer on high speed until light and fluffy. Gradually add cooled flour mixture by 1/4 cupfuls; beat on high speed until smooth. Beat in 1 1/2 teaspoons vanilla.\r\n\r\n6. Place frosting in large resealable freezer bag. Cut off one bottom corner to create 1-inch opening. Pipe frosting in circular motion over cupcakes. Garnish with raspberries and mint.', '', 0, 'Oh! Now this is elegant. One exotic flavor showcased in a simple recipe to highlight its unique profile.'),
(6, 'Vanilla Bean Cupcakes', 21, 4, 2, '2018-08-29 04:14:00', '03:15:00', '1. Let eggs stand at room temperature 30 minutes. Meanwhile, place paper baking cup in each of 24 regular-size muffin cups. In medium bowl, mix 2 1/2 cups flour, the baking powder and salt.\r\n\r\n2. Heat oven to 375°F. (For dark or nonstick pans, heat oven to 350°F.) In large bowl, beat 1 cup softened butter, seeds from 1 vanilla bean, and 1 1/2 cups sugar with electric mixer on high speed until light and fluffy. Add eggs, one at a time, beating well after each addition. Stir in 1 teaspoon vanilla. On low speed, beat flour mixture into sugar mixture alternately with 1 cup milk, beating after each addition just until smooth. Scrape side of bowl occasionally. Stir in sour cream.\r\n\r\n3 Spoon batter evenly into muffin cups, filing each about three-fourths full. Bake 20 to 25 minutes or until light golden brown and toothpick inserted in center comes out clean. Cool 5 minutes. Remove cupcakes from pan to cooling racks. Cool completely, about 30 minutes.\r\n\r\n4. Meanwhile, for frosting, in 4-quart saucepan beat 2 cups sugar and 1/2 cup flour with whisk. Beat in 2 cups milk until smooth. Cook over medium heat until mixture comes to a boil, beating constantly. Cook 1 minute longer as it boils. Remove from heat; immediately pour into ungreased 2-quart baking dish or shallow pan with sides. Refrigerate about 1 hour or until cooled.\r\n\r\n5. In large bowl, beat 2 cups softened butter and seeds from 1 vanilla bean with electric mixer on high speed until light and fluffy. Gradually add cooled flour mixture by 1/4 cupfuls; beat on high speed until smooth. Beat in 1 1/2 teaspoons vanilla.\r\n\r\n6. Place frosting in large resealable freezer bag. Cut off one bottom corner to create 1-inch opening. Pipe frosting in circular motion over cupcakes. Garnish with raspberries and mint.', '', 0, 'Oh! Now this is elegant. One exotic flavor showcased in a simple recipe to highlight its unique profile.'),
(7, 'Vanilla Bean Cupcakes', 21, 4, 2, '2018-08-29 04:14:00', '03:15:00', '1. Let eggs stand at room temperature 30 minutes. Meanwhile, place paper baking cup in each of 24 regular-size muffin cups. In medium bowl, mix 2 1/2 cups flour, the baking powder and salt.\r\n\r\n2. Heat oven to 375°F. (For dark or nonstick pans, heat oven to 350°F.) In large bowl, beat 1 cup softened butter, seeds from 1 vanilla bean, and 1 1/2 cups sugar with electric mixer on high speed until light and fluffy. Add eggs, one at a time, beating well after each addition. Stir in 1 teaspoon vanilla. On low speed, beat flour mixture into sugar mixture alternately with 1 cup milk, beating after each addition just until smooth. Scrape side of bowl occasionally. Stir in sour cream.\r\n\r\n3 Spoon batter evenly into muffin cups, filing each about three-fourths full. Bake 20 to 25 minutes or until light golden brown and toothpick inserted in center comes out clean. Cool 5 minutes. Remove cupcakes from pan to cooling racks. Cool completely, about 30 minutes.\r\n\r\n4. Meanwhile, for frosting, in 4-quart saucepan beat 2 cups sugar and 1/2 cup flour with whisk. Beat in 2 cups milk until smooth. Cook over medium heat until mixture comes to a boil, beating constantly. Cook 1 minute longer as it boils. Remove from heat; immediately pour into ungreased 2-quart baking dish or shallow pan with sides. Refrigerate about 1 hour or until cooled.\r\n\r\n5. In large bowl, beat 2 cups softened butter and seeds from 1 vanilla bean with electric mixer on high speed until light and fluffy. Gradually add cooled flour mixture by 1/4 cupfuls; beat on high speed until smooth. Beat in 1 1/2 teaspoons vanilla.\r\n\r\n6. Place frosting in large resealable freezer bag. Cut off one bottom corner to create 1-inch opening. Pipe frosting in circular motion over cupcakes. Garnish with raspberries and mint.', '', 0, 'Oh! Now this is elegant. One exotic flavor showcased in a simple recipe to highlight its unique profile.'),
(8, 'Simple Fresh Strawberry Cake', 9, 1, 1, '2018-08-23 18:00:00', '00:30:00', 'Preheat the oven to 400F and grease a 9″ round cake pan or pie plate.\r\nBeat the eggs and sugar (and vanilla if desired) using an electric mixer on medium speed for about 3 minutes (or until pale in color)\r\nUsing a rubber spatula or wooden spoon, gently stir in the sifted flour just until the batter is combined and smooth.\r\nFold in the strawberries and pour onto prepared baking pan. Top with a few strawberry halves.\r\nBake for 5 minutes at 400F. Then lower the temp to 350F and bake for another 30-35 minutes or until golden on top and a toothpick in', 'Let cake cool and serve with some whipped cream or enjoy as is. This cake is best fresh the day of. Because of the natural juices from the strawberries, the cake tends to get moist the day after.', 0, 'This simple tasty cake is bursting with strawberry flavor in every bite. All it takes is 4 ingredients and 30 minutes bake time.'),
(9, 'Banana Chocolate  Chip Muffins', 21, 3, 1, '2018-08-27 07:27:09', '00:40:00', '1. Preheat the oven to 350F and line a 12 cup muffin pan with paper liners.\r\n\r\n2. In a large bowl, stir together the flour, sugar, cinnamon, baking soda and salt. Toss in the chocolate chips and set aside.\r\n\r\n3.In a medium bowl, whisk together the mashed bananas, oil, eggs, yogurt and vanilla extract.\r\n\r\n4.Add the wet ingredients to the dry ingredients and mix until just combined.\r\nDivide the batter amongst the 12 muffin cups. Sprinkle a few more chocolate chips on top if desired.\r\n\r\n5.Bake for 20-23 minutes or until a toothpick inserted into the center comes out clean.', 'The muffins can be stored in an airtight container at room temperature for up to 3-4 days.', 0, 'These banana chocolate chip muffins are moist, flavorful and not too sweet. They make for a great everyday breakfast or snack.'),
(10, 'Vanilla Bean Cupcakes', 21, 4, 2, '2018-08-29 04:14:00', '03:15:00', '1. Let eggs stand at room temperature 30 minutes. Meanwhile, place paper baking cup in each of 24 regular-size muffin cups. In medium bowl, mix 2 1/2 cups flour, the baking powder and salt.\r\n\r\n2. Heat oven to 375°F. (For dark or nonstick pans, heat oven to 350°F.) In large bowl, beat 1 cup softened butter, seeds from 1 vanilla bean, and 1 1/2 cups sugar with electric mixer on high speed until light and fluffy. Add eggs, one at a time, beating well after each addition. Stir in 1 teaspoon vanilla. On low speed, beat flour mixture into sugar mixture alternately with 1 cup milk, beating after each addition just until smooth. Scrape side of bowl occasionally. Stir in sour cream.\r\n\r\n3 Spoon batter evenly into muffin cups, filing each about three-fourths full. Bake 20 to 25 minutes or until light golden brown and toothpick inserted in center comes out clean. Cool 5 minutes. Remove cupcakes from pan to cooling racks. Cool completely, about 30 minutes.\r\n\r\n4. Meanwhile, for frosting, in 4-quart saucepan beat 2 cups sugar and 1/2 cup flour with whisk. Beat in 2 cups milk until smooth. Cook over medium heat until mixture comes to a boil, beating constantly. Cook 1 minute longer as it boils. Remove from heat; immediately pour into ungreased 2-quart baking dish or shallow pan with sides. Refrigerate about 1 hour or until cooled.\r\n\r\n5. In large bowl, beat 2 cups softened butter and seeds from 1 vanilla bean with electric mixer on high speed until light and fluffy. Gradually add cooled flour mixture by 1/4 cupfuls; beat on high speed until smooth. Beat in 1 1/2 teaspoons vanilla.\r\n\r\n6. Place frosting in large resealable freezer bag. Cut off one bottom corner to create 1-inch opening. Pipe frosting in circular motion over cupcakes. Garnish with raspberries and mint.', '', 0, 'Oh! Now this is elegant. One exotic flavor showcased in a simple recipe to highlight its unique profile.'),
(11, 'Banana Chocolate  Chip Muffins', 21, 3, 1, '2018-08-27 07:27:09', '00:40:00', '1. Preheat the oven to 350F and line a 12 cup muffin pan with paper liners.\r\n\r\n2. In a large bowl, stir together the flour, sugar, cinnamon, baking soda and salt. Toss in the chocolate chips and set aside.\r\n\r\n3.In a medium bowl, whisk together the mashed bananas, oil, eggs, yogurt and vanilla extract.\r\n\r\n4.Add the wet ingredients to the dry ingredients and mix until just combined.\r\nDivide the batter amongst the 12 muffin cups. Sprinkle a few more chocolate chips on top if desired.\r\n\r\n5.Bake for 20-23 minutes or until a toothpick inserted into the center comes out clean.', 'The muffins can be stored in an airtight container at room temperature for up to 3-4 days.', 0, 'These banana chocolate chip muffins are moist, flavorful and not too sweet. They make for a great everyday breakfast or snack.');

-- --------------------------------------------------------

--
-- Table structure for table `recept_fotografija`
--

CREATE TABLE `recept_fotografija` (
  `Id_fotografija` int(11) NOT NULL,
  `Fotografija` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recept_fotografija`
--

INSERT INTO `recept_fotografija` (`Id_fotografija`, `Fotografija`) VALUES
(1, 'images/strawberry_cake.jpg'),
(3, 'images/banana_chocolate_chip_muffin.jpg'),
(4, 'images/vanilla_muffin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `recept_kategorija`
--

CREATE TABLE `recept_kategorija` (
  `Id_kategorija` int(11) NOT NULL,
  `Kategorija_naslov` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recept_kategorija`
--

INSERT INTO `recept_kategorija` (`Id_kategorija`, `Kategorija_naslov`, `Parent`) VALUES
(1, 'Cakes', 0),
(2, 'Pretzels', 0),
(3, 'Puff pastry', 0),
(6, 'Birthday cakes', 1),
(7, 'Wedding cakes', 1),
(9, 'Other Types Of Cake', 1),
(12, 'Hard Pretzel Types', 2),
(13, 'The Origin of the Hard Pretzel', 2),
(15, 'Soft Pretzel Types', 2),
(16, 'Born and Bre(a)d', 2),
(17, 'Sweet puff pastry', 3),
(20, 'Salty puff pastry', 3),
(21, 'Muffins', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recept_sastojak`
--

CREATE TABLE `recept_sastojak` (
  `Id_recept` int(11) NOT NULL,
  `Id_sastojak` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `Id_mjerna_jedinica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sastojak`
--

CREATE TABLE `sastojak` (
  `Id_sastojak` int(11) NOT NULL,
  `Sastojak_naziv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uloga`
--

CREATE TABLE `uloga` (
  `Id_uloga` int(11) NOT NULL,
  `Naziv_uloga` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uloga`
--

INSERT INTO `uloga` (`Id_uloga`, `Naziv_uloga`) VALUES
(1, 'korisnik'),
(2, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`Id_korisnik`),
  ADD KEY `Id_uloga` (`Id_uloga`),
  ADD KEY `Id_uloga_2` (`Id_uloga`);

--
-- Indexes for table `mjera`
--
ALTER TABLE `mjera`
  ADD PRIMARY KEY (`Id_mjera`);

--
-- Indexes for table `recept`
--
ALTER TABLE `recept`
  ADD PRIMARY KEY (`Id_recept`),
  ADD KEY `Id_kategorija` (`Id_kategorija`),
  ADD KEY `Id_fotografija` (`Id_fotografija`),
  ADD KEY `Id_korisnik` (`Id_korisnik`);

--
-- Indexes for table `recept_fotografija`
--
ALTER TABLE `recept_fotografija`
  ADD PRIMARY KEY (`Id_fotografija`);

--
-- Indexes for table `recept_kategorija`
--
ALTER TABLE `recept_kategorija`
  ADD PRIMARY KEY (`Id_kategorija`);

--
-- Indexes for table `recept_sastojak`
--
ALTER TABLE `recept_sastojak`
  ADD KEY `Id_mjerna_jedinica` (`Id_mjerna_jedinica`),
  ADD KEY `Id_sastojak` (`Id_sastojak`),
  ADD KEY `Id_recept` (`Id_recept`);

--
-- Indexes for table `sastojak`
--
ALTER TABLE `sastojak`
  ADD PRIMARY KEY (`Id_sastojak`);

--
-- Indexes for table `uloga`
--
ALTER TABLE `uloga`
  ADD PRIMARY KEY (`Id_uloga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `Id_korisnik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mjera`
--
ALTER TABLE `mjera`
  MODIFY `Id_mjera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recept`
--
ALTER TABLE `recept`
  MODIFY `Id_recept` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `recept_fotografija`
--
ALTER TABLE `recept_fotografija`
  MODIFY `Id_fotografija` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recept_kategorija`
--
ALTER TABLE `recept_kategorija`
  MODIFY `Id_kategorija` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sastojak`
--
ALTER TABLE `sastojak`
  MODIFY `Id_sastojak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uloga`
--
ALTER TABLE `uloga`
  MODIFY `Id_uloga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `korisnik_ibfk_1` FOREIGN KEY (`Id_uloga`) REFERENCES `uloga` (`Id_uloga`) ON UPDATE CASCADE;

--
-- Constraints for table `recept`
--
ALTER TABLE `recept`
  ADD CONSTRAINT `recept_ibfk_1` FOREIGN KEY (`Id_kategorija`) REFERENCES `recept_kategorija` (`Id_kategorija`),
  ADD CONSTRAINT `recept_ibfk_2` FOREIGN KEY (`Id_fotografija`) REFERENCES `recept_fotografija` (`Id_fotografija`),
  ADD CONSTRAINT `recept_ibfk_3` FOREIGN KEY (`Id_korisnik`) REFERENCES `korisnik` (`Id_korisnik`);

--
-- Constraints for table `recept_sastojak`
--
ALTER TABLE `recept_sastojak`
  ADD CONSTRAINT `recept_sastojak_ibfk_1` FOREIGN KEY (`Id_sastojak`) REFERENCES `sastojak` (`Id_sastojak`),
  ADD CONSTRAINT `recept_sastojak_ibfk_2` FOREIGN KEY (`Id_mjerna_jedinica`) REFERENCES `mjera` (`Id_mjera`),
  ADD CONSTRAINT `recept_sastojak_ibfk_3` FOREIGN KEY (`Id_recept`) REFERENCES `recept` (`Id_recept`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
