--
-- PostgreSQL database dump
--

\restrict 5Y7Ue2cy7YAQOOpOaXmpaH8B79rKaSBCA4qf3KRGOLjZ08R1CLhKgbWthof17ht

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pavel
--



--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'foodcartapp', 'product');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'foodcartapp', 'restaurant');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'foodcartapp', 'restaurantmenuitem');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'foodcartapp', 'productcategory');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'foodcartapp', 'order');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'foodcartapp', 'orderitem');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'geocoder_cache', 'cachedlocation');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add товар', 1, 'add_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change товар', 1, 'change_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete товар', 1, 'delete_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view товар', 1, 'view_product');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add ресторан', 2, 'add_restaurant');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change ресторан', 2, 'change_restaurant');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete ресторан', 2, 'delete_restaurant');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view ресторан', 2, 'view_restaurant');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add пункт меню ресторана', 3, 'add_restaurantmenuitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change пункт меню ресторана', 3, 'change_restaurantmenuitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete пункт меню ресторана', 3, 'delete_restaurantmenuitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view пункт меню ресторана', 3, 'view_restaurantmenuitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add категория', 4, 'add_productcategory');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change категория', 4, 'change_productcategory');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete категория', 4, 'delete_productcategory');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view категория', 4, 'view_productcategory');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add Заказ', 5, 'add_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change Заказ', 5, 'change_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete Заказ', 5, 'delete_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view Заказ', 5, 'view_order');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add Элемент заказа', 6, 'add_orderitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change Элемент заказа', 6, 'change_orderitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete Элемент заказа', 6, 'delete_orderitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view Элемент заказа', 6, 'view_orderitem');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add log entry', 7, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change log entry', 7, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete log entry', 7, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view log entry', 7, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add permission', 8, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change permission', 8, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete permission', 8, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view permission', 8, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add group', 9, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change group', 9, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete group', 9, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view group', 9, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add user', 10, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change user', 10, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete user', 10, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view user', 10, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add content type', 11, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change content type', 11, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete content type', 11, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view content type', 11, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add session', 12, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change session', 12, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete session', 12, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view session', 12, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add кэшированная локация', 13, 'add_cachedlocation');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change кэшированная локация', 13, 'change_cachedlocation');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete кэшированная локация', 13, 'delete_cachedlocation');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view кэшированная локация', 13, 'view_cachedlocation');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pavel
--



--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$1000000$i7itmpUyTLfjerm65tMhHK$LW5DVB4zH3BoMgi3YMVUEddLdF7bHAvSCxvL3yPmvmY=', '2025-11-03 20:16:52.056618+05', true, 'pasha', '', '', '', true, true, '2025-08-05 18:39:01.552+05');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pavel
--



--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: pavel
--



--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2025-08-11 19:37:11.555+05', '1', 'Star Burger Арбат', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2025-08-11 19:37:39.234+05', '2', 'Star Burger Цветной', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2025-08-11 19:37:53.965+05', '3', 'Star Burger Европейский', 1, '[{"added": {}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2025-08-11 19:42:00.584+05', '1', 'Бургер', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2025-08-11 19:42:07.035+05', '2', 'Ролл', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2025-08-11 19:44:54.809+05', '1', 'Стейкхаус', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2025-08-11 19:45:29.281+05', '2', 'Лонг Чизбургер', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2025-08-11 19:45:54.834+05', '3', 'Тройной Воппер', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2025-08-11 19:46:26.765+05', '4', 'Беконайзер', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2025-08-11 19:47:45.545+05', '5', 'Фиш Ролл', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2025-08-11 19:48:06.571+05', '6', 'Шримп Ролл', 1, '[{"added": {}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2025-08-11 19:54:51.829+05', '3', 'Star Burger Европейский', 2, '[{"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0415\u0432\u0440\u043e\u043f\u0435\u0439\u0441\u043a\u0438\u0439 - \u0421\u0442\u0435\u0439\u043a\u0445\u0430\u0443\u0441"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0415\u0432\u0440\u043e\u043f\u0435\u0439\u0441\u043a\u0438\u0439 - \u041b\u043e\u043d\u0433 \u0427\u0438\u0437\u0431\u0443\u0440\u0433\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0415\u0432\u0440\u043e\u043f\u0435\u0439\u0441\u043a\u0438\u0439 - \u0422\u0440\u043e\u0439\u043d\u043e\u0439 \u0412\u043e\u043f\u043f\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0415\u0432\u0440\u043e\u043f\u0435\u0439\u0441\u043a\u0438\u0439 - \u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0415\u0432\u0440\u043e\u043f\u0435\u0439\u0441\u043a\u0438\u0439 - \u0424\u0438\u0448 \u0420\u043e\u043b\u043b"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0415\u0432\u0440\u043e\u043f\u0435\u0439\u0441\u043a\u0438\u0439 - \u0428\u0440\u0438\u043c\u043f \u0420\u043e\u043b\u043b"}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2025-08-11 19:58:24.249+05', '2', 'Star Burger Цветной', 2, '[{"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u0421\u0442\u0435\u0439\u043a\u0445\u0430\u0443\u0441"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u041b\u043e\u043d\u0433 \u0427\u0438\u0437\u0431\u0443\u0440\u0433\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u0422\u0440\u043e\u0439\u043d\u043e\u0439 \u0412\u043e\u043f\u043f\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u0424\u0438\u0448 \u0420\u043e\u043b\u043b"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u0428\u0440\u0438\u043c\u043f \u0420\u043e\u043b\u043b"}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2025-08-11 19:58:38.133+05', '1', 'Star Burger Арбат', 2, '[{"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u0421\u0442\u0435\u0439\u043a\u0445\u0430\u0443\u0441"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u041b\u043e\u043d\u0433 \u0427\u0438\u0437\u0431\u0443\u0440\u0433\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u0422\u0440\u043e\u0439\u043d\u043e\u0439 \u0412\u043e\u043f\u043f\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u0424\u0438\u0448 \u0420\u043e\u043b\u043b"}}, {"added": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u0428\u0440\u0438\u043c\u043f \u0420\u043e\u043b\u043b"}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2025-08-14 21:36:46.525+05', '1', 'Заказ от  , по адресу: ', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2025-08-14 21:36:52.147+05', '1', 'Заказ от  , по адресу: ', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2025-08-19 22:22:00.778+05', '3', 'Заказ от Тимур -, по адресу: ...', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2025-08-19 22:50:22.858+05', '6', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2025-08-19 22:50:25.912+05', '5', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2025-08-19 22:50:28.912+05', '4', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2025-08-19 22:51:24.28+05', '7', 'Заказ от Тимур -, по адресу: ...', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2025-08-19 22:51:27.664+05', '2', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2025-08-25 00:34:24.665+05', '11', 'Заказ от Василий Васильевич, по адресу: Лондон', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2025-08-25 00:34:28.119+05', '10', 'Заказ от Василий Васильевич, по адресу: Лондон', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2025-08-25 00:34:31.106+05', '9', 'Заказ от Василий Васильевич, по адресу: Лондон', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2025-08-25 00:34:34.06+05', '12', 'Заказ от Василий Васильевич, по адресу: Лондон', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2025-09-02 19:49:53.452+05', '14', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2025-09-02 19:49:58.186+05', '13', 'Заказ от Василий Васильевич, по адресу: Лондон', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2025-09-02 19:50:27.96+05', '15', 'Заказ от Павел Чепик, по адресу: ghnjmfyuhjmfyujm', 1, '[{"added": {}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 3"}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2025-09-02 19:50:40.709+05', '15', 'Заказ от Павел Чепик, по адресу: ghnjmfyuhjmfyujm', 2, '[{"changed": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 3", "fields": ["\u0426\u0435\u043d\u0430 \u043d\u0430 \u043c\u043e\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2025-09-02 19:50:53.69+05', '15', 'Заказ от Павел Чепик, по адресу: ghnjmfyuhjmfyujm', 2, '[{"changed": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 3", "fields": ["\u0426\u0435\u043d\u0430 \u043d\u0430 \u043c\u043e\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2025-09-02 20:45:35.832+05', '15', 'Заказ от Павел Чепик, по адресу: ghnjmfyuhjmfyujm', 2, '[{"changed": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 1", "fields": ["\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e", "\u0426\u0435\u043d\u0430 \u043d\u0430 \u043c\u043e\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (33, '2025-09-02 20:45:41.524+05', '15', 'Заказ от Павел Чепик, по адресу: ghnjmfyuhjmfyujm', 2, '[{"changed": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 3", "fields": ["\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (34, '2025-09-02 20:47:52.401+05', '15', 'Заказ от Павел Чепик, по адресу: ghnjmfyuhjmfyujm', 2, '[{"changed": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 1", "fields": ["\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (35, '2025-09-02 20:50:32.093+05', '15', 'Заказ от Павел Чепик, по адресу: ghnjmfyuhjmfyujm', 2, '[{"changed": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 4", "fields": ["\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (36, '2025-09-02 21:00:04.734+05', '2', 'Лонг Чизбургер', 2, '[{"changed": {"fields": ["\u0426\u0435\u043d\u0430"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (37, '2025-09-02 21:07:07.507+05', '16', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (38, '2025-09-02 21:07:16.997+05', '2', 'Лонг Чизбургер', 2, '[{"changed": {"fields": ["\u0426\u0435\u043d\u0430"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (39, '2025-09-02 22:52:54.74+05', '16', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (40, '2025-09-02 22:52:57.861+05', '15', 'Заказ от Павел Чепик, по адресу: ghnjmfyuhjmfyujm', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (41, '2025-09-02 22:53:14.55+05', '17', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 1, '[{"added": {}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 1"}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (42, '2025-09-02 22:53:26.212+05', '4', 'Беконайзер', 2, '[{"changed": {"fields": ["\u0426\u0435\u043d\u0430"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (43, '2025-09-02 22:53:40.109+05', '4', 'Беконайзер', 2, '[{"changed": {"fields": ["\u0426\u0435\u043d\u0430"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (44, '2025-09-05 00:19:15.544+05', '18', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (45, '2025-09-05 00:19:29.771+05', '19', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 1, '[{"added": {}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0428\u0440\u0438\u043c\u043f \u0420\u043e\u043b\u043b x 1"}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (46, '2025-09-05 00:19:51.596+05', '6', 'Шримп Ролл', 2, '[{"changed": {"fields": ["\u0426\u0435\u043d\u0430"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (47, '2025-09-05 00:20:02.349+05', '6', 'Шримп Ролл', 2, '[{"changed": {"fields": ["\u0426\u0435\u043d\u0430"]}}]', 1, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (48, '2025-09-06 01:33:37.476+05', '17', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (49, '2025-09-06 14:46:16.022+05', '19', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (50, '2025-09-07 14:47:30.833+05', '19', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[{"changed": {"fields": ["\u0421\u043f\u043e\u0441\u043e\u0431 \u043e\u043f\u043b\u0430\u0442\u044b"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (51, '2025-09-07 14:47:35.615+05', '17', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[{"changed": {"fields": ["\u0421\u043f\u043e\u0441\u043e\u0431 \u043e\u043f\u043b\u0430\u0442\u044b"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (52, '2025-09-07 16:02:54.997+05', '2', 'Star Burger Цветной', 2, '[{"changed": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u041b\u043e\u043d\u0433 \u0427\u0438\u0437\u0431\u0443\u0440\u0433\u0435\u0440", "fields": ["\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"]}}, {"changed": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u0422\u0440\u043e\u0439\u043d\u043e\u0439 \u0412\u043e\u043f\u043f\u0435\u0440", "fields": ["\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"]}}, {"changed": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440", "fields": ["\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"]}}, {"changed": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0426\u0432\u0435\u0442\u043d\u043e\u0439 - \u0424\u0438\u0448 \u0420\u043e\u043b\u043b", "fields": ["\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (53, '2025-09-07 16:02:59.209+05', '1', 'Star Burger Арбат', 2, '[{"changed": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u0421\u0442\u0435\u0439\u043a\u0445\u0430\u0443\u0441", "fields": ["\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"]}}, {"changed": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u041b\u043e\u043d\u0433 \u0427\u0438\u0437\u0431\u0443\u0440\u0433\u0435\u0440", "fields": ["\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"]}}, {"changed": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u0422\u0440\u043e\u0439\u043d\u043e\u0439 \u0412\u043e\u043f\u043f\u0435\u0440", "fields": ["\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"]}}, {"changed": {"name": "\u043f\u0443\u043d\u043a\u0442 \u043c\u0435\u043d\u044e \u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d\u0430", "object": "Star Burger \u0410\u0440\u0431\u0430\u0442 - \u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440", "fields": ["\u0412 \u043f\u0440\u043e\u0434\u0430\u0436\u0435"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (54, '2025-09-07 16:03:01.666+05', '1', 'Star Burger Арбат', 2, '[]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (55, '2025-09-08 21:10:22.913+05', '17', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[{"changed": {"fields": ["\u0420\u0435\u0441\u0442\u043e\u0440\u0430\u043d \u0434\u043b\u044f \u043f\u0440\u0438\u0433\u043e\u0442\u043e\u0432\u043b\u0435\u043d\u0438\u044f"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (56, '2025-09-08 22:10:19.783+05', '19', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[{"changed": {"fields": ["\u0420\u0435\u0441\u0442\u043e\u0440\u0430\u043d \u0434\u043b\u044f \u043f\u0440\u0438\u0433\u043e\u0442\u043e\u0432\u043b\u0435\u043d\u0438\u044f"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (57, '2025-09-09 21:25:40.386+05', '3', 'Star Burger Европейский', 2, '[{"changed": {"fields": ["\u0428\u0438\u0440\u043e\u0442\u0430", "\u0414\u043e\u043b\u0433\u043e\u0442\u0430"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (58, '2025-09-09 21:25:51.369+05', '2', 'Star Burger Цветной', 2, '[{"changed": {"fields": ["\u0428\u0438\u0440\u043e\u0442\u0430", "\u0414\u043e\u043b\u0433\u043e\u0442\u0430"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (59, '2025-09-09 21:26:02.876+05', '1', 'Star Burger Арбат', 2, '[{"changed": {"fields": ["\u0428\u0438\u0440\u043e\u0442\u0430", "\u0414\u043e\u043b\u0433\u043e\u0442\u0430"]}}]', 2, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (60, '2025-09-10 01:24:32.927+05', '20', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 1, '[{"added": {}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0421\u0442\u0435\u0439\u043a\u0445\u0430\u0443\u0441 x 1"}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0424\u0438\u0448 \u0420\u043e\u043b\u043b x 2"}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (61, '2025-09-10 01:25:06.78+05', '20', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (62, '2025-09-10 01:25:11.54+05', '19', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (63, '2025-09-10 01:25:15.484+05', '17', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (64, '2025-09-10 01:25:18.934+05', '20', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (65, '2025-09-10 01:25:40.879+05', '21', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 1, '[{"added": {}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0424\u0438\u0448 \u0420\u043e\u043b\u043b x 1"}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0411\u0435\u043a\u043e\u043d\u0430\u0439\u0437\u0435\u0440 x 1"}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (66, '2025-09-10 01:48:15.792+05', '21', 'Заказ от Павел Чепик, по адресу: Сургут, Республики 71', 2, '[{"changed": {"fields": ["\u0421\u0442\u0430\u0442\u0443\u0441"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (67, '2025-09-10 01:52:43.316+05', '22', 'Заказ от Павел Чепик, по адресу: Москва, Улица Покровка, 1/13/6 ст2 · Девяткин пере', 1, '[{"added": {}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0422\u0440\u043e\u0439\u043d\u043e\u0439 \u0412\u043e\u043f\u043f\u0435\u0440 x 2"}}, {"added": {"name": "\u042d\u043b\u0435\u043c\u0435\u043d\u0442 \u0437\u0430\u043a\u0430\u0437\u0430", "object": "\u0424\u0438\u0448 \u0420\u043e\u043b\u043b x 1"}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (68, '2025-09-10 01:54:19.707+05', '22', 'Заказ от Павел Чепик, по адресу: wiu4thw894tnio', 2, '[{"changed": {"fields": ["\u0410\u0434\u0440\u0435\u0441"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (69, '2025-09-10 19:40:34.151+05', '22', 'Заказ от Павел Чепик, по адресу: Африка', 2, '[{"changed": {"fields": ["\u0410\u0434\u0440\u0435\u0441"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (70, '2025-09-10 19:40:39.563+05', '22', 'Заказ от Павел Чепик, по адресу: Африка', 2, '[]', 11, 1);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2025-11-03 20:15:31.064109+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2025-11-03 20:15:31.106798+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2025-11-03 20:15:31.119717+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-11-03 20:15:31.123929+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-11-03 20:15:31.130494+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-11-03 20:15:31.139205+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-11-03 20:15:31.143137+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-11-03 20:15:31.147827+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-11-03 20:15:31.151485+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-11-03 20:15:31.155697+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-11-03 20:15:31.156389+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-11-03 20:15:31.159978+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-11-03 20:15:31.168291+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-11-03 20:15:31.172539+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-11-03 20:15:31.17735+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-11-03 20:15:31.180953+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-11-03 20:15:31.185525+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'foodcartapp', '0001_initial', '2025-11-03 20:15:31.24253+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'foodcartapp', '0002_auto_20200619_0836', '2025-11-03 20:15:31.378409+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'foodcartapp', '0003_auto_20200619_0838', '2025-11-03 20:15:31.400959+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'foodcartapp', '0004_auto_20200619_0843', '2025-11-03 20:15:31.405062+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'foodcartapp', '0005_auto_20200619_0845', '2025-11-03 20:15:31.414523+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'foodcartapp', '0006_auto_20200619_0849', '2025-11-03 20:15:31.423519+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'foodcartapp', '0007_auto_20200619_0849', '2025-11-03 20:15:31.434877+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'foodcartapp', '0008_hotel_city', '2025-11-03 20:15:31.443776+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'foodcartapp', '0009_auto_20200619_0919', '2025-11-03 20:15:31.450722+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'foodcartapp', '0010_auto_20200619_0921', '2025-11-03 20:15:31.460947+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'foodcartapp', '0011_auto_20200619_0922', '2025-11-03 20:15:31.472934+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'foodcartapp', '0012_auto_20200619_0924', '2025-11-03 20:15:31.475923+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'foodcartapp', '0013_auto_20200619_0932', '2025-11-03 20:15:31.495368+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'foodcartapp', '0014_auto_20200619_0934', '2025-11-03 20:15:31.519365+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'foodcartapp', '0015_auto_20200619_0935', '2025-11-03 20:15:31.525435+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'foodcartapp', '0016_restaurant_new_admin', '2025-11-03 20:15:31.534472+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'foodcartapp', '0017_auto_20200619_0945', '2025-11-03 20:15:31.541619+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'foodcartapp', '0018_remove_restaurant_admin', '2025-11-03 20:15:31.550408+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'foodcartapp', '0019_auto_20200619_0948', '2025-11-03 20:15:31.560137+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'foodcartapp', '0020_auto_20200619_0959', '2025-11-03 20:15:31.563404+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'foodcartapp', '0021_auto_20200619_1002', '2025-11-03 20:15:31.567365+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'foodcartapp', '0022_auto_20200619_1003', '2025-11-03 20:15:31.570644+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (40, 'foodcartapp', '0023_auto_20200620_0942', '2025-11-03 20:15:31.601256+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (41, 'foodcartapp', '0024_product_ingridients', '2025-11-03 20:15:31.612272+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (42, 'foodcartapp', '0025_auto_20200629_1004', '2025-11-03 20:15:31.622004+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (43, 'foodcartapp', '0026_restaurantmenuitem', '2025-11-03 20:15:31.635886+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (44, 'foodcartapp', '0027_auto_20200629_1022', '2025-11-03 20:15:31.640719+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (45, 'foodcartapp', '0028_auto_20200629_1024', '2025-11-03 20:15:31.651512+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (46, 'foodcartapp', '0029_remove_product_category', '2025-11-03 20:15:31.655082+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (47, 'foodcartapp', '0030_auto_20200629_1341', '2025-11-03 20:15:31.668975+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (48, 'foodcartapp', '0031_auto_20200703_0612', '2025-11-03 20:15:31.678519+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (49, 'foodcartapp', '0032_remove_restaurant_admin', '2025-11-03 20:15:31.686851+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (50, 'foodcartapp', '0033_auto_20200928_1930', '2025-11-03 20:15:31.690503+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (51, 'foodcartapp', '0034_auto_20200928_1930', '2025-11-03 20:15:31.692722+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (52, 'foodcartapp', '0035_auto_20200928_1941', '2025-11-03 20:15:31.696406+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (53, 'foodcartapp', '0036_auto_20210125_1532', '2025-11-03 20:15:31.700473+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (54, 'foodcartapp', '0037_auto_20210125_1833', '2025-11-03 20:15:31.703372+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (55, 'foodcartapp', '0038_order_orderitem', '2025-11-03 20:15:31.718129+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (56, 'foodcartapp', '0039_alter_order_address_alter_order_first_name_and_more', '2025-11-03 20:15:31.721915+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (57, 'foodcartapp', '0040_alter_order_last_name', '2025-11-03 20:15:31.723716+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (58, 'foodcartapp', '0041_rename_first_name_order_firstname_and_more', '2025-11-03 20:15:31.728303+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (59, 'foodcartapp', '0042_orderitem_price_alter_orderitem_order_and_more', '2025-11-03 20:15:31.737731+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (60, 'foodcartapp', '0043_auto_20250902_2307', '2025-11-03 20:15:31.745475+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (61, 'foodcartapp', '0044_order_status', '2025-11-03 20:15:31.749579+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (62, 'foodcartapp', '0045_order_comments_alter_order_lastname', '2025-11-03 20:15:31.754686+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (63, 'foodcartapp', '0046_order_called_at_order_delivered_at_and_more', '2025-11-03 20:15:31.762403+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (64, 'foodcartapp', '0047_order_payment_method', '2025-11-03 20:15:31.767012+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (65, 'foodcartapp', '0048_alter_order_payment_method', '2025-11-03 20:15:31.768974+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (66, 'foodcartapp', '0049_alter_order_payment_method', '2025-11-03 20:15:31.771217+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (67, 'foodcartapp', '0050_order_cooking_restaurant', '2025-11-03 20:15:31.776483+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (68, 'foodcartapp', '0051_restaurant_lat_restaurant_lon', '2025-11-03 20:15:31.780427+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (69, 'foodcartapp', '0052_rename_registated_at_order_registered_at', '2025-11-03 20:15:31.783283+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (70, 'foodcartapp', '0053_alter_orderitem_price', '2025-11-03 20:15:31.78634+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (71, 'geocoder_cache', '0001_initial', '2025-11-03 20:15:31.793224+05');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (72, 'sessions', '0001_initial', '2025-11-03 20:15:31.798495+05');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('5sk2if1eh8in4u0p12z044l66fd0lser', '.eJxVjMsOwiAQRf-FtSHglMe4dO83kAEGqRqalHZl_HfbpAvd3nPOfYtA61LD2nkOYxYXocXpd4uUntx2kB_U7pNMU1vmMcpdkQft8jZlfl0P9--gUq9bzcXoeKYBEiIUsIXBAGaOoLyKij2SHpRxnBE24q1TaBM6z8Qe2IjPF9uGN18:1uoQ1s:_CsZmuwH_naLjTgM9dLMCeAozAO49tP39HIQDR_dG8A', '2025-09-02 22:21:48.078+05');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('jiq5l4e4z3j4g5fvl1l3oddj591dma48', '.eJxVjMsOwiAQRf-FtSHglMe4dO83kAEGqRqalHZl_HfbpAvd3nPOfYtA61LD2nkOYxYXocXpd4uUntx2kB_U7pNMU1vmMcpdkQft8jZlfl0P9--gUq9bzcXoeKYBEiIUsIXBAGaOoLyKij2SHpRxnBE24q1TaBM6z8Qe2IjPF9uGN18:1utRU1:HBTPffrrPxHTLvsK80KxeiJLSICqfhbfJ6qPzZd4B24', '2025-09-16 18:55:37.51+05');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('xp19zhn97cn9v1w8zajhgqwn6eq8vsq9', '.eJxVjMsOwiAQRf-FtSHglMe4dO83kAEGqRqalHZl_HfbpAvd3nPOfYtA61LD2nkOYxYXocXpd4uUntx2kB_U7pNMU1vmMcpdkQft8jZlfl0P9--gUq9bzcXoeKYBEiIUsIXBAGaOoLyKij2SHpRxnBE24q1TaBM6z8Qe2IjPF9uGN18:1ujHyI:3KhYxfENeDpm2xJIzrMQOpqyaNgakGakUsEuEGSU6xk', '2025-08-19 18:44:54.485+05');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('q242aekuu484r227lyioo2lozxk7jlrj', '.eJxVjMsOwiAQRf-FtSHglMe4dO83kAEGqRqalHZl_HfbpAvd3nPOfYtA61LD2nkOYxYXocXpd4uUntx2kB_U7pNMU1vmMcpdkQft8jZlfl0P9--gUq9bzcXoeKYBEiIUsIXBAGaOoLyKij2SHpRxnBE24q1TaBM6z8Qe2IjPF9uGN18:1vFwIe:9t_PJo5l-qyhCWRDBwlMwdn5CT_sHuvGEgilKS4hWkM', '2025-11-17 20:16:52.057721+05');


--
-- Data for Name: foodcartapp_restaurant; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.foodcartapp_restaurant (id, name, address, contact_phone, lat, lon) VALUES (1, 'Star Burger Арбат', 'Москва, ул. Новый Арбат, 15', '+7 (967) 157-44-13', 55.751933, 37.593066);
INSERT INTO public.foodcartapp_restaurant (id, name, address, contact_phone, lat, lon) VALUES (2, 'Star Burger Цветной', 'Москва, Цветной бульвар, 11с2', '+7 (929) 949-55-36', 55.770076, 37.620429);
INSERT INTO public.foodcartapp_restaurant (id, name, address, contact_phone, lat, lon) VALUES (3, 'Star Burger Европейский', 'Москва, пл. Киевского Вокзала, 2', '+7 (929) 680-47-58', 55.744637, 37.566072);


--
-- Data for Name: foodcartapp_order; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.foodcartapp_order (id, address, firstname, lastname, phonenumber, status, comments, called_at, delivered_at, registered_at, payment_method, cooking_restaurant_id) VALUES (21, 'Сургут, Республики 71', 'Павел', 'Чепик', '+79821453289', 'unprocessed', 'dth', NULL, NULL, '2025-09-10 01:25:20+05', 'unprocessed', NULL);
INSERT INTO public.foodcartapp_order (id, address, firstname, lastname, phonenumber, status, comments, called_at, delivered_at, registered_at, payment_method, cooking_restaurant_id) VALUES (22, 'Африка', 'Павел', 'Чепик', '+79821453289', 'unprocessed', '', NULL, NULL, '2025-09-10 01:51:50+05', 'unprocessed', NULL);


--
-- Data for Name: foodcartapp_productcategory; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.foodcartapp_productcategory (id, name) VALUES (1, 'Бургер');
INSERT INTO public.foodcartapp_productcategory (id, name) VALUES (2, 'Ролл');


--
-- Data for Name: foodcartapp_product; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.foodcartapp_product (id, name, price, image, special_status, description, category_id) VALUES (1, 'Стейкхаус', 269.00, 'steak.jpg', false, 'Стейкхаус – это сочетание нашей фирменной, приготовленной на огне 100% говядины с ломтиками бекона и соусом «Барбекю», майонезом, листьями свежего салата, помидором и хрустящим луком на воздушной було', 1);
INSERT INTO public.foodcartapp_product (id, name, price, image, special_status, description, category_id) VALUES (2, 'Лонг Чизбургер', 219.00, 'long_chiz.jpg', false, 'Лонг Чизбургер – эталон в коллекции чизбургеров! Два приготовленных на огне бифштекса с двумя ломтиками слегка расплавленного сыра, хрустящими огурчиками, рубленым луком, горчицей и кетчупом на длинно', 1);
INSERT INTO public.foodcartapp_product (id, name, price, image, special_status, description, category_id) VALUES (3, 'Тройной Воппер', 369.00, 'triple_vopper.jpg', false, 'ВОППЕР® — это вкуснейшая приготовленная на огне 100% говядина с сочными помидорами, свежим нарезанным листовым салатом, густым майонезом, хрустящими маринованными огурчиками и свежим луком на нежной б', 1);
INSERT INTO public.foodcartapp_product (id, name, price, image, special_status, description, category_id) VALUES (4, 'Беконайзер', 319.00, 'beconizer.jpg', false, 'Встречай самый внушительный бургер в коллекции Бургер Кинг. Много мяса, много бекона и много сыра - все, как ты любишь, и ничего лишнего!', 1);
INSERT INTO public.foodcartapp_product (id, name, price, image, special_status, description, category_id) VALUES (5, 'Фиш Ролл', 199.00, 'fish_roll.jpg', false, 'Наш новый ролл с аппетитной котлеткой из филе белой рыбы, с фирменным соусом, маринованными огурчиками и хрустящим салатом. Легкое рыбное удовольствие!', 2);
INSERT INTO public.foodcartapp_product (id, name, price, image, special_status, description, category_id) VALUES (6, 'Шримп Ролл', 209.00, 'shrimp_roll.jpg', false, 'Легкий ролл с нежными королевскими креветками в хрустящей панировке, свежий салат Айсберг и ломтик сыра в пшеничной лепешке под фирменным соусом «Кинг». Внимание! Блюдо содержит аллергены – морепродук', 2);


--
-- Data for Name: foodcartapp_orderitem; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.foodcartapp_orderitem (id, quantity, order_id, product_id, price) VALUES (24, 1, 21, 5, 199.00);
INSERT INTO public.foodcartapp_orderitem (id, quantity, order_id, product_id, price) VALUES (25, 1, 21, 4, 319.00);
INSERT INTO public.foodcartapp_orderitem (id, quantity, order_id, product_id, price) VALUES (26, 2, 22, 3, 369.00);
INSERT INTO public.foodcartapp_orderitem (id, quantity, order_id, product_id, price) VALUES (27, 1, 22, 5, 199.00);


--
-- Data for Name: foodcartapp_restaurantmenuitem; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (1, true, 1, 3);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (2, true, 2, 3);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (3, true, 3, 3);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (4, true, 4, 3);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (5, true, 5, 3);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (6, true, 6, 3);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (7, true, 1, 2);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (8, false, 2, 2);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (9, false, 3, 2);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (10, false, 4, 2);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (11, false, 5, 2);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (12, true, 6, 2);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (13, false, 1, 1);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (14, false, 2, 1);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (15, false, 3, 1);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (16, false, 4, 1);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (17, true, 5, 1);
INSERT INTO public.foodcartapp_restaurantmenuitem (id, availability, product_id, restaurant_id) VALUES (18, true, 6, 1);


--
-- Data for Name: geocoder_cache_cachedlocation; Type: TABLE DATA; Schema: public; Owner: pavel
--

INSERT INTO public.geocoder_cache_cachedlocation (id, address, latitude, longitude, created_at, updated_at) VALUES (1, 'Сургут, Республики 71', 61.24341, 73.385576, '2025-09-10 19:39:35.846+05', '2025-09-10 19:39:35.846+05');
INSERT INTO public.geocoder_cache_cachedlocation (id, address, latitude, longitude, created_at, updated_at) VALUES (2, 'Москва, пл. Киевского Вокзала, 2', 55.744637, 37.566072, '2025-09-10 19:39:36.063+05', '2025-09-10 19:39:36.063+05');
INSERT INTO public.geocoder_cache_cachedlocation (id, address, latitude, longitude, created_at, updated_at) VALUES (3, 'Африка', 41.670179, 44.917597, '2025-09-10 19:40:45.113+05', '2025-09-10 19:40:45.113+05');


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 70, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 72, true);


--
-- Name: foodcartapp_hotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.foodcartapp_hotel_id_seq', 3, true);


--
-- Name: foodcartapp_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.foodcartapp_order_id_seq', 22, true);


--
-- Name: foodcartapp_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.foodcartapp_orderitem_id_seq', 27, true);


--
-- Name: foodcartapp_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.foodcartapp_product_id_seq', 6, true);


--
-- Name: foodcartapp_productcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.foodcartapp_productcategory_id_seq', 2, true);


--
-- Name: foodcartapp_restaurantmenuitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.foodcartapp_restaurantmenuitem_id_seq', 18, true);


--
-- Name: geocoder_cache_cachedlocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pavel
--

SELECT pg_catalog.setval('public.geocoder_cache_cachedlocation_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 5Y7Ue2cy7YAQOOpOaXmpaH8B79rKaSBCA4qf3KRGOLjZ08R1CLhKgbWthof17ht

