#
# * SQL Localization script
# * @package Installer
# * @access private
# * @copyright Copyright 2004 Andrew Berezin eCommerce-Service.com
# * @copyright Copyright 2003 osCommerce
# * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
# * @Localization: Andrew Berezin http://ecommerce-service.com
# * @version $Id: oscommerce-ru.sql 1.2 17.11.2013 17:28:08 AndrewBerezin eCommerce-Service.com $

#
# Add Russian language
#
INSERT INTO languages VALUES (NULL, 'Russian', 'ru', 'icon.gif', 'russian', 1);
SET @languages_ru_id=last_insert_id();
UPDATE configuration SET configuration_value='ru' WHERE configuration_key='DEFAULT_LANGUAGE';

#
# Add currencies
#
INSERT INTO currencies VALUES (NULL, 'Рубль', 'RUR', '', 'руб.', '.', ',', @languages_ru_id, 33.00, now());
INSERT INTO currencies VALUES (NULL, 'Гривна', 'UAH', '', 'грн.', '.', ',', @languages_ru_id, 5.05, now());

#
# Translate configuration_group table
#
UPDATE configuration_group SET configuration_group_title = 'Магазин', configuration_group_description = 'Основные настройки магазина' WHERE configuration_group_id = 1;
UPDATE configuration_group SET configuration_group_title = 'Минимальные значения', configuration_group_description = 'Минимальные значения функций и данных' WHERE configuration_group_id = 2;
UPDATE configuration_group SET configuration_group_title = 'Максимальные значения', configuration_group_description = 'Максимальные значения функций и данных' WHERE configuration_group_id = 3;
UPDATE configuration_group SET configuration_group_title = 'Картинки', configuration_group_description = 'Настройки картинок' WHERE configuration_group_id = 4;
UPDATE configuration_group SET configuration_group_title = 'Данные покупателя', configuration_group_description = 'Настройка формы регистрации' WHERE configuration_group_id = 5;
UPDATE configuration_group SET configuration_group_title = 'Установленные модули', configuration_group_description = 'Скрытые опции' WHERE  configuration_group_id = 6;
UPDATE configuration_group SET configuration_group_title = 'Доставка/Упаковка', configuration_group_description = 'Настройка опци доставки и упаковки' WHERE configuration_group_id = 7;
UPDATE configuration_group SET configuration_group_title = 'Вывод товара', configuration_group_description = 'Настройка вывода товара' WHERE configuration_group_id = 8;
UPDATE configuration_group SET configuration_group_title = 'Склад', configuration_group_description = 'Настройка склада' WHERE configuration_group_id = 9;
UPDATE configuration_group SET configuration_group_title = 'Логи', configuration_group_description = 'Настройка логов' WHERE configuration_group_id = 10;
UPDATE configuration_group SET configuration_group_title = 'Кэш', configuration_group_description = 'Настройка кэша' WHERE configuration_group_id = 11;
UPDATE configuration_group SET configuration_group_title = 'Настройка E-Mail', configuration_group_description = 'Настройка E-Mail' WHERE configuration_group_id = 12;
UPDATE configuration_group SET configuration_group_title = 'Скачивание', configuration_group_description = 'Настройка скачиваемых товаров' WHERE configuration_group_id = 13;
UPDATE configuration_group SET configuration_group_title = 'GZip Компрессия', configuration_group_description = 'Настройка GZip компрессии' WHERE configuration_group_id = 14;
UPDATE configuration_group SET configuration_group_title = 'Сессии', configuration_group_description = 'Session options' WHERE configuration_group_id = 15;

#
# Translate configuration table
#
UPDATE configuration SET configuration_title='Название магазина', configuration_description='Название Вашего магазина' WHERE configuration_key='STORE_NAME';
UPDATE configuration SET configuration_title='Владелец магазина', configuration_description='Имя владельца магазина' WHERE configuration_key='STORE_OWNER';
UPDATE configuration SET configuration_title='E-Mail Адрес', configuration_description='E-Mail адрес владельца магазина' WHERE configuration_key='STORE_OWNER_EMAIL_ADDRESS';
UPDATE configuration SET configuration_title='E-Mail От', configuration_description='E-Mail адрес в отправляемых письмах' WHERE configuration_key='EMAIL_FROM';
UPDATE configuration SET configuration_title='Страна', configuration_description='Страна находения магазина.<br><br><b>Замечание: Не забудьте также указать Зону.</b>' WHERE configuration_key='STORE_COUNTRY';
UPDATE configuration SET configuration_title='Зона', configuration_description='Регион нахождения магазина' WHERE configuration_key='STORE_ZONE';
UPDATE configuration SET configuration_title='Порядок сортировки ожидаемых товаров', configuration_description='Укажите порядок сортировки для ожидаемых товаров, по возрастанию - asc или по убыванию - desc.' WHERE configuration_key='EXPECTED_PRODUCTS_SORT';
UPDATE configuration SET configuration_title='Сортировка ожидаемых товаров', configuration_description='По какому значению будут сортироваться ожидаемые товары.' WHERE configuration_key='EXPECTED_PRODUCTS_FIELD';
UPDATE configuration SET configuration_title='Переключение на валюту текущего языка', configuration_description='Автоматическое переключение цен в магазине на валюту текущего языка.' WHERE configuration_key='USE_DEFAULT_LANGUAGE_CURRENCY';
UPDATE configuration SET configuration_title='Отправка копий писем с заказом', configuration_description='Если Вы хотите получать письма с заказами, т.е. такие же письма, что и получает клиент после оформления заказа, укажите e-mail адрес для получения копий писем в следующем формате: Имя 1 &lt;email@address1&gt;, Имя 2 &lt;email@address2&gt;' WHERE configuration_key='SEND_EXTRA_ORDER_EMAILS_TO';
UPDATE configuration SET configuration_title='Использовать короткие URL адреса (находится в разработке)', configuration_description='Использовать короткие URL адреса в магазине' WHERE configuration_key='SEARCH_ENGINE_FRIENDLY_URLS';
UPDATE configuration SET configuration_title='Переходить в корзину после добавления товара', configuration_description='Переходить в корзину после добавления товара в корзину или оставаться на той же странице.' WHERE configuration_key='DISPLAY_CART';
UPDATE configuration SET configuration_title='Разрешить гостям использовать функцию Рассказать другу', configuration_description='Позволить гостям использовать функцию магазина Рассказать другу, если нет, то данной функцией могут пользоваться только зарегистрированные пользователи магазина.' WHERE configuration_key='ALLOW_GUEST_TO_TELL_A_FRIEND';
UPDATE configuration SET configuration_title='Оператор поиска по умолчанию', configuration_description='Укажите, какой оператор будет использоваться по умолчанию при осуществлении посетителем поиска в магазине.' WHERE configuration_key='ADVANCED_SEARCH_DEFAULT_OPERATOR';
UPDATE configuration SET configuration_title='Адрес и телефон магазина', configuration_description='Здесь Вы можете указать адрес и телефон магазина' WHERE configuration_key='STORE_NAME_ADDRESS';
UPDATE configuration SET configuration_title='Показывать счётчик товаров', configuration_description='Показывает количество товара в каждой категории. При большом количестве товара в магазина рекомендуется отключать счётчик - false, чтобы снизить нагрузку на MySQL сервер, тем самых скорость загрузки страницы Вашего магазина увеличится.' WHERE configuration_key='SHOW_COUNTS';
UPDATE configuration SET configuration_title='Количество знаков после запятой у налогов', configuration_description='Количество знаков после целого числа у налогов.' WHERE configuration_key='TAX_DECIMAL_PLACES';
UPDATE configuration SET configuration_title='Показывать цены с налогами', configuration_description='Показывать цены в магазине с налогами (true) или показывать налог только на заключительном этапе оформления заказа (false)' WHERE configuration_key='DISPLAY_PRICE_WITH_TAX';
UPDATE configuration SET configuration_title='Имя', configuration_description='Минимальное количество символов поля Имя' WHERE configuration_key='ENTRY_FIRST_NAME_MIN_LENGTH';
UPDATE configuration SET configuration_title='Фамилия', configuration_description='Минимальное количество символов поля Фамилия' WHERE configuration_key='ENTRY_LAST_NAME_MIN_LENGTH';
UPDATE configuration SET configuration_title='Дата рождения', configuration_description='Минимальное количество символов поля Дата рождения' WHERE configuration_key='ENTRY_DOB_MIN_LENGTH';
UPDATE configuration SET configuration_title='E-Mail Адрес', configuration_description='Минимальное количество символов поля E-Mail адрес' WHERE configuration_key='ENTRY_EMAIL_ADDRESS_MIN_LENGTH';
UPDATE configuration SET configuration_title='Адрес', configuration_description='Минимальное количество символов поля Адрес' WHERE configuration_key='ENTRY_STREET_ADDRESS_MIN_LENGTH';
UPDATE configuration SET configuration_title='Компания', configuration_description='Минимальное количество символов поля Компания' WHERE configuration_key='ENTRY_COMPANY_MIN_LENGTH';
UPDATE configuration SET configuration_title='Почтовый индекс', configuration_description='Минимальное количество символов поля Почтовый индекс' WHERE configuration_key='ENTRY_POSTCODE_MIN_LENGTH';
UPDATE configuration SET configuration_title='Город', configuration_description='Минимальное количество символов поля Город' WHERE configuration_key='ENTRY_CITY_MIN_LENGTH';
UPDATE configuration SET configuration_title='Регион', configuration_description='Минимальное количество символов поля Регион' WHERE configuration_key='ENTRY_STATE_MIN_LENGTH';
UPDATE configuration SET configuration_title='Телефон', configuration_description='Минимальное количество символов поля Телефон' WHERE configuration_key='ENTRY_TELEPHONE_MIN_LENGTH';
UPDATE configuration SET configuration_title='Пароль', configuration_description='Минимальное количество символов поля Пароль' WHERE configuration_key='ENTRY_PASSWORD_MIN_LENGTH';
UPDATE configuration SET configuration_title='Владелец кредитной карточки', configuration_description='Минимальное количество символов поля Владелец кредитной карточки' WHERE configuration_key='CC_OWNER_MIN_LENGTH';
UPDATE configuration SET configuration_title='Номер кредитной карточки', configuration_description='Минимальное количество символов поля Номер кредитной карточки' WHERE configuration_key='CC_NUMBER_MIN_LENGTH';
UPDATE configuration SET configuration_title='Текст отзыва', configuration_description='Минимальное количество символов для отызов' WHERE configuration_key='REVIEW_TEXT_MIN_LENGTH';
UPDATE configuration SET configuration_title='Лидеры продаж', configuration_description='Минимальное количество товара, выводимого в блоке Лидеры продаж' WHERE configuration_key='MIN_DISPLAY_BESTSELLERS';
UPDATE configuration SET configuration_title='Также заказали', configuration_description='Минимальное количество товара, выводимого в боксе Также заказали' WHERE configuration_key='MIN_DISPLAY_ALSO_PURCHASED';
UPDATE configuration SET configuration_title='Записи в адресной книге', configuration_description='Максимальное количество записей, которые может сделать покупатель в своей адресной книге' WHERE configuration_key='MAX_ADDRESS_BOOK_ENTRIES';
UPDATE configuration SET configuration_title='Товаров на одной странице в каталоге', configuration_description='Количество товара, выводимого на одной странице' WHERE configuration_key='MAX_DISPLAY_SEARCH_RESULTS';
UPDATE configuration SET configuration_title='Ссылок на страницы', configuration_description='Количество ссылок на другие страницы' WHERE configuration_key='MAX_DISPLAY_PAGE_LINKS';
UPDATE configuration SET configuration_title='Специальные цены', configuration_description='Максимальное количество товара, выводимого на странице Скидки' WHERE configuration_key='MAX_DISPLAY_SPECIAL_PRODUCTS';
UPDATE configuration SET configuration_title='Новинки', configuration_description='Максимальное количество товара, выводимых в боксе Новинки' WHERE configuration_key='MAX_DISPLAY_NEW_PRODUCTS';
UPDATE configuration SET configuration_title='Ожидаемые товары', configuration_description='Максимальное количество товара, выводимого в блоке Ожидаемые товары' WHERE configuration_key='MAX_DISPLAY_UPCOMING_PRODUCTS';
UPDATE configuration SET configuration_title='Список производителей', configuration_description='Данная опция используется для настройки бокса производителей, если число производителей превышает указанное в данной опции, список производителей будет выводиться в виде drop-down списка, если число производителей меньше указанного в данной опции, произво' WHERE configuration_key='MAX_DISPLAY_MANUFACTURERS_IN_A_LIST';
UPDATE configuration SET configuration_title='Производители в виде развёрнутого меню', configuration_description='Данная опция используется для настройки бокса производителей, если указана цифра \'1\', то список производителей выводится в виде стандартного drop-down списка. Если указана любая другая цифра, то выводится только X производителей в виде развёрнутого меню.' WHERE configuration_key='MAX_MANUFACTURERS_LIST';
UPDATE configuration SET configuration_title='Ограничение длины названия производителя', configuration_description='Данная опция используется для настройки бокса производителей, Вы указываете количество символов, выводимого в боксе производителей, если название производителя будет состоять из большего количества символов, то будут выведены первые X символов названия' WHERE configuration_key='MAX_DISPLAY_MANUFACTURER_NAME_LEN';
UPDATE configuration SET configuration_title='Новые отзывы', configuration_description='Максимальное количество выводимых новых отзывов' WHERE configuration_key='MAX_DISPLAY_NEW_REVIEWS';
UPDATE configuration SET configuration_title='Выбор случайных отзывов', configuration_description='Количество отзывов, которое будет использоваться для вывода случайного, т.е. если указано X - число отзывов, то случайный отзыв будет выбран из этих X отзывов' WHERE configuration_key='MAX_RANDOM_SELECT_REVIEWS';
UPDATE configuration SET configuration_title='Выбор случайного товара в боксе Новинки', configuration_description='Количество товара, среди которого будет выбран случайный товар и выведен в бокс Новинок, т.е. если указано число X, то новый товар, который будет показан в боксе Новинок будет выбран из этих X новых товаров' WHERE configuration_key='MAX_RANDOM_SELECT_NEW';
UPDATE configuration SET configuration_title='Выбор случайного товара в боксе Скидки', configuration_description='Количество товара, среди которого будет выбран случайный товар и выведен в бокс Скидки, т.е. если указано число X, то товар, который будет показан в боксе Скидки будет выбран из этих X товаров' WHERE configuration_key='MAX_RANDOM_SELECT_SPECIALS';
UPDATE configuration SET configuration_title='Количество категорий в строке', configuration_description='Сколько категорий выводить в одной строке' WHERE configuration_key='MAX_DISPLAY_CATEGORIES_PER_ROW';
UPDATE configuration SET configuration_title='Количество Новинок на странице', configuration_description='Максимальное количество новинок, выводимых на одной странице в разделе Новинки' WHERE configuration_key='MAX_DISPLAY_PRODUCTS_NEW';
UPDATE configuration SET configuration_title='Лидеры продаж', configuration_description='Максимальное количество лидеров продаж, выводимых в боксе Лидеры продаж' WHERE configuration_key='MAX_DISPLAY_BESTSELLERS';
UPDATE configuration SET configuration_title='Также заказази', configuration_description='Максимальное количество товаров в боксе Наши покупатели также заказали' WHERE configuration_key='MAX_DISPLAY_ALSO_PURCHASED';
UPDATE configuration SET configuration_title='Бокс История заказов', configuration_description='Максимальное количество товаров, выводимых в боксе История заказов' WHERE configuration_key='MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX';
UPDATE configuration SET configuration_title='История заказов', configuration_description='Максимальное количество заказов, выводимых на странице История заказов' WHERE configuration_key='MAX_DISPLAY_ORDER_HISTORY';
UPDATE configuration SET configuration_title='Количество товара в корзину', configuration_description='Максимальное количество товара, которое можно положить в корзину (0 - без ограничений)' WHERE configuration_key='MAX_QTY_IN_CART';
UPDATE configuration SET configuration_title='Ширина маленькой картинки', configuration_description='Ширина картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать ширину картинки. Ограничение ширины картинки не значит физического уменьшения размеров картинки.' WHERE configuration_key='SMALL_IMAGE_WIDTH';
UPDATE configuration SET configuration_title='Высота маленькой картинки', configuration_description='Высота картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать высоту картинки. Ограничение высоты картинки не значит физического уменьшения размеров картинки.' WHERE configuration_key='SMALL_IMAGE_HEIGHT';
UPDATE configuration SET configuration_title='Ширина картинки категории', configuration_description='Ширина картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать ширину картинки. Ограничение ширины картинки не значит физического уменьшения размеров картинки.' WHERE configuration_key='HEADING_IMAGE_WIDTH';
UPDATE configuration SET configuration_title='Высота картинки категории', configuration_description='Высота картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать высоту картинки. Ограничение высоты картинки не значит физического уменьшения размеров картинки.' WHERE configuration_key='HEADING_IMAGE_HEIGHT';
UPDATE configuration SET configuration_title='Ширина картинки подкатегории', configuration_description='Ширина картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать ширину картинки. Ограничение ширины картинки не значит физического уменьшения размеров картинки.' WHERE configuration_key='SUBCATEGORY_IMAGE_WIDTH';
UPDATE configuration SET configuration_title='Высота картинки подкатегории', configuration_description='Высота картинки в пикселах. Оставьте поле пустым или поставьте 0, если не хотите ограничивать высоту картинки. Ограничение высоты картинки не значит физического уменьшения размеров картинки.' WHERE configuration_key='SUBCATEGORY_IMAGE_HEIGHT';
UPDATE configuration SET configuration_title='Вычислять размер картинки', configuration_description='Данная опция просто смотрит переменные, указанные выше и сжимает картинку до указанных размеров, это не значит, что физический размер картинки уменьшится, происходит принудительный вывод картинки определённого размера. Рекомендуется ставить значение false' WHERE configuration_key='CONFIG_CALCULATE_IMAGE_SIZE';
UPDATE configuration SET configuration_title='Картинка обязательна', configuration_description='Необходимо для поиска ошибок, в случае, если картинка не выводится.' WHERE configuration_key='IMAGE_REQUIRED';
UPDATE configuration SET configuration_title='Пол', configuration_description='Показывать поле Пол при регистрации покупателя в магазине и в адресной книге' WHERE configuration_key='ACCOUNT_GENDER';
UPDATE configuration SET configuration_title='Дата рождения', configuration_description='Показывать поле Дата рождения при регистрации покупателя в магазине и в адресной книге' WHERE configuration_key='ACCOUNT_DOB';
UPDATE configuration SET configuration_title='Компания', configuration_description='Показывать поле Компания при регистрации покупателя в магазине и в адресной книге' WHERE configuration_key='ACCOUNT_COMPANY';
UPDATE configuration SET configuration_title='Район', configuration_description='Показывать поле Район при регистрации покупателя в магазине и в адресной книге' WHERE configuration_key='ACCOUNT_SUBURB';
UPDATE configuration SET configuration_title='Регион', configuration_description='Показывать поле Регион при регистрации покупателя в магазине и в адресной книге' WHERE configuration_key='ACCOUNT_STATE';
UPDATE configuration SET configuration_title='Установленные модули', configuration_description='Список установленных модулей оплаты, разделённых точкой с запятой. Страница автоматически обновляется. Ничего изменять не нужно, это просто информативная страница об установленных модулях. (Например: cc.php;cod.php;paypal.php)' WHERE configuration_key='MODULE_PAYMENT_INSTALLED';
UPDATE configuration SET configuration_title='Установленные модули', configuration_description='Список установленных модулей заказ итого, разделённых точкой с запятой. Страница автоматически обновляется. Ничего изменять не нужно, это просто информативная страница об установленных модулях. (Например: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_tota' WHERE configuration_key='MODULE_ORDER_TOTAL_INSTALLED';
UPDATE configuration SET configuration_title='Установленные модули', configuration_description='Список установленных модулей доставки, разделённых точкой с запятой. Страница автоматически обновляется. Ничего изменять не нужно, это просто информативная страница об установленных модулях. (Например: ups.php;flat.php;item.php)' WHERE configuration_key='MODULE_SHIPPING_INSTALLED';
UPDATE configuration SET configuration_title='Разрешить модуль Оплата наличными при получении', configuration_description='Вы хотите разрешить использование модуля при оформлении заказов?' WHERE configuration_key='MODULE_PAYMENT_COD_STATUS';
UPDATE configuration SET configuration_title='Зона', configuration_description='Если выбрана зона, то данный модуль оплаты будет виден только покупателям из выбранной зоны.' WHERE configuration_key='MODULE_PAYMENT_COD_ZONE';
UPDATE configuration SET configuration_title='Порядок сортировки.', configuration_description='Порядок сортировки модуля.' WHERE configuration_key='MODULE_PAYMENT_COD_SORT_ORDER';
UPDATE configuration SET configuration_title='Статус заказа', configuration_description='Заказы, оформленные с использованием данного модуля оплаты будут принимать указанный статус.' WHERE configuration_key='MODULE_PAYMENT_COD_ORDER_STATUS_ID';
UPDATE configuration SET configuration_title='Валюта по умолчанию', configuration_description='Валюта по умолчанию' WHERE configuration_key='DEFAULT_CURRENCY';
UPDATE configuration SET configuration_title='Язык по умолчанию', configuration_description='Язык по умолчанию' WHERE configuration_key='DEFAULT_LANGUAGE';
UPDATE configuration SET configuration_title='Статус заказа по умолчанию', configuration_description='Статус заказа по умолчанию, присваиваемый новым заказам.' WHERE configuration_key='DEFAULT_ORDERS_STATUS_ID';
UPDATE configuration SET configuration_title='Показывать доставку', configuration_description='Вы хотите показывать стоимость доставки?' WHERE configuration_key='MODULE_ORDER_TOTAL_SHIPPING_STATUS';
UPDATE configuration SET configuration_title='Порядок сортировки', configuration_description='Порядок сортировки модуля.' WHERE configuration_key='MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER';
UPDATE configuration SET configuration_title='Разрешить бесплатную доставку', configuration_description='Вы хотите разрешить использование модуля бесплатной доставки?' WHERE configuration_key='MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING';
UPDATE configuration SET configuration_title='Бесплатная доставка для заказов на сумму свыше', configuration_description='Заказы, свыше суммы, указанной данной поле, будут доставляться бесплатно.' WHERE configuration_key='MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER';
UPDATE configuration SET configuration_title='Бесплатная доставка для заказов, оформленных из', configuration_description='national - заказы из страны нахождения магазина(переменная Страна магазина), international - заказы из любой страны, кроме страны нахождения магазина, если both - тогда все заказы. При условии, что сумма заказы выше суммы, указанной в переменной выше.' WHERE configuration_key='MODULE_ORDER_TOTAL_SHIPPING_DESTINATION';
UPDATE configuration SET configuration_title='Показывать стоимость товара', configuration_description='Вы хотите показывать стоимость товара?' WHERE configuration_key='MODULE_ORDER_TOTAL_SUBTOTAL_STATUS';
UPDATE configuration SET configuration_title='Порядок сортировки', configuration_description='Порядок сортировки модуля.' WHERE configuration_key='MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER';
UPDATE configuration SET configuration_title='Показывать налог', configuration_description='Вы хотите показывать налог?' WHERE configuration_key='MODULE_ORDER_TOTAL_TAX_STATUS';
UPDATE configuration SET configuration_title='Порядок сортировки', configuration_description='Порядок сортировки модуля.' WHERE configuration_key='MODULE_ORDER_TOTAL_TAX_SORT_ORDER';
UPDATE configuration SET configuration_title='Показывать всего', configuration_description='Вы хотите показывать общую стоимость заказа?' WHERE configuration_key='MODULE_ORDER_TOTAL_TOTAL_STATUS';
UPDATE configuration SET configuration_title='Порядок сортировки', configuration_description='Порядок сортировки модуля.' WHERE configuration_key='MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER';
UPDATE configuration SET configuration_title='Страна магазина', configuration_description='Страна, где находится магазин. Необходимо для некоторых модулей доставки.' WHERE configuration_key='SHIPPING_ORIGIN_COUNTRY';
UPDATE configuration SET configuration_title='Почтовый индекс магазина', configuration_description='Укажите почтовый индекс магазина. Необходимо для некоторых модулей доставки.' WHERE configuration_key='SHIPPING_ORIGIN_ZIP';
UPDATE configuration SET configuration_title='Максимальный вес доставки', configuration_description='Вы можете указать максимальный вес доставки, свыше которого заказы не доставляются. Необходимо для некоторых модулей доставки.' WHERE configuration_key='SHIPPING_MAX_WEIGHT';
UPDATE configuration SET configuration_title='Вес упаковки', configuration_description='Вы можете указать вес упаковки.' WHERE configuration_key='SHIPPING_BOX_WEIGHT';
UPDATE configuration SET configuration_title='Тяжёлые заказы - Процентное увеличение стоимости', configuration_description='Доставка заказов, вес которых больше указанного в переменной Максимальный вес доставки, увеличивается на указанный процент. Если Вы хотите увелить стоимость на 10%, пишите - 10' WHERE configuration_key='SHIPPING_BOX_PADDING';
UPDATE configuration SET configuration_title='Показывать картинку товара', configuration_description='Укажите порядок вывода, т.е. введите цифру. Если укажите 1, то картинка будет слева на первом месте, если 2, то картинка будет показана после(правее) поля, у которого указана цифра 1 и т.д.' WHERE configuration_key='PRODUCT_LIST_IMAGE';
UPDATE configuration SET configuration_title='Показывать производителя товара', configuration_description='Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.' WHERE configuration_key='PRODUCT_LIST_MANUFACTURER';
UPDATE configuration SET configuration_title='Показывать код товара', configuration_description='Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.' WHERE configuration_key='PRODUCT_LIST_MODEL';
UPDATE configuration SET configuration_title='Показывать название товара', configuration_description='Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.' WHERE configuration_key='PRODUCT_LIST_NAME';
UPDATE configuration SET configuration_title='Показывать стоимость товара', configuration_description='Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.' WHERE configuration_key='PRODUCT_LIST_PRICE';
UPDATE configuration SET configuration_title='Показывать количество товара на складе', configuration_description='Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.' WHERE configuration_key='PRODUCT_LIST_QUANTITY';
UPDATE configuration SET configuration_title='Показывать вес товара', configuration_description='Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.' WHERE configuration_key='PRODUCT_LIST_WEIGHT';
UPDATE configuration SET configuration_title='Показывать кнопку Купить сейчас!', configuration_description='Укажите порядок вывода данного поля в Вашем магазине, т.е. введите цифру. Если укажите 1, то данное поле будет слева на первом месте, если 2, то поле будет показана после(правее) поля, у которого указана цифра 1 и т.д.' WHERE configuration_key='PRODUCT_LIST_BUY_NOW';
UPDATE configuration SET configuration_title='Показывать фильтр Категория/Производители (0=не показывать; 1=показывать)', configuration_description='Показывать бокс(drop-down) меню, с помощью которого можно сортировать товар в какой-либо категории магазина по Производителю.' WHERE configuration_key='PRODUCT_LIST_FILTER';
UPDATE configuration SET configuration_title='Расположение навигации Следующая/Предыдущая страница', configuration_description='Установите расположение навигации Следующая/Предыдущая страница (1-верх, 2-низ, 3-верх+низ)' WHERE configuration_key='PREV_NEXT_BAR_LOCATION';
UPDATE configuration SET configuration_title='Проверять наличие товара на складе', configuration_description='Проверять, есть ли необходимое количество товара на складе при оформлении заказа' WHERE configuration_key='STOCK_CHECK';
UPDATE configuration SET configuration_title='Вычитать товар со склада', configuration_description='Вычитать со склада то количество товара, которое будет заказываться в интернет-магазине' WHERE configuration_key='STOCK_LIMITED';
UPDATE configuration SET configuration_title='Разрешить оформление заказа', configuration_description='Разрешить покупателям оформлять заказ, даже если на складе нет достаточного количества единиц заказываемого товара' WHERE configuration_key='STOCK_ALLOW_CHECKOUT';
UPDATE configuration SET configuration_title='Отмечать товар, отсутствующий на складе', configuration_description='Показывать покупателю маркер напротив товара при оформлении заказа, если на складе нет необходимого количества единиц заказываемого товара' WHERE configuration_key='STOCK_MARK_PRODUCT_OUT_OF_STOCK';
UPDATE configuration SET configuration_title='Лимит количества товара на складе', configuration_description='Если количество товара на складе меньше, чем указанное число в данной переменной, то в корзине выводится предупреждение о недостаточном количестве товара на складе для выполнения заказа.' WHERE configuration_key='STOCK_REORDER_LEVEL';
UPDATE configuration SET configuration_title='Сохранять время парсинга страниц', configuration_description='Хранить время, затраченное на генерацию(парсинг) страниц магазина.' WHERE configuration_key='STORE_PAGE_PARSE_TIME';
UPDATE configuration SET configuration_title='Директория хранения логов', configuration_description='Полный путь до директории и файла, в который будет записываться лог парсинга страниц.' WHERE configuration_key='STORE_PAGE_PARSE_TIME_LOG';
UPDATE configuration SET configuration_title='Формат даты логов', configuration_description='Формат даты' WHERE configuration_key='STORE_PARSE_DATE_TIME_FORMAT';
UPDATE configuration SET configuration_title='Показывать время парсинга страниц', configuration_description='Показывать время парсинга страницы в интернет-магазине (опция Сохранять время парсинга страниц должна быть включена)' WHERE configuration_key='DISPLAY_PAGE_PARSE_TIME';
UPDATE configuration SET configuration_title='Сохранять запросы к базе дынных', configuration_description='Сохранять все запросы к базе данных в файле, указанном в переменной Директория хранение логов (только для PHP4 и выше)' WHERE configuration_key='STORE_DB_TRANSACTIONS';
UPDATE configuration SET configuration_title='Использовать кэш', configuration_description='Использовать кэширование информации.' WHERE configuration_key='USE_CACHE';
UPDATE configuration SET configuration_title='Кэш директория', configuration_description='Директория, куда будут записываться и сохраняться кэш-файлы.' WHERE configuration_key='DIR_FS_CACHE';
UPDATE configuration SET configuration_title='Способ отправки E-Mail', configuration_description='Укажите, какой способ отправки писем из магазина будет использоваться. Для серверов, работающих под управлением Windows или MacOS необходимо установить SMTP для отправки писем.' WHERE configuration_key='EMAIL_TRANSPORT';
UPDATE configuration SET configuration_title='Разделитель строк в E-Mail', configuration_description='Используемая последовательность символов для разделения заголовков в письме.' WHERE configuration_key='EMAIL_LINEFEED';
UPDATE configuration SET configuration_title='Использовать HTML формат при отправке писем', configuration_description='Отправлять письма из магазина в HTML формате.' WHERE configuration_key='EMAIL_USE_HTML';
UPDATE configuration SET configuration_title='Проверять E-Mail адрес через DNS', configuration_description='Проверять, верные ли e-mail адреса указываются при регистрации в интернет-магазине. Для проверки используется DNS.' WHERE configuration_key='ENTRY_EMAIL_ADDRESS_CHECK';
UPDATE configuration SET configuration_title='Отправлять письма из магазина', configuration_description='Отправлять письма из мгаазина.' WHERE configuration_key='SEND_EMAILS';
UPDATE configuration SET configuration_title='Разрешить функцию скачивания товаров', configuration_description='Разрешить функцию скачивания товаров.' WHERE configuration_key='DOWNLOAD_ENABLED';
UPDATE configuration SET configuration_title='Использовать перенаправление при скачивании', configuration_description='Использовать перенаправление в браузере для скачивания товара. Для не Unix систем(Windows, Mac OS и т.д.) должно стоять false.' WHERE configuration_key='DOWNLOAD_BY_REDIRECT';
UPDATE configuration SET configuration_title='Срок существования ссылки для скачивания (дней)', configuration_description='Установите количество дней, в течение которых покупатель может скачать свой товар. Если укажите 0, тогда срок существования ссылки для скачивания ограничен не будет.' WHERE configuration_key='DOWNLOAD_MAX_DAYS';
UPDATE configuration SET configuration_title='Максимальное количество скачиваний', configuration_description='Установите максимальное количество скачиваний для одного товара. Если укажите 0, тогда никаких ограничений по количеству скачиваний не будет.' WHERE configuration_key='DOWNLOAD_MAX_COUNT';
UPDATE configuration SET configuration_title='Разрешить GZip компрессию', configuration_description='Разрешить HTTP GZip компрессию.' WHERE configuration_key='GZIP_COMPRESSION';
UPDATE configuration SET configuration_title='Уровень компрессии', configuration_description='Вы можете указать уровень компрессии от 0 до 9 (0 = минимум, 9 = максимум).' WHERE configuration_key='GZIP_LEVEL';
UPDATE configuration SET configuration_title='Директория сессий', configuration_description='Если сессии хранятся в файлах, то здесь необходимо указать полный путь до папки, в которой будут храниться файлы сессий.' WHERE configuration_key='SESSION_WRITE_DIRECTORY';
UPDATE configuration SET configuration_title='Принудительное использование Cookie', configuration_description='Принудительно использовать сессии, только когда в браузере активированы cookies.' WHERE configuration_key='SESSION_FORCE_COOKIE_USE';
UPDATE configuration SET configuration_title='Проверять ID SSL сессии', configuration_description='Проверять  SSL_SESSION_ID при каждом обращении к странице, защищённой протоколом HTTPS.' WHERE configuration_key='SESSION_CHECK_SSL_SESSION_ID';
UPDATE configuration SET configuration_title='Проверять переменную User Agent', configuration_description='Проверять переменную бразура user agent при каждом обращении к страницам интернет-магазина.' WHERE configuration_key='SESSION_CHECK_USER_AGENT';
UPDATE configuration SET configuration_title='Проверять IP адрес', configuration_description='Проверять IP адреса клиентов при каждом обращении к страницам интернет-магазина.' WHERE configuration_key='SESSION_CHECK_IP_ADDRESS';
UPDATE configuration SET configuration_title='Не показывать сессию в адресе паукам поисковых машин', configuration_description='Не показывать сессию в адресе при обращении к станицам магазина известных поисковых пауков. Список известных пауков находится в файле includes/spiders.txt.' WHERE configuration_key='SESSION_BLOCK_SPIDERS';
UPDATE configuration SET configuration_title='Воссоздавать сессию', configuration_description='Воссоздавать сессию для генерации нового ID кода сессии при входе зарегистрированного покупателя в магазин, либо при регистрации нового покупателя (Только для PHP 4.1 и выше).' WHERE configuration_key='SESSION_RECREATE';
UPDATE configuration SET configuration_title='Last UPDATE Check Time', configuration_description='Last time a check for new versions of osCommerce was run' WHERE configuration_key='LAST_UPDATE_CHECK_TIME';
UPDATE configuration SET configuration_title='Установленные группы блока шаблона', configuration_description='This is automatically updated. No need to edit.' WHERE configuration_key='TEMPLATE_BLOCK_GROUPS';
UPDATE configuration SET configuration_title='Сортировка', configuration_description='Порядок сортировки' WHERE configuration_title='Sort Order' AND configuration_description='Sort order of display. Lowest is displayed first.';"
UPDATE configuration SET configuration_title='Сортировка', configuration_description='Порядок сортировки' WHERE configuration_title='Sort Order' AND configuration_description='Sort order of display.';"
UPDATE configuration SET configuration_title='Местоположение', configuration_description='Этот модуль загружать в правую или левую колонку?' WHERE configuration_title='Content Placement' AND configuration_description='Should the module be loaded in the left or right column?';

#
# Translate order status
#
INSERT INTO orders_status (orders_status_id, language_id, orders_status_name, public_flag, downloads_flag) SELECT orders_status_id, @languages_ru_id, orders_status_name, public_flag, downloads_flag FROM orders_status;
UPDATE orders_status SET orders_status_name = 'Ожидает' WHERE orders_status_name = 'Pending';
UPDATE orders_status SET orders_status_name = 'Обрабатывается' WHERE orders_status_name = 'Processing';
UPDATE orders_status SET orders_status_name = 'Доставляется' WHERE orders_status_name = 'Delivered';
UPDATE orders_status SET orders_status_name = 'PayPal [Транзакция]' WHERE orders_status_name = 'PayPal [Transactions]';

INSERT INTO categories_description (categories_id, language_id, categories_name) SELECT categories_id, @languages_ru_id, categories_name FROM categories_description;
INSERT INTO manufacturers_info (manufacturers_id, languages_id, manufacturers_url, url_clicked, date_last_click) SELECT manufacturers_id, @languages_ru_id, manufacturers_url, '0', NULL FROM manufacturers_info;
INSERT INTO products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) SELECT products_id, @languages_ru_id, products_name, products_description, products_url, '0' FROM products_description;

INSERT INTO products_options (products_options_id, language_id, products_options_name) SELECT products_options_id, @languages_ru_id, products_options_name FROM products_options;
UPDATE products_options SET products_options_name = 'Цвет' WHERE products_options_name = 'Color';
UPDATE products_options SET products_options_name = 'Размер' WHERE products_options_name = 'Size';
UPDATE products_options SET products_options_name = 'Модель' WHERE products_options_name = 'Model';
UPDATE products_options SET products_options_name = 'Память' WHERE products_options_name = 'Memory';
UPDATE products_options SET products_options_name = 'Версия' WHERE products_options_name = 'Version';

INSERT INTO products_options_values (products_options_values_id, language_id, products_options_values_name) SELECT products_options_values_id, @languages_ru_id, products_options_values_name FROM products_options_values;

#
# * SQL Localization script - Translate countries
# * @package Installer
# * @access private
# * @copyright Copyright 2004-2009 Andrew Berezin eCommerce-Service.com
# * @copyright Copyright 2003-2009 Zen Cart Development Team
# * @copyright Portions Copyright 2003 osCommerce
# * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
# * @Localization: Andrew Berezin http://ecommerce-service.com
# * @version $Id: mysql_50_translate_countries.sql 1.3.8a 17.12.2007 11:02 AndrewBerezin $

## http://www.iso.org/iso/en/prods-services/iso3166ma/02iso-3166-code-lists/list-en1.html
## http://www.magnum-opus.ru/wiki/ISO-3166-1
## http://www.artlebedev.ru/tools/country-list/tab/
UPDATE countries SET countries_name='Афганистан' WHERE countries_iso_code_3='AFG';
UPDATE countries SET countries_name='Албания' WHERE countries_iso_code_3='ALB';
UPDATE countries SET countries_name='Алжир' WHERE countries_iso_code_3='DZA';
UPDATE countries SET countries_name='Американский Самоа' WHERE countries_iso_code_3='ASM';
UPDATE countries SET countries_name='Андорра' WHERE countries_iso_code_3='AND';
UPDATE countries SET countries_name='Ангола' WHERE countries_iso_code_3='AGO';
UPDATE countries SET countries_name='Ангилья' WHERE countries_iso_code_3='AIA';
UPDATE countries SET countries_name='Антарктика' WHERE countries_iso_code_3='ATA';
UPDATE countries SET countries_name='Антигуа и Барбуда' WHERE countries_iso_code_3='ATG';
UPDATE countries SET countries_name='Аргентина' WHERE countries_iso_code_3='ARG';
UPDATE countries SET countries_name='Армения' WHERE countries_iso_code_3='ARM';
UPDATE countries SET countries_name='Аруба' WHERE countries_iso_code_3='ABW';
UPDATE countries SET countries_name='Австралия' WHERE countries_iso_code_3='AUS';
UPDATE countries SET countries_name='Австрия' WHERE countries_iso_code_3='AUT';
UPDATE countries SET countries_name='Азербайджан' WHERE countries_iso_code_3='AZE';
UPDATE countries SET countries_name='Багамские острова' WHERE countries_iso_code_3='BHS';
UPDATE countries SET countries_name='Бахрейн' WHERE countries_iso_code_3='BHR';
UPDATE countries SET countries_name='Бангладеш' WHERE countries_iso_code_3='BGD';
UPDATE countries SET countries_name='Барбадос' WHERE countries_iso_code_3='BRB';
UPDATE countries SET countries_name='Беларусь' WHERE countries_iso_code_3='BLR';
UPDATE countries SET countries_name='Бельгия' WHERE countries_iso_code_3='BEL';
UPDATE countries SET countries_name='Белиз' WHERE countries_iso_code_3='BLZ';
UPDATE countries SET countries_name='Бенин' WHERE countries_iso_code_3='BEN';
UPDATE countries SET countries_name='Бермуды' WHERE countries_iso_code_3='BMU';
UPDATE countries SET countries_name='Бутан' WHERE countries_iso_code_3='BTN';
UPDATE countries SET countries_name='Боливия' WHERE countries_iso_code_3='BOL';
UPDATE countries SET countries_name='Босния и Герцеговина' WHERE countries_iso_code_3='BIH';
UPDATE countries SET countries_name='Ботсвана' WHERE countries_iso_code_3='BWA';
UPDATE countries SET countries_name='остров Буве' WHERE countries_iso_code_3='BVT';
UPDATE countries SET countries_name='Бразилия' WHERE countries_iso_code_3='BRA';
UPDATE countries SET countries_name='Британские территории Индийского океана' WHERE countries_iso_code_3='IOT';
UPDATE countries SET countries_name='Бруней' WHERE countries_iso_code_3='BRN';
UPDATE countries SET countries_name='Болгария' WHERE countries_iso_code_3='BGR';
UPDATE countries SET countries_name='Буркина Фасо' WHERE countries_iso_code_3='BFA';
UPDATE countries SET countries_name='Бурунди' WHERE countries_iso_code_3='BDI';
UPDATE countries SET countries_name='Камбоджа' WHERE countries_iso_code_3='KHM';
UPDATE countries SET countries_name='Камерун' WHERE countries_iso_code_3='CMR';
UPDATE countries SET countries_name='Канада' WHERE countries_iso_code_3='CAN';
UPDATE countries SET countries_name='острова Зеленого Мыса' WHERE countries_iso_code_3='CPV';
UPDATE countries SET countries_name='Каймановы острова' WHERE countries_iso_code_3='CYM';
UPDATE countries SET countries_name='Центральная Африканская Республика' WHERE countries_iso_code_3='CAF';
UPDATE countries SET countries_name='Чад' WHERE countries_iso_code_3='TCD';
UPDATE countries SET countries_name='Чили' WHERE countries_iso_code_3='CHL';
UPDATE countries SET countries_name='Китайская Народная Республика' WHERE countries_iso_code_3='CHN';
UPDATE countries SET countries_name='остров Рождества' WHERE countries_iso_code_3='CXR';
UPDATE countries SET countries_name='Кокосовые острова' WHERE countries_iso_code_3='CCK';
UPDATE countries SET countries_name='Колумбия' WHERE countries_iso_code_3='COL';
UPDATE countries SET countries_name='Коморские острова' WHERE countries_iso_code_3='COM';
UPDATE countries SET countries_name='Конго' WHERE countries_iso_code_3='COG';
UPDATE countries SET countries_name='острова Кука' WHERE countries_iso_code_3='COK';
UPDATE countries SET countries_name='Коста Рика' WHERE countries_iso_code_3='CRI';
UPDATE countries SET countries_name='Кот-д''Ивуар' WHERE countries_iso_code_3='CIV';
UPDATE countries SET countries_name='Хорватия' WHERE countries_iso_code_3='HRV';
UPDATE countries SET countries_name='Куба' WHERE countries_iso_code_3='CUB';
UPDATE countries SET countries_name='Кипр' WHERE countries_iso_code_3='CYP';
UPDATE countries SET countries_name='Чехия' WHERE countries_iso_code_3='CZE';
UPDATE countries SET countries_name='Дания' WHERE countries_iso_code_3='DNK';
UPDATE countries SET countries_name='Джибути' WHERE countries_iso_code_3='DJI';
UPDATE countries SET countries_name='Доминика' WHERE countries_iso_code_3='DMA';
UPDATE countries SET countries_name='Доминиканская республика' WHERE countries_iso_code_3='DOM';
UPDATE countries SET countries_name='Восточный Тимур' WHERE countries_iso_code_3='TMP';
UPDATE countries SET countries_name='Эквадор' WHERE countries_iso_code_3='ECU';
UPDATE countries SET countries_name='Египет' WHERE countries_iso_code_3='EGY';
UPDATE countries SET countries_name='Сальвадор' WHERE countries_iso_code_3='SLV';
UPDATE countries SET countries_name='Экваториальная Гвинея' WHERE countries_iso_code_3='GNQ';
UPDATE countries SET countries_name='Эритрея' WHERE countries_iso_code_3='ERI';
UPDATE countries SET countries_name='Эстония' WHERE countries_iso_code_3='EST';
UPDATE countries SET countries_name='Эфиопия' WHERE countries_iso_code_3='ETH';
UPDATE countries SET countries_name='Фолклендские' WHERE countries_iso_code_3='FLK';
UPDATE countries SET countries_name='Фарерские острова' WHERE countries_iso_code_3='FRO';
UPDATE countries SET countries_name='Фиджи' WHERE countries_iso_code_3='FJI';
UPDATE countries SET countries_name='Финляндия' WHERE countries_iso_code_3='FIN';
UPDATE countries SET countries_name='Франция' WHERE countries_iso_code_3='FRA';
UPDATE countries SET countries_name='Франция, Метрополия' WHERE countries_iso_code_3='FXX';
UPDATE countries SET countries_name='Французская Гвиана' WHERE countries_iso_code_3='GUF';
UPDATE countries SET countries_name='Французская Полинезия' WHERE countries_iso_code_3='PYF';
UPDATE countries SET countries_name='Французские Южные Территории' WHERE countries_iso_code_3='ATF';
UPDATE countries SET countries_name='Габон' WHERE countries_iso_code_3='GAB';
UPDATE countries SET countries_name='Гамбия' WHERE countries_iso_code_3='GMB';
UPDATE countries SET countries_name='Грузия' WHERE countries_iso_code_3='GEO';
UPDATE countries SET countries_name='Германия' WHERE countries_iso_code_3='DEU';
UPDATE countries SET countries_name='Гана' WHERE countries_iso_code_3='GHA';
UPDATE countries SET countries_name='Гибралтар' WHERE countries_iso_code_3='GIB';
UPDATE countries SET countries_name='Греция' WHERE countries_iso_code_3='GRC';
UPDATE countries SET countries_name='Гренландия' WHERE countries_iso_code_3='GRL';
UPDATE countries SET countries_name='Гренада' WHERE countries_iso_code_3='GRD';
UPDATE countries SET countries_name='Гваделупа' WHERE countries_iso_code_3='GLP';
UPDATE countries SET countries_name='Гуам' WHERE countries_iso_code_3='GUM';
UPDATE countries SET countries_name='Гватемала' WHERE countries_iso_code_3='GTM';
UPDATE countries SET countries_name='Гвинея' WHERE countries_iso_code_3='GIN';
UPDATE countries SET countries_name='Гвинея-Бисау' WHERE countries_iso_code_3='GNB';
UPDATE countries SET countries_name='Гайана' WHERE countries_iso_code_3='GUY';
UPDATE countries SET countries_name='Гаити' WHERE countries_iso_code_3='HTI';
UPDATE countries SET countries_name='острова Герда и МакДональда' WHERE countries_iso_code_3='HMD';
UPDATE countries SET countries_name='Гондурас' WHERE countries_iso_code_3='HND';
UPDATE countries SET countries_name='Гонконг' WHERE countries_iso_code_3='HKG';
UPDATE countries SET countries_name='Венгрия' WHERE countries_iso_code_3='HUN';
UPDATE countries SET countries_name='Исландия' WHERE countries_iso_code_3='ISL';
UPDATE countries SET countries_name='Индия' WHERE countries_iso_code_3='IND';
UPDATE countries SET countries_name='Индонезия' WHERE countries_iso_code_3='IDN';
UPDATE countries SET countries_name='Иран' WHERE countries_iso_code_3='IRN';
UPDATE countries SET countries_name='Ирак' WHERE countries_iso_code_3='IRQ';
UPDATE countries SET countries_name='Ирландия' WHERE countries_iso_code_3='IRL';
UPDATE countries SET countries_name='Израиль' WHERE countries_iso_code_3='ISR';
UPDATE countries SET countries_name='Италия' WHERE countries_iso_code_3='ITA';
UPDATE countries SET countries_name='Ямайка' WHERE countries_iso_code_3='JAM';
UPDATE countries SET countries_name='Япония' WHERE countries_iso_code_3='JPN';
UPDATE countries SET countries_name='Иордания' WHERE countries_iso_code_3='JOR';
UPDATE countries SET countries_name='Казахстан' WHERE countries_iso_code_3='KAZ';
UPDATE countries SET countries_name='Кения' WHERE countries_iso_code_3='KEN';
UPDATE countries SET countries_name='Кирибати' WHERE countries_iso_code_3='KIR';
UPDATE countries SET countries_name='Корейская Народная Демократическая республика' WHERE countries_iso_code_3='PRK';
UPDATE countries SET countries_name='Корея' WHERE countries_iso_code_3='KOR';
UPDATE countries SET countries_name='Кувейт' WHERE countries_iso_code_3='KWT';
UPDATE countries SET countries_name='Кыргызстан' WHERE countries_iso_code_3='KGZ';
UPDATE countries SET countries_name='Лаос' WHERE countries_iso_code_3='LAO';
UPDATE countries SET countries_name='Латвия' WHERE countries_iso_code_3='LVA';
UPDATE countries SET countries_name='Ливан' WHERE countries_iso_code_3='LBN';
UPDATE countries SET countries_name='Лесото' WHERE countries_iso_code_3='LSO';
UPDATE countries SET countries_name='Либерия' WHERE countries_iso_code_3='LBR';
UPDATE countries SET countries_name='Ливия' WHERE countries_iso_code_3='LBY';
UPDATE countries SET countries_name='Лихтенштейн' WHERE countries_iso_code_3='LIE';
UPDATE countries SET countries_name='Литва' WHERE countries_iso_code_3='LTU';
UPDATE countries SET countries_name='Люксембург' WHERE countries_iso_code_3='LUX';
UPDATE countries SET countries_name='Макао' WHERE countries_iso_code_3='MAC';
UPDATE countries SET countries_name='Македония' WHERE countries_iso_code_3='MKD';
UPDATE countries SET countries_name='Мадагаскар' WHERE countries_iso_code_3='MDG';
UPDATE countries SET countries_name='Малави' WHERE countries_iso_code_3='MWI';
UPDATE countries SET countries_name='Малайзия' WHERE countries_iso_code_3='MYS';
UPDATE countries SET countries_name='Мальдивские острова' WHERE countries_iso_code_3='MDV';
UPDATE countries SET countries_name='Мали' WHERE countries_iso_code_3='MLI';
UPDATE countries SET countries_name='Мальта' WHERE countries_iso_code_3='MLT';
UPDATE countries SET countries_name='Маршалловы острова' WHERE countries_iso_code_3='MHL';
UPDATE countries SET countries_name='Мартиника' WHERE countries_iso_code_3='MTQ';
UPDATE countries SET countries_name='Мавритания' WHERE countries_iso_code_3='MRT';
UPDATE countries SET countries_name='Маврикий' WHERE countries_iso_code_3='MUS';
UPDATE countries SET countries_name='Майотта' WHERE countries_iso_code_3='MYT';
UPDATE countries SET countries_name='Мексика' WHERE countries_iso_code_3='MEX';
UPDATE countries SET countries_name='Микронезия' WHERE countries_iso_code_3='FSM';
UPDATE countries SET countries_name='Молдова' WHERE countries_iso_code_3='MDA';
UPDATE countries SET countries_name='Монако' WHERE countries_iso_code_3='MCO';
UPDATE countries SET countries_name='Монголия' WHERE countries_iso_code_3='MNG';
UPDATE countries SET countries_name='Монтсеррат' WHERE countries_iso_code_3='MSR';
UPDATE countries SET countries_name='Марокко' WHERE countries_iso_code_3='MAR';
UPDATE countries SET countries_name='Мозамбик' WHERE countries_iso_code_3='MOZ';
UPDATE countries SET countries_name='Мьянма' WHERE countries_iso_code_3='MMR';
UPDATE countries SET countries_name='Намибия' WHERE countries_iso_code_3='NAM';
UPDATE countries SET countries_name='Науру' WHERE countries_iso_code_3='NRU';
UPDATE countries SET countries_name='Непал' WHERE countries_iso_code_3='NPL';
UPDATE countries SET countries_name='Нидерланды' WHERE countries_iso_code_3='NLD';
UPDATE countries SET countries_name='Антильские острова' WHERE countries_iso_code_3='ANT';
UPDATE countries SET countries_name='Новая Каледония' WHERE countries_iso_code_3='NCL';
UPDATE countries SET countries_name='Новая Зеландия' WHERE countries_iso_code_3='NZL';
UPDATE countries SET countries_name='Никарагуа' WHERE countries_iso_code_3='NIC';
UPDATE countries SET countries_name='Нигер' WHERE countries_iso_code_3='NER';
UPDATE countries SET countries_name='Нигерия' WHERE countries_iso_code_3='NGA';
UPDATE countries SET countries_name='Ниуэ' WHERE countries_iso_code_3='NIU';
UPDATE countries SET countries_name='остров Норфолк' WHERE countries_iso_code_3='NFK';
UPDATE countries SET countries_name='Марианские острова' WHERE countries_iso_code_3='MNP';
UPDATE countries SET countries_name='Норвегия' WHERE countries_iso_code_3='NOR';
UPDATE countries SET countries_name='Оман' WHERE countries_iso_code_3='OMN';
UPDATE countries SET countries_name='Пакистан' WHERE countries_iso_code_3='PAK';
UPDATE countries SET countries_name='Палау' WHERE countries_iso_code_3='PLW';
UPDATE countries SET countries_name='Панама' WHERE countries_iso_code_3='PAN';
UPDATE countries SET countries_name='Папуа - Новая Гвинея' WHERE countries_iso_code_3='PNG';
UPDATE countries SET countries_name='Парагвай' WHERE countries_iso_code_3='PRY';
UPDATE countries SET countries_name='Перу' WHERE countries_iso_code_3='PER';
UPDATE countries SET countries_name='Филиппины' WHERE countries_iso_code_3='PHL';
UPDATE countries SET countries_name='остров Питкэрн' WHERE countries_iso_code_3='PCN';
UPDATE countries SET countries_name='Польша' WHERE countries_iso_code_3='POL';
UPDATE countries SET countries_name='Португалия' WHERE countries_iso_code_3='PRT';
UPDATE countries SET countries_name='Пуэрто-Рико' WHERE countries_iso_code_3='PRI';
UPDATE countries SET countries_name='Катар' WHERE countries_iso_code_3='QAT';
UPDATE countries SET countries_name='Реюньон' WHERE countries_iso_code_3='REU';
UPDATE countries SET countries_name='Румыния' WHERE countries_iso_code_3='ROU';
UPDATE countries SET countries_name='Румыния' WHERE countries_iso_code_3='ROM';
UPDATE countries SET countries_name='Россия' WHERE countries_iso_code_3='RUS';
UPDATE countries SET countries_name='Руанда' WHERE countries_iso_code_3='RWA';
UPDATE countries SET countries_name='острова Самоа' WHERE countries_iso_code_3='WSM';
UPDATE countries SET countries_name='Сан-Марино' WHERE countries_iso_code_3='SMR';
UPDATE countries SET countries_name='Сан-Томе и Принсипи' WHERE countries_iso_code_3='STP';
UPDATE countries SET countries_name='Саудовская Аравия' WHERE countries_iso_code_3='SAU';
UPDATE countries SET countries_name='Сенегал' WHERE countries_iso_code_3='SEN';
UPDATE countries SET countries_name='Сербия' WHERE countries_iso_code_3='SRB';
UPDATE countries SET countries_name='Сейшельские острова' WHERE countries_iso_code_3='SYC';
UPDATE countries SET countries_name='Сент-Китс и Невис' WHERE countries_iso_code_3='KNA';
UPDATE countries SET countries_name='Сент-Люсия' WHERE countries_iso_code_3='LCA';
UPDATE countries SET countries_name='Сент-Винсент и Гренадины' WHERE countries_iso_code_3='VCT';
UPDATE countries SET countries_name='Сьерра-Леоне' WHERE countries_iso_code_3='SLE';
UPDATE countries SET countries_name='Сингапур' WHERE countries_iso_code_3='SGP';
UPDATE countries SET countries_name='Словакия' WHERE countries_iso_code_3='SVK';
UPDATE countries SET countries_name='Словения' WHERE countries_iso_code_3='SVN';
UPDATE countries SET countries_name='Соломоновы острова' WHERE countries_iso_code_3='SLB';
UPDATE countries SET countries_name='Сомали' WHERE countries_iso_code_3='SOM';
UPDATE countries SET countries_name='ЮАР' WHERE countries_iso_code_3='ZAF';
UPDATE countries SET countries_name='Южная Георгия и Южные Сандвичевы острова' WHERE countries_iso_code_3='SGS';
UPDATE countries SET countries_name='Испания' WHERE countries_iso_code_3='ESP';
UPDATE countries SET countries_name='Шри Ланка' WHERE countries_iso_code_3='LKA';
UPDATE countries SET countries_name='остров Святой Елены' WHERE countries_iso_code_3='SHN';
UPDATE countries SET countries_name='Сен-Пьер и Микелон' WHERE countries_iso_code_3='SPM';
UPDATE countries SET countries_name='Судан' WHERE countries_iso_code_3='SDN';
UPDATE countries SET countries_name='Суринам' WHERE countries_iso_code_3='SUR';
UPDATE countries SET countries_name='острова Свалбард и Ян Майен' WHERE countries_iso_code_3='SJM';
UPDATE countries SET countries_name='Свазиленд' WHERE countries_iso_code_3='SWZ';
UPDATE countries SET countries_name='Швеция' WHERE countries_iso_code_3='SWE';
UPDATE countries SET countries_name='Швейцария' WHERE countries_iso_code_3='CHE';
UPDATE countries SET countries_name='Сирия' WHERE countries_iso_code_3='SYR';
UPDATE countries SET countries_name='Тайвань' WHERE countries_iso_code_3='TWN';
UPDATE countries SET countries_name='Таджикистан' WHERE countries_iso_code_3='TJK';
UPDATE countries SET countries_name='Танзания' WHERE countries_iso_code_3='TZA';
UPDATE countries SET countries_name='Тайланд' WHERE countries_iso_code_3='THA';
UPDATE countries SET countries_name='Того' WHERE countries_iso_code_3='TGO';
UPDATE countries SET countries_name='Токелау' WHERE countries_iso_code_3='TKL';
UPDATE countries SET countries_name='Тонга' WHERE countries_iso_code_3='TON';
UPDATE countries SET countries_name='Тринидад и Тобаго' WHERE countries_iso_code_3='TTO';
UPDATE countries SET countries_name='Тунис' WHERE countries_iso_code_3='TUN';
UPDATE countries SET countries_name='Турция' WHERE countries_iso_code_3='TUR';
UPDATE countries SET countries_name='Туркменистан' WHERE countries_iso_code_3='TKM';
UPDATE countries SET countries_name='острова Туркс и Кайкос' WHERE countries_iso_code_3='TCA';
UPDATE countries SET countries_name='Тувалу' WHERE countries_iso_code_3='TUV';
UPDATE countries SET countries_name='Уганда' WHERE countries_iso_code_3='UGA';
UPDATE countries SET countries_name='Украина' WHERE countries_iso_code_3='UKR';
UPDATE countries SET countries_name='Арабские Эмираты' WHERE countries_iso_code_3='ARE';
UPDATE countries SET countries_name='Великобритания' WHERE countries_iso_code_3='GBR';
UPDATE countries SET countries_name='Соединенные Штаты Америки' WHERE countries_iso_code_3='USA';
UPDATE countries SET countries_name='Отдаленные Острова США' WHERE countries_iso_code_3='UMI';
UPDATE countries SET countries_name='Уругвай' WHERE countries_iso_code_3='URY';
UPDATE countries SET countries_name='Узбекистан' WHERE countries_iso_code_3='UZB';
UPDATE countries SET countries_name='Вануату' WHERE countries_iso_code_3='VUT';
UPDATE countries SET countries_name='Ватикан' WHERE countries_iso_code_3='VAT';
UPDATE countries SET countries_name='Венесуэла' WHERE countries_iso_code_3='VEN';
UPDATE countries SET countries_name='Вьетнам' WHERE countries_iso_code_3='VNM';
UPDATE countries SET countries_name='Британские Виргинские острова' WHERE countries_iso_code_3='VGB';
UPDATE countries SET countries_name='Американские Виргинские острова' WHERE countries_iso_code_3='VIR';
UPDATE countries SET countries_name='острова Валлис и Футуна' WHERE countries_iso_code_3='WLF';
UPDATE countries SET countries_name='Западная Сахара' WHERE countries_iso_code_3='ESH';
UPDATE countries SET countries_name='Йемен' WHERE countries_iso_code_3='YEM';
UPDATE countries SET countries_name='Югославия' WHERE countries_iso_code_3='YUG';
UPDATE countries SET countries_name='Заир' WHERE countries_iso_code_3='ZAR';
UPDATE countries SET countries_name='Замбия' WHERE countries_iso_code_3='ZMB';
UPDATE countries SET countries_name='Зимбабве' WHERE countries_iso_code_3='ZWE';
UPDATE countries SET countries_name='Эландские Острова' WHERE countries_iso_code_3='ALA';
UPDATE countries SET countries_name='Тимор-Лесте' WHERE countries_iso_code_3='TLS';

#
# * SQL Localization script - Add zones for Russian Federation countries
# * @package Installer
# * @access private
# * @copyright Copyright 2004-2008 Andrew Berezin eCommerce-Service.com
# * @copyright Copyright 2003-2008 Zen Cart Development Team
# * @copyright Portions Copyright 2003 osCommerce
# * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
# * @link http://www.gnivc.ru/Document.aspx?id=733 Справочник "Субъекты Российской федерации" (ССРФ)
# * @link http://www.constitution.ru/10003000/10003000-5.htm Конституция РФ, Глава 3. Федеративное устройство, Статья 65
# * @link http://ru.wikipedia.org/wiki/Коды_субъектов_Российской_Федерации
# * @Localization: Andrew Berezin eCommerce-Service.com
# * @version $Id: mysql_31_zones_ru.sql 1.3 02.07.2008 08:23 AndrewBerezin eCommerce-Service.com $

INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '01', 'Республика Адыгея (Адыгея)');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '04', 'Республика Алтай');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '02', 'Республика Башкортостан');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '03', 'Республика Бурятия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '05', 'Республика Дагестан');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '06', 'Республика Ингушетия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '07', 'Кабардино-Балкарская Республика');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '08', 'Республика Калмыкия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '09', 'Карачаево-Черкесская Республика');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '10', 'Республика Карелия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '11', 'Республика Коми');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '12', 'Республика Марий Эл');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '13', 'Республика Мордовия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '14', 'Республика Саха (Якутия)');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '15', 'Республика Северная Осетия - Алания');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '16', 'Республика Татарстан (Татарстан)');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '17', 'Республика Тыва');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '18', 'Удмуртская Республика');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '19', 'Республика Хакасия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '20', 'Чеченская Республика');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '21', 'Чувашская Республика - Чувашия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '22', 'Алтайский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '23', 'Краснодарский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '24', 'Красноярский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '25', 'Приморский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '26', 'Ставропольский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '27', 'Хабаровский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '28', 'Амурская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '29', 'Архангельская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '30', 'Астраханская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '31', 'Белгородская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '32', 'Брянская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '33', 'Владимирская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '34', 'Волгоградская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '35', 'Вологодская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '36', 'Воронежская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '37', 'Ивановская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '38', 'Иркутская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '39', 'Калининградская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '40', 'Калужская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '41', 'Камчатский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '42', 'Кемеровская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '43', 'Кировская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '44', 'Костромская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '45', 'Курганская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '46', 'Курская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '47', 'Ленинградская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '48', 'Липецкая область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '49', 'Магаданская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '50', 'Московская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '51', 'Мурманская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '52', 'Нижегородская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '53', 'Новгородская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '54', 'Новосибирская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '55', 'Омская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '56', 'Оренбургская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '57', 'Орловская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '58', 'Пензенская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '59', 'Пермский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '60', 'Псковская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '61', 'Ростовская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '62', 'Рязанская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '63', 'Самарская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '64', 'Саратовская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '65', 'Сахалинская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '66', 'Свердловская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '67', 'Смоленская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '68', 'Тамбовская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '69', 'Тверская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '70', 'Томская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '71', 'Тульская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '72', 'Тюменская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '73', 'Ульяновская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '74', 'Челябинская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '75', 'Забайкальский край');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '76', 'Ярославская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '77', 'Москва');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '78', 'Санкт-Петербург');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '79', 'Еврейская автономная область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '83', 'Ненецкий автономный округ');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '86', 'Ханты-Мансийский автономный округ');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '87', 'Чукотский автономный округ');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (176, '89', 'Ямало-Ненецкий автономный округ');

#
# * SQL Localization script - Add zones for ex-USSR countries
# * @package Installer
# * @access private
# * @copyright Copyright 2004-2009 Andrew Berezin eCommerce-Service.com
# * @copyright Copyright 2003-2009 Zen Cart Development Team
# * @copyright Portions Copyright 2003 osCommerce
# * @license http://www.zen-cart.com/license/2_0.txt GNU Public License V2.0
# * @Localization: Andrew Berezin http://ecommerce-service.com
# * @version $Id: mysql_52_zones_ex_ussr.sql 1.1 10.09.2008 18:32 AndrewBerezin  eCommerce-Service.com $

# 'Armenia','AM','ARM'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Араратская область', 'Араратская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Армавирская область', 'Армавирская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Гегаркуникская область', 'Гегаркуникская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Ереван', 'Ереван');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Котайкская область', 'Котайкская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Лорийская область', 'Лорийская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Область Вайоц Дзор', 'Область Вайоц Дзор');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Область Арагацотн', 'Область Арагацотн');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Сюникская область', 'Сюникская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Тавушская область', 'Тавушская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (011, 'Ширакская область', 'Ширакская область');
# 'Azerbaijan','AZ','AZE'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Агдашский район', 'Агдашский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Агдамский район', 'Агдамский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Агджабединский район', 'Агджабединский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Агсуинский район', 'Агсуинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Акстафинский район', 'Акстафинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Апшеронский район', 'Апшеронский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Астаринский район', 'Астаринский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Бабекский район', 'Бабекский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Балакенский район', 'Балакенский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Бардинский район', 'Бардинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Бейлаганский район', 'Бейлаганский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Билясуварский район', 'Билясуварский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Габалинский район', 'Габалинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Гаджигабульский район', 'Гаджигабульский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Газахский район', 'Газахский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Гахский район', 'Гахский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Геокчайский район', 'Геокчайский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Геранбойский район', 'Геранбойский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Гобустанский район', 'Гобустанский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Губинский район', 'Губинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Губадлинский район', 'Губадлинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Гусарский район', 'Гусарский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Дашкесанский район', 'Дашкесанский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Джалилабадский район', 'Джалилабадский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Джебраильский район', 'Джебраильский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Джульфинский район', 'Джульфинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Дивичинский район', 'Дивичинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Евлахский район', 'Евлахский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Закатальский район', 'Закатальский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Зангеланский район', 'Зангеланский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Зардабский район', 'Зардабский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Имишлинский район', 'Имишлинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Исмаиллинский район', 'Исмаиллинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Кедабекский район', 'Кедабекский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Кельбаджарский район', 'Кельбаджарский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Кюрдамирский район', 'Кюрдамирский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Лачинский район', 'Лачинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Ленкоранский район', 'Ленкоранский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Лерикский район', 'Лерикский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Масаллинский район', 'Масаллинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Нахичеванская Автономная Республика', 'Нахичеванская Автономная Республика');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Нефтчалинский район', 'Нефтчалинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Огузский район', 'Огузский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Ордубадский район', 'Ордубадский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Саатлинский район', 'Саатлинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Сабирабадский район', 'Сабирабадский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Садаракский район', 'Садаракский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Сальянский район', 'Сальянский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Самухский район', 'Самухский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Сиязаньский район', 'Сиязаньский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Тертерский район', 'Тертерский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Товузский район', 'Товузский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Уджарский район', 'Уджарский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Физулинский район', 'Физулинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Ханларский район', 'Ханларский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Хачмазский район', 'Хачмазский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Ходжалинский район', 'Ходжалинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Ходжавендский район', 'Ходжавендский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Хызынский район', 'Хызынский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Шарурский район', 'Шарурский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Шахбузский район', 'Шахбузский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Шекинский район', 'Шекинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Шемахинский район', 'Шемахинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Шемкирский район', 'Шемкирский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Шушинский район', 'Шушинский район');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (015, 'Ярдымлинский район', 'Ярдымлинский район');
# 'Belarus','BY','BLR'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (020, 'Брестская область', 'Брестская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (020, 'Витебская область', 'Витебская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (020, 'Гомельская область', 'Гомельская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (020, 'Гродненская область', 'Гродненская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (020, 'Минская область', 'Минская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (020, 'Могилевская область', 'Могилевская область');
# 'Estonia','EE','EST'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Валгамааский уезд', 'Валгамааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Вильяндимааский уезд', 'Вильяндимааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Вырумааский уезд', 'Вырумааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Ида-Вирумааский уезд', 'Ида-Вирумааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Йыгевамааский уезд', 'Йыгевамааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Ляэнемааский уезд', 'Ляэнемааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Ляэне-Вирумааский уезд', 'Ляэне-Вирумааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Пылвамааский уезд', 'Пылвамааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Пярнумааский уезд', 'Пярнумааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Рапламааский уезд', 'Рапламааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Сааремааский уезд', 'Сааремааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Тартумааский уезд', 'Тартумааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Харьюский уезд', 'Харьюский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Хийумааский уезд', 'Хийумааский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (067, 'Ярвамаамааский уезд', 'Ярвамаамааский уезд');
# 'Georgia','GE','GEO'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Абхазская автономная республика', 'Абхазская автономная республика');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Аджарская автономная республика', 'Аджарская автономная республика');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Гурия', 'Гурия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Имерети', 'Имерети');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Кахети', 'Кахети');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Квемо-Картли', 'Квемо-Картли');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Мцхета-Тианети', 'Мцхета-Тианети');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Рача-Лечхуми - Квемо Сванети', 'Рача-Лечхуми - Квемо Сванети');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Республика Южная Осетия', 'Республика Южная Осетия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Самцхе-Джавахети', 'Самцхе-Джавахети');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Самегрело - Земо-Сванети', 'Самегрело - Земо-Сванети');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Тбилиси', 'Тбилиси');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (080, 'Шида - Картли', 'Шида - Картли');
# 'Kazakhstan','KZ','KAZ'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Акмолинская область', 'Акмолинская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Актюбинская область', 'Актюбинская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Алматинская область', 'Алматинская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Атырауская область', 'Атырауская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Восточно-Казахстанская область', 'Восточно-Казахстанская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Жамбылская область', 'Жамбылская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Западно-Казахстанская область', 'Западно-Казахстанская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Карагандинская область', 'Карагандинская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Кзылординская область', 'Кзылординская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Костанайская область', 'Костанайская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Мангистауская область', 'Мангистауская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Павлодарская область', 'Павлодарская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Северо-Казахстанская область', 'Северо-Казахстанская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (109, 'Южно-Казахстанская область', 'Южно-Казахстанская область');
# 'Kyrgyzstan','KG','KGZ'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (115, 'Баткенская область', 'Баткенская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (115, 'Джалал-Абадская область', 'Джалал-Абадская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (115, 'Иссык-Кульская область', 'Иссык-Кульская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (115, 'Нарынская область', 'Нарынская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (115, 'Ошская область', 'Ошская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (115, 'Таласская область', 'Таласская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (115, 'Чуйская область', 'Чуйская область');
# 'Latvia','LV','LVA'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Аизкраукленский', 'Аизкраукленский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Алуксненский', 'Алуксненский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Балвский', 'Балвский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Бауский', 'Бауский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Валкский', 'Валкский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Валмиерский', 'Валмиерский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Вентспилсский', 'Вентспилсский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Вентспилс', 'Вентспилс');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Гулбенский', 'Гулбенский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Давгавпилский', 'Давгавпилский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Даугавпилс', 'Даугавпилс');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Добелский', 'Добелский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Екабпилский', 'Екабпилский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Елгавский', 'Елгавский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Елгава', 'Елгава');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Краславский', 'Краславский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Кулдигский', 'Кулдигский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Ледзенский', 'Ледзенский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Лепайский', 'Лепайский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Лиепая', 'Лиепая');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Лимбажский', 'Лимбажский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Мадонский', 'Мадонский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Огрский', 'Огрский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Прейльский', 'Прейльский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Резекненский', 'Резекненский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Резекне', 'Резекне');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Рига', 'Рига');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Рижский', 'Рижский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Салдуский', 'Салдуский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Талсинский', 'Талсинский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Тукумский', 'Тукумский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Цесиский', 'Цесиский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (117, 'Юрмала', 'Юрмала');
# 'Lithuania','LT','LTU'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Kлайпедский уезд', 'Kлайпедский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Maриямпольский уезд', 'Maриямпольский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Tяльшяйский уезд', 'Tяльшяйский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Алитусский уезд', 'Алитусский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Вильнюсский уезд', 'Вильнюсский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Каунасский уезд', 'Каунасский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Панявежский уезд', 'Панявежский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Таурагский уезд', 'Таурагский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Утянский уезд', 'Утянский уезд');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (123, 'Шяуляйский уезд', 'Шяуляйский уезд');
# 'Moldova, Republic of','MD','MDA'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Балти', 'Балти');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Единет', 'Единет');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Кагул', 'Кагул');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Кишенёв', 'Кишенёв');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Лапушна', 'Лапушна');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Оргей', 'Оргей');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Сорока', 'Сорока');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Тараклия', 'Тараклия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Тигина', 'Тигина');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (140, 'Унгены', 'Унгены');
# 'Tajikistan','TJ','TJK'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (207, 'Ленинабадская область', 'Ленинабадская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (207, 'Мухтори-Кухистони-Бадахшони', 'Мухтори-Кухистони-Бадахшони');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (207, 'Хатлонская область', 'Хатлонская область');
# 'Turkmenistan','TM','TKM'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (216, 'Ахал', 'Ахал');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (216, 'Балкан', 'Балкан');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (216, 'Дашховуз', 'Дашховуз');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (216, 'Лебап', 'Лебап');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (216, 'Мары', 'Мары');
# 'Ukraine','UA','UKR'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Винницкая область', 'Винницкая область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Волынская область', 'Волынская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Днепропетровская область', 'Днепропетровская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Донецкая область', 'Донецкая область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Житомирская область', 'Житомирская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Закарпатская область', 'Закарпатская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Запорожская область', 'Запорожская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Ивано-Франковская область', 'Ивано-Франковская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Киевская область', 'Киевская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Кировоградская область', 'Кировоградская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Луганская область', 'Луганская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Львовская область', 'Львовская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Николаевская область', 'Николаевская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Одесская область', 'Одесская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Полтавская область', 'Полтавская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Республика Крым', 'Республика Крым');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Ровенская область', 'Ровенская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Сумская область', 'Сумская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Тернопольская область', 'Тернопольская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Харьковская область', 'Харьковская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Херсонская область', 'Херсонская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Хмельницкая область', 'Хмельницкая область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Черновицкая область', 'Черновицкая область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Черниговская область', 'Черниговская область');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (220, 'Черкасская область', 'Черкасская область');
# 'Uzbekistan','UZ','UZB'
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Андижанский', 'Андижанский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Бухарский', 'Бухарский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Джизакский', 'Джизакский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Каракалпакия', 'Каракалпакия');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Кашкадарьинский', 'Кашкадарьинский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Навоийский', 'Навоийский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Наманганский', 'Наманганский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Самаркандский', 'Самаркандский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Сурхандарьинский', 'Сурхандарьинский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Сырдарьинский', 'Сырдарьинский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Ташкентский', 'Ташкентский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Ферганский', 'Ферганский');
INSERT INTO zones (zone_country_id, zone_code, zone_name) VALUES (226, 'Хорезмский', 'Хорезмский');

# Add RU address_format
INSERT INTO address_format VALUES (NULL, '$firstname $lastname$cr$streets$cr $city$cr$state_name$cr$country$cr$postcode','$city / $country');
SET @insert_id=last_insert_id();
UPDATE countries SET address_format_id=@insert_id WHERE countries_iso_code_3='RUS';
UPDATE countries SET address_format_id=@insert_id WHERE countries_iso_code_3='UKR';