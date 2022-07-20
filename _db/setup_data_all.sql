SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


TRUNCATE TABLE `aauth_login_attempts`;
INSERT INTO `aauth_login_attempts` (`id`, `ip_address`, `timestamp`, `login_attempts`) VALUES
(10, '43.252.104.130', '2021-12-05 23:31:09', 1);

TRUNCATE TABLE `aauth_pms`;
TRUNCATE TABLE `aauth_users`;
INSERT INTO `aauth_users` (`id`, `email`, `pass`, `username`, `banned`, `last_login`, `last_activity`, `date_created`, `forgot_exp`, `remember_time`, `remember_exp`, `verification_code`, `totp_secret`, `ip_address`, `roleid`, `picture`) VALUES
(8, 'tirta@ipn.net.id', 'fcb2c4b4101aa9d751628572744eb601c8ecfc100433125eb5c8055338cf77b5', 'admin', 0, '2021-12-06 16:23:51', '2021-12-06 16:23:51', '2021-12-05 10:02:06', NULL, NULL, NULL, '', NULL, '43.252.104.130', 5, '16387012361649642087.jpeg'),
(9, 'intaning@ipn.net.id', 'f34b1655f822d681a047f1b4443086db698fba98ede82201c284e98067dae745', 'intaning', 0, '2021-12-05 18:55:09', '2021-12-05 18:55:09', '2021-12-05 18:54:53', NULL, NULL, NULL, NULL, NULL, '43.252.104.130', 4, 'example.png'),
(10, 'rina@ipn.net.id', '5783baccbd4c0e1d75b505b47a588051b2b68463d418048e62d3a57d8344e33b', 'rina', 0, '2021-12-05 18:56:37', '2021-12-05 18:56:37', '2021-12-05 18:56:24', NULL, NULL, NULL, NULL, NULL, '43.252.104.130', 3, 'example.png'),
(11, 'inventory@billing.ipn.net.id', 'e2b976809bd1f8203bb26d617c187b74005f7bb21d87cf86dad5fa8aa341fc36', 'inventory', 0, '2021-12-06 09:17:02', '2021-12-06 09:17:02', '2021-12-06 09:16:28', NULL, NULL, NULL, NULL, NULL, '43.252.104.130', 1, 'example.png'),
(12, 'sales@billing.ipn.net.id', 'd05628466ba57aa2b6820fc7ba1b433ea641b9c9061f5b966f18d3d10dd9a6f0', 'sales', 0, '2021-12-06 09:21:50', '2021-12-06 09:21:50', '2021-12-06 09:20:07', NULL, NULL, NULL, NULL, NULL, '43.252.104.130', 2, 'example.png'),
(13, 'salesmanager@billing.ipn.net.id', 'f60892f360f52840c38696acbdb34f7f06c46cbe8736f4df494a4e79e5721f4b', 'salesmanager', 0, NULL, NULL, '2021-12-06 09:21:08', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'example.png'),
(14, 'putu@billing.ipn.net.id', '001657aaa735ea828aff57f34c4c021967b17810b4530c68c32ac38412172306', 'putu', 0, '2021-12-06 17:05:48', '2021-12-06 17:05:48', '2021-12-06 16:24:53', NULL, '2021-12-09 00:00:00', 'OCIWq4PBsAuioMhR', NULL, NULL, '127.0.0.1', 5, 'example.png'),
(15, 'utu.eka@gmail.com', '582c856bc692f5255d8f9fbc9ca55e25d97fc19b9c828228aeeb7f0925ca51f2', 'tumasdan', 0, NULL, NULL, '2022-07-20 09:05:30', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'example.png');

TRUNCATE TABLE `aauth_user_variables`;
TRUNCATE TABLE `accounts`;
INSERT INTO `accounts` (`id`, `acn`, `holder`, `adate`, `lastbal`, `code`) VALUES
(1, '12345678', 'Company Sales Account', '2018-01-01 00:00:00', '0.00', 'Company Sales Account');

TRUNCATE TABLE `api_keys`;
TRUNCATE TABLE `app_system`;
INSERT INTO `app_system` (`id`, `cname`, `address`, `city`, `region`, `country`, `postbox`, `phone`, `email`, `taxid`, `tax`, `currency`, `currency_format`, `prefix`, `dformat`, `zone`, `logo`, `lang`) VALUES
(1, 'PT. Internet Prima Nusantara', 'Jalan Bypass Ngurah Rai No 228', 'Denpasar', 'Bali', 'Indonesia', '80228', '082237777779', 'tirta@ipn.net.id', '422117135903000', 1, 'Rp', 0, 'SRN', 1, 'Asia/Singapore', '1638698727327126096.png', 'english');

TRUNCATE TABLE `bank_accounts`;
TRUNCATE TABLE `billing_terms`;
INSERT INTO `billing_terms` (`id`, `title`, `type`, `terms`) VALUES
(1, 'Payment on receipt', 0, 'Payment due on receipt');

TRUNCATE TABLE `ci_sessions`;
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0kasg5shrcga7cb6er6n8fbfbjokqid7', '127.0.0.1', 1638793832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383739333833313b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('1hge8c7tmb38ad5pn6t3ea0t6jffbie7', '127.0.0.1', 1638783549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738333534393b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('3a3j2023s7edksgn34854kis8m8hd0uk', '127.0.0.1', 1638793831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383739333833313b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('59tfhh88udsjd0rlr047mb695b7ha608', '127.0.0.1', 1638786442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738363434323b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('5ajs347joqdo3sqb0g627874gnmjbqjf', '127.0.0.1', 1638789007, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738393030373b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('9jf4hrhv514j52js7pgnbglgog94s20v', '127.0.0.1', 1638783195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738333139353b),
('ae2efeepiks8936r7vuccv6tmj0msdro', '127.0.0.1', 1638788297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738383239373b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('ckg5a09ikd0h71sqikc3qfrr6703odla', '127.0.0.1', 1638789979, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738393937393b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('gselpo9ant6sntip963mokonprq1otsa', '127.0.0.1', 1638796489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383739363438393b),
('i442lsrdpe095agtsr0nig91nuuvmqjm', '127.0.0.1', 1638787909, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738373930393b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('ioj1uifhh7av1589eoummckp4mckfknh', '127.0.0.1', 1638787200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738373230303b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('mrlo7s87fq5non63pnnkv026ogaoptp5', '127.0.0.1', 1638785972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738353937323b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('o47of60qu18ivtqmjbocl9ahia1c9q2b', '127.0.0.1', 1638790284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383739303238343b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('pdjb69bdb16qb9n485tp6qleqicn5uff', '127.0.0.1', 1658279130, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635383237393133303b),
('ph17fmvom3jqqc6htuvhfgcqq8eupsms', '127.0.0.1', 1638796489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383739363438393b),
('pt7aiu3hm9fuhdc8aln7ejai95u6r1ed', '127.0.0.1', 1638782969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738323936393b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('uipidi8828q63qj3d8n44m0as9goppt1', '127.0.0.1', 1638789317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738393331373b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('uqbueg7g8mjk199agcg9qb7urv4an9tm', '127.0.0.1', 1638787560, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738373536303b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b),
('vdc393i3d2phn8sqk2r4k00nf6bo14q5', '127.0.0.1', 1638788601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313633383738383630313b69647c733a323a223134223b757365726e616d657c733a343a2270757475223b656d61696c7c733a32333a22707574754062696c6c696e672e69706e2e6e65742e6964223b6c6f67676564696e7c623a313b);

TRUNCATE TABLE `conf`;
INSERT INTO `conf` (`id`, `bank`, `acid`, `ext1`, `ext2`, `recaptcha_p`, `captcha`, `recaptcha_s`) VALUES
(1, 1, 1, 'ltr', '0', '0', 0, '0');

TRUNCATE TABLE `corn_job`;
INSERT INTO `corn_job` (`id`, `cornkey`, `rec_email`, `email`, `rec_due`, `recemail`) VALUES
(1, '345648', 0, 0, 0, '0');

TRUNCATE TABLE `currencies`;
INSERT INTO `currencies` (`id`, `code`, `symbol`, `rate`, `thous`, `dpoint`, `decim`, `cpos`) VALUES
(1, 'GBP', 'X', '0.717', ',', '.', 2, 1);

TRUNCATE TABLE `customers`;
INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `city`, `region`, `country`, `postbox`, `email`, `picture`, `gid`, `company`, `taxid`, `name_s`, `phone_s`, `email_s`, `address_s`, `city_s`, `region_s`, `country_s`, `postbox_s`, `balance`) VALUES
(1, 'Gustirta', '081999888060', 'Jalan Pratu Rai Madra Gang Salak No 55', 'Denpasar', 'Bali', 'Indonesia', '80251', 'gustirta@yahoo.com', 'example.png', 1, '', '', 'Gustirta', '081999888060', 'gustirta@yahoo.com', 'Jalan Pratu Rai Madra Gang Salak No 55', 'Denpasar', 'Bali', 'Indonesia', '80251', 0.00),
(2, 'Julio', '083477447', 'Jalan pratu rai madea', 'Denpasar', 'Bali', 'Indonesia', '80351', 'julio@ipn.net.id', 'example.png', 1, '', '', 'Julio', '083477447', 'julio@ipn.net.id', 'Jalan pratu rai madea', 'Denpasar', 'Bali', 'Indonesia', '80351', 0.00),
(3, 'Client Satu', '08123456789', 'Jalan client satu', '', '', '', '', 'client1@billing.ipn.net.id', 'example.png', 1, '', '', 'Client Satu', '08123456789', 'client1@billing.ipn.net.id', 'Jalan client satu', '', '', '', '', 0.00);

TRUNCATE TABLE `customers_group`;
INSERT INTO `customers_group` (`id`, `title`, `summary`) VALUES
(1, 'Default Group', 'Default Group');

TRUNCATE TABLE `documents`;
TRUNCATE TABLE `employee_profile`;
INSERT INTO `employee_profile` (`id`, `username`, `name`, `address`, `city`, `region`, `country`, `postbox`, `phone`, `phonealt`, `picture`, `sign`) VALUES
(8, 'admin', 'BusinessOwner', 'Jalan Tukad Barito V Gang 1 No 2 Renon', 'Denpasar', NULL, 'Indonesia', '80222', '082237777779', '0', '16387012361649642087.jpeg', '16387013842078654122.png'),
(9, 'intaning', 'Ni Putu Ayu Suri Intaning Dewi', 'Jalan Tukad Barito V Gang 1 No 2 Renon', 'Denpasar', 'Bali', 'Indonesia', '80222', '081237777779', NULL, 'example.png', 'sign.png'),
(10, 'rina', 'Rina', '', '', '', '', '', '', NULL, 'example.png', 'sign.png'),
(11, 'inventory', 'User Inventory', 'Jalan Bypass Ngurah Rai No 228 Sanur', 'Denpasar', 'Bali', 'Indonesia', '', '082237777779', NULL, 'example.png', 'sign.png'),
(12, 'sales', 'Sales Team', 'Jalan Bypass Ngurah Rai No 228 Sanur', 'Denpasar', 'Bali', 'Indonesia', '', '082237777779', NULL, 'example.png', 'sign.png'),
(13, 'salesmanager', 'Sales Manager', 'Jalan Bypass Ngurah Rai No 228 Sanur', 'Denpasar', 'Bali', 'Indonesia', '', '082237777779', NULL, 'example.png', 'sign.png'),
(14, 'putu', 'putu', '', '', '', '', '', '', NULL, 'example.png', 'sign.png');

TRUNCATE TABLE `events`;
TRUNCATE TABLE `goals`;
INSERT INTO `goals` (`id`, `income`, `expense`, `sales`, `netincome`) VALUES
(1, 9999, 3333, 99999, 100000);

TRUNCATE TABLE `invoices`;
INSERT INTO `invoices` (`id`, `tid`, `invoicedate`, `invoiceduedate`, `subtotal`, `shipping`, `discount`, `tax`, `total`, `pmethod`, `notes`, `status`, `csd`, `eid`, `pamnt`, `items`, `taxstatus`, `discstatus`, `format_discount`, `refer`, `term`, `multi`) VALUES
(1, 1001, '2021-12-05', '2021-12-06', '250000.00', '0.00', '0.00', '0.00', '250000.00', NULL, '', 'due', 1, 8, '0.00', 1, '', 1, '%', '', 1, 0);

TRUNCATE TABLE `invoice_items`;
INSERT INTO `invoice_items` (`id`, `tid`, `pid`, `product`, `qty`, `price`, `tax`, `discount`, `subtotal`, `totaltax`, `totaldiscount`, `product_des`) VALUES
(1, 1001, 2, 'iHome 10 Mbps', 1, '250000.00', '0.00', '0.00', '250000.00', '0.00', '0.00', 'iHome 10 Mbps');

TRUNCATE TABLE `meta_data`;
TRUNCATE TABLE `milestones`;
TRUNCATE TABLE `notes`;
TRUNCATE TABLE `online_payment`;
INSERT INTO `online_payment` (`id`, `default_acid`, `currency_code`, `enable`, `bank`) VALUES
(1, 1, 'USD', 1, 1);

TRUNCATE TABLE `payment_gateways`;
INSERT INTO `payment_gateways` (`id`, `name`, `enable`, `key1`, `key2`, `currency`, `dev_mode`, `ord`, `surcharge`) VALUES
(1, 'Stripe', 'Yes', 'sk_test_secratekey', 'sk_test_publickey', 'USD', 'true', 1, '0.00'),
(2, 'Authorize.Net', 'Yes', 'TRANSACTIONKEY', 'LOGINID', 'AUD', 'true', 2, '0.00'),
(3, 'Pin Payments', 'Yes', 'TEST', 'none', 'AUD', 'true', 3, '0.00'),
(4, 'PayPal', 'Yes', 'MyPayPalClientId', 'MyPayPalSecret', 'USD', 'true', 4, '0.00'),
(5, 'SecurePay', 'Yes', 'ABC0001', 'abc123', 'AUD', 'true', 5, '0.00');

TRUNCATE TABLE `products`;
INSERT INTO `products` (`pid`, `pcat`, `warehouse`, `product_name`, `product_code`, `product_price`, `fproduct_price`, `taxrate`, `disrate`, `qty`, `product_des`, `alert`) VALUES
(1, 2, 2, 'Cable DC 2 Core 3 Slink', 'DC2C3S', '1000.00', '1000.00', '10.00', '0.00', 10000, 'Cable DC 2 Core 3 Slink', 1000),
(2, 3, 3, 'iHome 10 Mbps', 'i10', '250000.00', '250000.00', '10.00', '0.00', 499, 'iHome 10 Mbps', 10);

TRUNCATE TABLE `product_cat`;
INSERT INTO `product_cat` (`id`, `title`, `extra`) VALUES
(1, 'General', 'General Product Category'),
(2, 'Fiber Optic', 'Fiber Optic'),
(3, 'iHome', 'Paket Rasio 1 : 4'),
(4, 'Dedicated', 'Paket Dedicated');

TRUNCATE TABLE `product_warehouse`;
INSERT INTO `product_warehouse` (`id`, `title`, `extra`) VALUES
(1, 'Gudang IPN 1', 'Gudang Sanur'),
(2, 'Gudang IPN 2', 'Gudang Mengwi'),
(3, 'OLT Mengwi', 'Server OLT Mengwi');

TRUNCATE TABLE `projects`;
TRUNCATE TABLE `project_meta`;
TRUNCATE TABLE `purchase`;
TRUNCATE TABLE `purchase_items`;
TRUNCATE TABLE `quotes`;
TRUNCATE TABLE `quotes_items`;
TRUNCATE TABLE `rec_invoices`;
TRUNCATE TABLE `rec_invoice_items`;
TRUNCATE TABLE `reports`;
TRUNCATE TABLE `stock_return`;
TRUNCATE TABLE `stock_return_items`;
TRUNCATE TABLE `supplier`;
INSERT INTO `supplier` (`id`, `name`, `phone`, `address`, `city`, `region`, `country`, `postbox`, `email`, `picture`, `gid`, `company`, `taxid`) VALUES
(1, 'Suplier Satu', '08277668867', 'Jalan Suplier Satu', 'Denpasar', 'Bali', 'Indonesia', '', 'supliersatu@billing.ipn.net.id', 'example.png', 1, 'PT. Suplier Satu', '');

TRUNCATE TABLE `sys_smtp`;
INSERT INTO `sys_smtp` (`id`, `host`, `port`, `auth`, `auth_type`, `username`, `password`, `sender`) VALUES
(1, 'mail.ipn.net.id', 587, 'true', 'none', 'tirta@ipn.net.id', 'Gangg4-288', 'tirta@ipn.net.id');

TRUNCATE TABLE `tickets`;
INSERT INTO `tickets` (`id`, `subject`, `created`, `cid`, `status`, `section`) VALUES
(1, 'Internet intermiten', '2021-12-06 01:31:45', 1, 'Waiting', NULL);

TRUNCATE TABLE `tickets_th`;
INSERT INTO `tickets_th` (`id`, `tid`, `message`, `cid`, `eid`, `cdate`, `attach`) VALUES
(1, 1, '<p>Internet intermiten tolong benerin</p><p><br></p><p>thx<br></p>', 1, 0, '2021-12-06 01:31:45', '');

TRUNCATE TABLE `todolist`;
TRUNCATE TABLE `transactions`;
TRUNCATE TABLE `transactions_cat`;
INSERT INTO `transactions_cat` (`id`, `name`) VALUES
(1, 'Sales'),
(2, 'Purchase');

TRUNCATE TABLE `univarsal_api`;
INSERT INTO `univarsal_api` (`id`, `name`, `key1`, `key2`, `url`, `method`, `other`, `active`) VALUES
(1, 'Goo.gl URL Shortner', 'yourkey', '0', '0', '0', '0', 0),
(2, 'Twilio SMS API', 'ac', 'key', '+11234567', '0', '0', 1),
(3, 'Company Support', '1', '1', 'support@gmail.com', NULL, '<p>Your footer</p>', 1),
(4, 'Currency', '.', ',', '2', 'l', NULL, NULL),
(5, 'Exchange', 'key1', 'key2', 'USD', NULL, NULL, 1),
(6, 'New Invoice Notification', '[{Company}] Invoice #{BillNumber} Generated', NULL, NULL, NULL, 'Dear Client,\r\nWe are contacting you in regard to a payment received for invoice # {BillNumber} that has been created on your account. You may find the invoice with below link.\r\n\r\nView Invoice\r\n{URL}\r\n\r\nWe look forward to conducting future business with you.\r\n\r\nKind Regards,\r\nTeam\r\n{CompanyDetails}', NULL),
(7, 'Invoice Payment Reminder', '[{Company}] Invoice #{BillNumber} Payment Reminder', NULL, NULL, NULL, '<p>Dear Client,</p><p>We are contacting you in regard to a payment reminder of invoice # {BillNumber} that has been created on your account. You may find the invoice with below link. Please pay the balance of {Amount} due by {DueDate}.</p><p>\r\n\r\n<b>View Invoice</b></p><p><span style=\"font-size: 1rem;\">{URL}\r\n</span></p><p><span style=\"font-size: 1rem;\">\r\nWe look forward to conducting future business with you.</span></p><p><span style=\"font-size: 1rem;\">\r\n\r\nKind Regards,\r\n</span></p><p><span style=\"font-size: 1rem;\">\r\nTeam\r\n</span></p><p><span style=\"font-size: 1rem;\">\r\n{CompanyDetails}</span></p>', NULL),
(8, 'Invoice Refund Proceeded', '{Company} Invoice #{BillNumber} Refund Proceeded', NULL, NULL, NULL, '<p>Dear Client,</p><p>\r\nWe are contacting you in regard to a refund request processed for invoice # {BillNumber} that has been created on your account. You may find the invoice with below link. Please pay the balance of {Amount}  by {DueDate}.\r\n</p><p>\r\nView Invoice\r\n</p><p>{URL}\r\n</p><p>\r\nWe look forward to conducting future business with you.\r\n</p><p>\r\nKind Regards,\r\n</p><p>\r\nTeam\r\n\r\n{CompanyDetails}</p>', NULL),
(9, 'Invoice payment Received', '{Company} Payment Received for Invoice #{BillNumber}', NULL, NULL, NULL, '<p>Dear Client,\r\n</p><p>We are contacting you in regard to a payment received for invoice  # {BillNumber} that has been created on your account. You can find the invoice with below link.\r\n</p><p>\r\nView Invoice</p><p>\r\n{URL}\r\n</p><p>\r\nWe look forward to conducting future business with you.\r\n</p><p>\r\nKind Regards,\r\n</p><p>\r\nTeam\r\n</p><p>\r\n{CompanyDetails}</p>', NULL),
(10, 'Invoice Overdue Notice', '{Company} Invoice #{BillNumber} Generated for you', NULL, NULL, NULL, '<p>Dear Client,</p><p>\r\nWe are contacting you in regard to an Overdue Notice for invoice # {BillNumber} that has been created on your account. You may find the invoice with below link.\r\nPlease pay the balance of {Amount} due by {DueDate}.\r\n</p><p>View Invoice\r\n</p><p>{URL}\r\n</p><p>\r\nWe look forward to conducting future business with you.\r\n</p><p>\r\nKind Regards,\r\n</p><p>\r\nTeam</p><p>\r\n\r\n{CompanyDetails}</p>', NULL),
(11, 'Quote Proposal', '{Company} Quote #{BillNumber} Generated for you', NULL, NULL, NULL, '<p>Dear Client,</p><p>\r\nWe are contacting you in regard to a new quote # {BillNumber} that has been created on your account. You may find the quote with below link.\r\n</p><p>\r\nView Invoice\r\n</p><p>{URL}\r\n</p><p>\r\nWe look forward to conducting future business with you.</p><p>\r\n\r\nKind Regards,</p><p>\r\n\r\nTeam</p><p>\r\n\r\n{CompanyDetails}</p>', NULL),
(12, 'Purchase Order Request', '{Company} Purchase Order #{BillNumber} Requested', NULL, NULL, NULL, '<p>Dear Client,\r\n</p><p>We are contacting you in regard to a new purchase # {BillNumber} that has been requested on your account. You may find the order with below link. </p><p>\r\n\r\nView Invoice\r\n</p><p>{URL}</p><p>\r\n\r\nWe look forward to conducting future business with you.</p><p>\r\n\r\nKind Regards,\r\n</p><p>\r\nTeam</p><p>\r\n\r\n{CompanyDetails}</p>', NULL),
(13, 'Stock Return Mail', '{Company} New purchase return # {BillNumber}', NULL, NULL, NULL, 'Dear Client,\r\n\r\nWe are contacting you in regard to a new purchase return # {BillNumber} that has been requested on your account. You may find the order with below link.\r\n\r\nView Invoice\r\n\r\n{URL}\r\n\r\nWe look forward to conducting future business with you.\r\n\r\nKind Regards,\r\n\r\nTeam\r\n\r\n{CompanyDetails}', NULL),
(30, 'New Invoice Notification', NULL, NULL, NULL, NULL, 'Dear Customer, new invoice  # {BillNumber} generated. {URL} Regards', NULL),
(31, 'Invoice Payment Reminder', NULL, NULL, NULL, NULL, 'Dear Customer, Please make payment of invoice  # {BillNumber}. {URL} Regards', NULL),
(32, 'Invoice Refund Proceeded', NULL, NULL, NULL, NULL, 'Dear Customer, Refund generated of invoice # {BillNumber}. {URL} Regards', NULL),
(33, 'Invoice payment Received', NULL, NULL, NULL, NULL, 'Dear Customer, Payment received of invoice # {BillNumber}. {URL} Regards', NULL),
(34, 'Invoice Overdue Notice', NULL, NULL, NULL, NULL, 'Dear Customer, Dear Customer,Payment is overdue of invoice # {BillNumber}. {URL} Regards', NULL),
(35, 'Quote Proposal', NULL, NULL, NULL, NULL, 'Dear Customer, Dear Customer, a quote created for you # {BillNumber}. {URL} Regards', NULL),
(36, 'Purchase Order Request', NULL, NULL, NULL, NULL, 'Dear Customer, Dear, a purchased order for you # {BillNumber}. {URL} Regards', NULL),
(51, 'QT#', 'PO#', 'REC#', 'SR#', 'TRN#', 'SRN#', 1);

TRUNCATE TABLE `users`;
INSERT INTO `users` (`users_id`, `user_id`, `var_key`, `status`, `is_deleted`, `name`, `password`, `email`, `profile_pic`, `user_type`, `cid`) VALUES
(1, '1', NULL, 'active', '0', 'Gustirta', '$2y$10$LjZ8G4iYXpt5sSHoFC.8uu0t1mw87Ep3.qQdbYzVF6BsxboRvigRK', 'gustirta@yahoo.com', NULL, 'Member', 1),
(2, '1', NULL, 'active', '0', 'Julio', '$2y$10$lEKnuf8kO8zmfus8iJl03et3NlAX4cORjOfVKgfYDHk2p6uSYuVRm', 'julio@ipn.net.id', NULL, 'Member', 2),
(3, '1', NULL, 'active', '0', 'Client Satu', '$2y$10$RvcejbYlJvHmRR9j1Xjg4OsBo8x6AUldE14ky.tzLzUGBGS1rmwU.', 'client1@billing.ipn.net.id', NULL, 'Member', 3);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
