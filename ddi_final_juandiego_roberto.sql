

CREATE TABLE `alumnos` (
  `id` int(10) UNSIGNED NOT NULL,
  `matricula` varchar(11) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `genero` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `id_domicilio` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `alumnos` (`id`, `matricula`, `nombre`, `apellido_paterno`, `apellido_materno`, `genero`, `fecha_nacimiento`, `id_domicilio`) VALUES
(30, '5722190012', 'PEDRO', 'MARTINEZ', 'MORA', 1, '1998-08-09', 32),
(31, '5722019822', 'JIMENA', 'SANCHEZ', 'VILLANUEVA', 2, '2003-05-11', 33),
(32, '5722190017', 'JANETZY', 'GARCIA', 'CRISTINO', 2, '2002-03-10', 34),
(33, '57221900112', 'YUCA', 'ENCY', 'S', 1, '1810-06-19', 35);


CREATE TABLE `calificaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `parcial1` int(10) UNSIGNED DEFAULT NULL,
  `parcial2` int(10) UNSIGNED DEFAULT NULL,
  `parcial3` int(10) UNSIGNED DEFAULT NULL,
  `extraordinario` int(10) UNSIGNED DEFAULT NULL,
  `id_materia` int(10) UNSIGNED NOT NULL,
  `id_alumno` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `calificaciones` (`id`, `parcial1`, `parcial2`, `parcial3`, `extraordinario`, `id_materia`, `id_alumno`) VALUES
(19, 9, 9, NULL, NULL, 14, 27),
(20, 9, 9, NULL, NULL, 14, 28),
(21, 9, NULL, NULL, NULL, 15, 27),
(22, 9, NULL, NULL, NULL, 15, 28),
(23, 9, 9, 9, NULL, 16, 29),
(24, 9, 8, 10, NULL, 16, 30),
(25, 9, 10, 10, NULL, 16, 31),
(26, 10, 10, 10, NULL, 16, 32),
(27, 8, 10, 8, NULL, 19, 29),
(28, 8, 8, 9, NULL, 19, 30),
(29, 8, 9, 7, NULL, 19, 31),
(30, 8, 10, 10, NULL, 19, 32),
(31, 9, 8, 9, NULL, 22, 29),
(32, 9, 8, 9, NULL, 22, 30),
(33, 9, 8, 9, NULL, 22, 31),
(34, 9, 10, 9, NULL, 22, 32),
(35, 8, 7, 10, NULL, 17, 29),
(36, 8, 9, 9, NULL, 17, 30),
(37, 8, 9, 9, NULL, 17, 31),
(38, 8, 9, 10, NULL, 17, 32),
(39, 9, 0, 8, NULL, 20, 29),
(40, 8, 0, 8, NULL, 20, 30),
(41, 9, 0, 8, NULL, 20, 31),
(42, 10, 9, 8, NULL, 20, 32),
(43, 10, 9, 9, NULL, 23, 29),
(44, 9, 8, 9, NULL, 23, 30),
(45, 9, 8, 9, NULL, 23, 31),
(46, 10, 10, 10, NULL, 23, 32),
(47, 8, 8, 9, NULL, 18, 29),
(48, 8, 9, 9, NULL, 18, 30),
(49, 8, 7, 9, NULL, 18, 31),
(50, 8, 10, 10, NULL, 18, 32),
(51, 9, 0, 0, NULL, 21, 29),
(52, 9, 0, 0, NULL, 21, 30),
(53, 9, 0, 0, NULL, 21, 31),
(54, 9, 10, 10, NULL, 21, 32),
(55, 0, 10, 9, NULL, 24, 29),
(56, 0, 10, 9, NULL, 24, 30),
(57, 0, 9, 9, NULL, 24, 31),
(58, 9, 10, 10, NULL, 24, 32),
(59, 9, NULL, NULL, NULL, 16, 33);



CREATE TABLE `domicilio` (
  `id` int(10) UNSIGNED NOT NULL,
  `calle` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `domicilio` (`id`, `calle`, `colonia`, `numero`) VALUES
(10, 'SIN', 'NEJAPA', '50'),
(11, '12', '21212121', '2'),
(12, '7', 'hk', 'h'),
(13, 'ñk', 'poipoi', 'ñlkñ'),
(14, 'poipoiipo', 'íioí', 'i´p'),
(15, 'UIIUP', 'UI09', '098'),
(16, 'oiuoiu', 'ooiiuu', '870'),
(17, '0\'poipoi', 'ipoi', 'p0\''),
(18, 'oiuoiu', 'oiu098', 'iuo'),
(19, '987987', '987987', '987987'),
(20, 'oiuoiuuoi', 'uiu808', '809'),
(21, '809098098', '09889809', '8098'),
(22, '656576', 'uuoiu', 'kj'),
(23, 'uyuoi', 'oui', '6'),
(24, 'oiuoiu', 'uoiu', 'oiu'),
(25, 'oiuoiu', 'r', 'u'),
(26, '09', '098', '09'),
(27, '9', '9', '9'),
(28, '11', '11', '1'),
(29, '890', '908', '098'),
(30, '909', '900', '9'),
(31, 'SIN', 'NEJAPA', '50'),
(32, 'SIN', 'SAN JUAN', '1222'),
(33, 'MIGUEL Y DALGO', 'SAN JOSE', '1212'),
(34, 'SIN', 'NUEVO AMANECER', '#121'),
(35, 'oiuoiu', 'NEW YORK', '098');


CREATE TABLE `materias` (
  `id` int(10) UNSIGNED NOT NULL,
  `clave_materia` varchar(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cuatrimestre` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `materias` (`id`, `clave_materia`, `nombre`, `cuatrimestre`) VALUES
(16, '100', 'MATEMATICAS I', 9),
(17, '200', 'MATEMATICAS II', 10),
(18, '300', 'MATEMATICAS III', 11),
(19, '101', 'INGLES I', 9),
(20, '201', 'INGLES II', 10),
(21, '301', 'INGLES III', 11),
(22, '102', 'JAVA I', 9),
(23, '202', 'JAVA II', 10),
(24, '302', 'JAVA III', 11);


CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_completo` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_rol` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `usuarios` (`id`, `nombre_completo`, `correo_electronico`, `password`, `id_rol`) VALUES
(2, 'juan diego cantor jimon', 'diegocan171@gmail.com', '$2b$10$LZ4ehwSwSb/TGbgETwXxcuR1AW5hm0jCE11cqVk3H5tMraxXuPQX.', 0);


ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricula` (`matricula`),
  ADD KEY `fk_alumnos_domicilio` (`id_domicilio`);


ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `alumnos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;


ALTER TABLE `calificaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;


ALTER TABLE `domicilio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;


ALTER TABLE `materias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `alumnos`
  ADD CONSTRAINT `fk_alumnos_domicilio` FOREIGN KEY (`id_domicilio`) REFERENCES `domicilio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;


