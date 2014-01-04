<?php
/*
  $Id: password_forgotten.php,v 1.8 2003/06/09 22:46:46 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2012 osCommerce

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE_1', 'Вход');
define('NAVBAR_TITLE_2', 'Восстановление пароля');

define('HEADING_TITLE', 'Я забыл свой пароль!');

define('TEXT_MAIN', 'Если Вы забыли свой пароль, введите свой e-mail адрес и мы вышлем Ваш инструкцию как безопасно сменить Ваш пароль.');

define('TEXT_PASSWORD_RESET_INITIATED', 'Пожалуйста, проверьте Ваш емейл - там должна быть инструкция по смене пароля. Инструкция содержит ссылка, воспользоваться которой можно только в течении 24 часов и только пока Вы не смените пароль.');

define('TEXT_NO_EMAIL_ADDRESS_FOUND', '<font color="#ff0000"><b>Ошибка:</b></font> E-Mail адрес не соответствует Вашей учетной записи, попробуйте ещё раз.');

define('EMAIL_PASSWORD_RESET_SUBJECT', STORE_NAME . ' - Новый пароль');
define('EMAIL_PASSWORD_RESET_BODY', 'A new password has been requested for your account at ' . STORE_NAME . '.' . "\n\n" . 'Please follow this personal link to securely change your password:' . "\n\n" . '%s' . "\n\n" . 'This link will be automatically discarded after 24 hours or after your password has been changed.' . "\n\n" . 'For help with any of our online services, please email the store-owner: ' . STORE_OWNER_EMAIL_ADDRESS . '.' . "\n\n");
define('EMAIL_PASSWORD_RESET_BODY', 'Для Вашего аккаунта в ' . STORE_NAME . ' был запрошен новый пароль.' . "\n\n" . 'Пожалуйста пройдите по этой персональной ссылке для безопасной смены пароля:' . "\n\n" . '%s' . "\n\n" . 'Данная ссылка будет автоматически удалена после 24 часов или после смены пароля.' . "\n\n" . 'Если Вам нужна помощь по нашим онлайн-сервисам напишите нам: ' . STORE_OWNER_EMAIL_ADDRESS . '.' . "\n\n");

define('ERROR_ACTION_RECORDER', 'Ошибка: Ссылка на страницу смены пароля уже выслана. Пожалуйста попробуйте ещё раз через %s минут.');

// EOF