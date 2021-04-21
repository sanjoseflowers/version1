-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2021 a las 14:51:31
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `flores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add acerca', 7, 'add_acerca'),
(26, 'Can change acerca', 7, 'change_acerca'),
(27, 'Can delete acerca', 7, 'delete_acerca'),
(28, 'Can view acerca', 7, 'view_acerca'),
(29, 'Can add galeria', 8, 'add_galeria'),
(30, 'Can change galeria', 8, 'change_galeria'),
(31, 'Can delete galeria', 8, 'delete_galeria'),
(32, 'Can view galeria', 8, 'view_galeria'),
(33, 'Can add contacto', 9, 'add_contacto'),
(34, 'Can change contacto', 9, 'change_contacto'),
(35, 'Can delete contacto', 9, 'delete_contacto'),
(36, 'Can view contacto', 9, 'view_contacto'),
(37, 'Can add producto', 10, 'add_producto'),
(38, 'Can change producto', 10, 'change_producto'),
(39, 'Can delete producto', 10, 'delete_producto'),
(40, 'Can view producto', 10, 'view_producto'),
(41, 'Can add carrito', 11, 'add_carrito'),
(42, 'Can change carrito', 11, 'change_carrito'),
(43, 'Can delete carrito', 11, 'delete_carrito'),
(44, 'Can view carrito', 11, 'view_carrito'),
(45, 'Can add carrito productos', 12, 'add_carritoproductos'),
(46, 'Can change carrito productos', 12, 'change_carritoproductos'),
(47, 'Can delete carrito productos', 12, 'delete_carritoproductos'),
(48, 'Can view carrito productos', 12, 'view_carritoproductos'),
(49, 'Can add direccion envio', 13, 'add_direccionenvio'),
(50, 'Can change direccion envio', 13, 'change_direccionenvio'),
(51, 'Can delete direccion envio', 13, 'delete_direccionenvio'),
(52, 'Can view direccion envio', 13, 'view_direccionenvio'),
(53, 'Can add orden', 14, 'add_orden'),
(54, 'Can change orden', 14, 'change_orden'),
(55, 'Can delete orden', 14, 'delete_orden'),
(56, 'Can view orden', 14, 'view_orden'),
(57, 'Can add categoria', 15, 'add_categoria'),
(58, 'Can change categoria', 15, 'change_categoria'),
(59, 'Can delete categoria', 15, 'delete_categoria'),
(60, 'Can view categoria', 15, 'view_categoria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$150000$9YzY8qsA0hSV$d7Wt9HeMjDGJB5JMgi5aWs6yJJuW8tSMX5V8jjpGgco=', '2021-02-21 05:33:47.448188', 1, 'Administrador', '', '', 'admin@gmail.com', 1, 1, '2021-02-19 23:18:23.810545');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_carrito`
--

CREATE TABLE `carrito_carrito` (
  `id` int(11) NOT NULL,
  `carrito_id` varchar(100) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `create_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito_carritoproductos`
--

CREATE TABLE `carrito_carritoproductos` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `carrito_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_envio_direccionenvio`
--

CREATE TABLE `direccion_envio_direccionenvio` (
  `id` int(11) NOT NULL,
  `calle1` varchar(150) NOT NULL,
  `calle2` varchar(150) NOT NULL,
  `ciudad` varchar(150) NOT NULL,
  `referencia` varchar(150) NOT NULL,
  `created_at` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `telefono` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_envio_orden`
--

CREATE TABLE `direccion_envio_orden` (
  `id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `carrito_id` int(11) NOT NULL,
  `direccion_id` int(11) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `pago` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'carrito', 'carrito'),
(12, 'carrito', 'carritoproductos'),
(5, 'contenttypes', 'contenttype'),
(13, 'direccion_envio', 'direccionenvio'),
(14, 'direccion_envio', 'orden'),
(7, 'pagina_web', 'acerca'),
(15, 'pagina_web', 'categoria'),
(9, 'pagina_web', 'contacto'),
(8, 'pagina_web', 'galeria'),
(10, 'pagina_web', 'producto'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-19 23:12:52.230710'),
(2, 'auth', '0001_initial', '2021-02-19 23:12:54.747303'),
(3, 'admin', '0001_initial', '2021-02-19 23:13:02.792625'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-19 23:13:05.494754'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-19 23:13:05.553109'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-19 23:13:06.807322'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-19 23:13:07.716309'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-19 23:13:08.650169'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-19 23:13:08.730953'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-19 23:13:09.316388'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-19 23:13:09.328355'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-19 23:13:09.374232'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-19 23:13:10.073828'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-19 23:13:10.813732'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-19 23:13:12.249881'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-19 23:13:12.273817'),
(17, 'pagina_web', '0001_initial', '2021-02-19 23:13:12.663771'),
(18, 'pagina_web', '0002_auto_20201216_1216', '2021-02-19 23:13:13.027828'),
(19, 'pagina_web', '0003_contacto_producto', '2021-02-19 23:13:13.763220'),
(20, 'pagina_web', '0004_auto_20201216_1505', '2021-02-19 23:13:14.808056'),
(21, 'carrito', '0001_initial', '2021-02-19 23:13:17.089466'),
(22, 'carrito', '0002_carrito_productos', '2021-02-19 23:13:19.829168'),
(23, 'direccion_envio', '0001_initial', '2021-02-19 23:13:20.231095'),
(24, 'direccion_envio', '0002_orden', '2021-02-19 23:13:21.795552'),
(25, 'direccion_envio', '0003_orden_estado', '2021-02-19 23:13:24.714917'),
(26, 'direccion_envio', '0004_auto_20210108_1256', '2021-02-19 23:13:25.954637'),
(27, 'pagina_web', '0005_auto_20210108_1256', '2021-02-19 23:13:27.231497'),
(28, 'sessions', '0001_initial', '2021-02-19 23:13:27.805968'),
(29, 'pagina_web', '0006_auto_20210219_2213', '2021-02-20 03:13:55.423982'),
(30, 'direccion_envio', '0005_direccionenvio_telefono', '2021-02-20 13:37:06.495758'),
(31, 'direccion_envio', '0006_orden_pago', '2021-02-20 17:38:16.422269'),
(32, 'pagina_web', '0007_auto_20210220_2155', '2021-02-21 02:55:46.759020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('b6qks7nhorgk2rylmsumr9c7wgs08gub', 'YmRjMDgyNzc0YjgwM2E5MjVlMzc5MDFhYTkyZjdiMmNhOWQzODQ4ZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4YzRjOTY2NjhiZjYxNzJiMDhkMTUxNGY2NzJmNmUzZWFkMjFmOTAzIn0=', '2021-03-07 05:33:47.507032'),
('evjpucag69w2f0ufe81m0pkygtd7c06l', 'NDU4MzRlMTc1MWY3ZDAxOWEyNTM5MWMxZWNmOTAwOTMxNjFmNWNjMTp7ImNhcnJpdG9faWQiOiIxMDgifQ==', '2021-03-07 13:44:51.331874');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_web_acerca`
--

CREATE TABLE `pagina_web_acerca` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `creacion` datetime(6) DEFAULT NULL,
  `actualizacion` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_web_categoria`
--

CREATE TABLE `pagina_web_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_web_contacto`
--

CREATE TABLE `pagina_web_contacto` (
  `id` int(11) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `correo1` varchar(254) NOT NULL,
  `correo2` varchar(254) NOT NULL,
  `telefono1` varchar(10) NOT NULL,
  `telefono2` varchar(10) NOT NULL,
  `mapa` longtext NOT NULL,
  `facebbok` varchar(300) NOT NULL,
  `whatsapp` varchar(300) NOT NULL,
  `creacion` datetime(6) DEFAULT NULL,
  `actualizacion` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_web_galeria`
--

CREATE TABLE `pagina_web_galeria` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `imagen1` varchar(100) NOT NULL,
  `creacion` datetime(6) DEFAULT NULL,
  `actualizacion` datetime(6) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_web_producto`
--

CREATE TABLE `pagina_web_producto` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `disponibilidad` varchar(1) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `creacion` datetime(6) DEFAULT NULL,
  `actualizacion` datetime(6) DEFAULT NULL,
  `cantidad` varchar(150) DEFAULT NULL,
  `descripcion` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `carrito_carrito`
--
ALTER TABLE `carrito_carrito`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carrito_id` (`carrito_id`),
  ADD KEY `carrito_carrito_user_id_3d190db8_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `carrito_carritoproductos`
--
ALTER TABLE `carrito_carritoproductos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrito_carritoprodu_carrito_id_1f0309a4_fk_carrito_c` (`carrito_id`),
  ADD KEY `carrito_carritoprodu_producto_id_2f53c627_fk_pagina_we` (`producto_id`);

--
-- Indices de la tabla `direccion_envio_direccionenvio`
--
ALTER TABLE `direccion_envio_direccionenvio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `direccion_envio_direccionenvio_user_id_d8e3f774_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `direccion_envio_orden`
--
ALTER TABLE `direccion_envio_orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `direccion_envio_orden_carrito_id_39fb4952_fk_carrito_carrito_id` (`carrito_id`),
  ADD KEY `direccion_envio_orde_direccion_id_911bd46b_fk_direccion` (`direccion_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `pagina_web_acerca`
--
ALTER TABLE `pagina_web_acerca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagina_web_categoria`
--
ALTER TABLE `pagina_web_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagina_web_contacto`
--
ALTER TABLE `pagina_web_contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagina_web_galeria`
--
ALTER TABLE `pagina_web_galeria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagina_web_galeria_categoria_id_5ad923e5_fk_pagina_we` (`categoria_id`);

--
-- Indices de la tabla `pagina_web_producto`
--
ALTER TABLE `pagina_web_producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carrito_carrito`
--
ALTER TABLE `carrito_carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `carrito_carritoproductos`
--
ALTER TABLE `carrito_carritoproductos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `direccion_envio_direccionenvio`
--
ALTER TABLE `direccion_envio_direccionenvio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `direccion_envio_orden`
--
ALTER TABLE `direccion_envio_orden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `pagina_web_acerca`
--
ALTER TABLE `pagina_web_acerca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pagina_web_categoria`
--
ALTER TABLE `pagina_web_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pagina_web_contacto`
--
ALTER TABLE `pagina_web_contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pagina_web_galeria`
--
ALTER TABLE `pagina_web_galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `pagina_web_producto`
--
ALTER TABLE `pagina_web_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `carrito_carrito`
--
ALTER TABLE `carrito_carrito`
  ADD CONSTRAINT `carrito_carrito_user_id_3d190db8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `carrito_carritoproductos`
--
ALTER TABLE `carrito_carritoproductos`
  ADD CONSTRAINT `carrito_carritoprodu_carrito_id_1f0309a4_fk_carrito_c` FOREIGN KEY (`carrito_id`) REFERENCES `carrito_carrito` (`id`),
  ADD CONSTRAINT `carrito_carritoprodu_producto_id_2f53c627_fk_pagina_we` FOREIGN KEY (`producto_id`) REFERENCES `pagina_web_producto` (`id`);

--
-- Filtros para la tabla `direccion_envio_direccionenvio`
--
ALTER TABLE `direccion_envio_direccionenvio`
  ADD CONSTRAINT `direccion_envio_direccionenvio_user_id_d8e3f774_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `direccion_envio_orden`
--
ALTER TABLE `direccion_envio_orden`
  ADD CONSTRAINT `direccion_envio_orde_direccion_id_911bd46b_fk_direccion` FOREIGN KEY (`direccion_id`) REFERENCES `direccion_envio_direccionenvio` (`id`),
  ADD CONSTRAINT `direccion_envio_orden_carrito_id_39fb4952_fk_carrito_carrito_id` FOREIGN KEY (`carrito_id`) REFERENCES `carrito_carrito` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pagina_web_galeria`
--
ALTER TABLE `pagina_web_galeria`
  ADD CONSTRAINT `pagina_web_galeria_categoria_id_5ad923e5_fk_pagina_we` FOREIGN KEY (`categoria_id`) REFERENCES `pagina_web_categoria` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
