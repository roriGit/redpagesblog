# WordPress MySQL database migration
#
# Generated: Wednesday 28. June 2023 13:25 UTC
# Hostname: localhost
# Database: `asiwaxiz_redbgdb`
# URL: //redpages.solutions
# Path: /home/redpahaj/public_html/blog.redpages.solutions
# Tables: wp_actionscheduler_actions, wp_actionscheduler_claims, wp_actionscheduler_groups, wp_actionscheduler_logs, wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_rank_math_internal_links, wp_rank_math_internal_meta, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_wfblockediplog, wp_wfblocks7, wp_wfconfig, wp_wfcrawlers, wp_wffilechanges, wp_wffilemods, wp_wfhits, wp_wfhoover, wp_wfissues, wp_wfknownfilelist, wp_wflivetraffichuman, wp_wflocs, wp_wflogins, wp_wfls_2fa_secrets, wp_wfls_role_counts, wp_wfls_settings, wp_wfnotifications, wp_wfpendingissues, wp_wfreversecache, wp_wfsnipcache, wp_wfstatus, wp_wftrafficrates, wp_wfwaffailures, wp_wpforms_payment_meta, wp_wpforms_payments, wp_wpforms_tasks_meta, wp_yoast_indexable, wp_yoast_indexable_hierarchy, wp_yoast_migrations, wp_yoast_primary_term, wp_yoast_seo_links
# Table Prefix: wp_
# Post Types: revision, attachment, custom_css, customize_changeset, nav_menu_item, page, post, wpcf7_contact_form, wpforms
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_actionscheduler_actions`
#

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;


#
# Table structure of table `wp_actionscheduler_actions`
#

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_actions`
#
INSERT INTO `wp_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(104, 'action_scheduler/migration_hook', 'complete', '2023-06-21 11:52:47', '2023-06-21 11:52:47', 10, '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1687348367;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1687348367;s:19:"scheduled_timestamp";i:1687348367;s:9:"timestamp";i:1687348367;}', 1, 1, '2023-06-21 11:53:04', '2023-06-21 11:53:04', 0, NULL),
(105, 'action_scheduler/migration_hook', 'complete', '2023-06-22 08:11:54', '2023-06-22 08:11:54', 10, '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1687421514;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1687421514;s:19:"scheduled_timestamp";i:1687421514;s:9:"timestamp";i:1687421514;}', 1, 1, '2023-06-22 08:12:49', '2023-06-22 08:12:49', 0, NULL),
(106, 'wpforms_process_forms_locator_scan', 'complete', '2023-06-22 08:12:50', '2023-06-22 08:12:50', 10, '{"tasks_meta_id":1}', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1687421570;s:18:"\0*\0first_timestamp";i:1687421570;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1687421570;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1687421570;s:15:"first_timestamp";i:1687421570;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1687421570;s:19:"interval_in_seconds";i:86400;}', 2, 1, '2023-06-22 08:12:50', '2023-06-22 08:12:50', 0, NULL),
(107, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2023-06-25 00:29:16', '2023-06-25 00:29:16', 10, '{"tasks_meta_id":null}', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1687652956;s:18:"\0*\0first_timestamp";i:1687652956;s:13:"\0*\0recurrence";i:604800;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1687652956;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;s:19:"scheduled_timestamp";i:1687652956;s:15:"first_timestamp";i:1687652956;s:10:"recurrence";i:604800;s:15:"start_timestamp";i:1687652956;s:19:"interval_in_seconds";i:604800;}', 2, 1, '2023-06-28 13:10:45', '2023-06-28 13:10:45', 0, NULL),
(108, 'wpforms_process_forms_locator_scan', 'complete', '2023-06-23 08:12:50', '2023-06-23 08:12:50', 10, '{"tasks_meta_id":1}', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1687507970;s:18:"\0*\0first_timestamp";i:1687421570;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1687507970;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1687507970;s:15:"first_timestamp";i:1687421570;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1687507970;s:19:"interval_in_seconds";i:86400;}', 2, 1, '2023-06-28 13:10:44', '2023-06-28 13:10:44', 0, NULL),
(109, 'wpforms_admin_addons_cache_update', 'pending', '2023-06-29 08:13:17', '2023-06-29 08:13:17', 10, '{"tasks_meta_id":2}', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1688026397;s:18:"\0*\0first_timestamp";i:1688026397;s:13:"\0*\0recurrence";i:604800;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1688026397;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;s:19:"scheduled_timestamp";i:1688026397;s:15:"first_timestamp";i:1688026397;s:10:"recurrence";i:604800;s:15:"start_timestamp";i:1688026397;s:19:"interval_in_seconds";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(110, 'wpforms_admin_builder_templates_cache_update', 'pending', '2023-06-29 08:13:17', '2023-06-29 08:13:17', 10, '{"tasks_meta_id":3}', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1688026397;s:18:"\0*\0first_timestamp";i:1688026397;s:13:"\0*\0recurrence";i:604800;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1688026397;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;s:19:"scheduled_timestamp";i:1688026397;s:15:"first_timestamp";i:1688026397;s:10:"recurrence";i:604800;s:15:"start_timestamp";i:1688026397;s:19:"interval_in_seconds";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(111, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, '{"tasks_meta_id":4}', 'O:28:"ActionScheduler_NullSchedule":0:{}', 2, 1, '2023-06-22 08:14:56', '2023-06-22 08:14:56', 0, NULL),
(112, 'wpforms_process_forms_locator_scan', 'pending', '2023-06-29 13:10:44', '2023-06-29 13:10:44', 10, '{"tasks_meta_id":1}', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1688044244;s:18:"\0*\0first_timestamp";i:1687421570;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1688044244;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1688044244;s:15:"first_timestamp";i:1687421570;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1688044244;s:19:"interval_in_seconds";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(113, 'wpforms_email_summaries_fetch_info_blocks', 'pending', '2023-07-05 13:10:45', '2023-07-05 13:10:45', 10, '{"tasks_meta_id":null}', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1688562645;s:18:"\0*\0first_timestamp";i:1687652956;s:13:"\0*\0recurrence";i:604800;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1688562645;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;s:19:"scheduled_timestamp";i:1688562645;s:15:"first_timestamp";i:1687652956;s:10:"recurrence";i:604800;s:15:"start_timestamp";i:1688562645;s:19:"interval_in_seconds";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(114, 'wpforms_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, '{"tasks_meta_id":5}', 'O:28:"ActionScheduler_NullSchedule":0:{}', 2, 1, '2023-06-28 13:11:07', '2023-06-28 13:11:07', 0, NULL) ;

#
# End of data contents of table `wp_actionscheduler_actions`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_claims`
#

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;


#
# Table structure of table `wp_actionscheduler_claims`
#

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_claims`
#

#
# End of data contents of table `wp_actionscheduler_claims`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_groups`
#

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;


#
# Table structure of table `wp_actionscheduler_groups`
#

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_groups`
#
INSERT INTO `wp_actionscheduler_groups` ( `group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wpforms') ;

#
# End of data contents of table `wp_actionscheduler_groups`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_logs`
#

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;


#
# Table structure of table `wp_actionscheduler_logs`
#

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_logs`
#
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 104, 'action created', '2023-06-21 11:51:47', '2023-06-21 11:51:47'),
(2, 104, 'action started via WP Cron', '2023-06-21 11:53:04', '2023-06-21 11:53:04'),
(3, 104, 'action complete via WP Cron', '2023-06-21 11:53:04', '2023-06-21 11:53:04'),
(4, 105, 'action created', '2023-06-22 08:10:54', '2023-06-22 08:10:54'),
(5, 105, 'action started via WP Cron', '2023-06-22 08:12:49', '2023-06-22 08:12:49'),
(6, 105, 'action complete via WP Cron', '2023-06-22 08:12:49', '2023-06-22 08:12:49'),
(7, 106, 'action created', '2023-06-22 08:12:50', '2023-06-22 08:12:50'),
(8, 107, 'action created', '2023-06-22 08:12:50', '2023-06-22 08:12:50'),
(9, 106, 'action started via Async Request', '2023-06-22 08:12:50', '2023-06-22 08:12:50'),
(10, 106, 'action complete via Async Request', '2023-06-22 08:12:50', '2023-06-22 08:12:50'),
(11, 108, 'action created', '2023-06-22 08:12:50', '2023-06-22 08:12:50'),
(12, 109, 'action created', '2023-06-22 08:13:17', '2023-06-22 08:13:17'),
(13, 110, 'action created', '2023-06-22 08:13:17', '2023-06-22 08:13:17'),
(14, 111, 'action created', '2023-06-22 08:14:25', '2023-06-22 08:14:25'),
(15, 111, 'action started via WP Cron', '2023-06-22 08:14:56', '2023-06-22 08:14:56'),
(16, 111, 'action complete via WP Cron', '2023-06-22 08:14:56', '2023-06-22 08:14:56'),
(17, 108, 'action started via Async Request', '2023-06-28 13:10:44', '2023-06-28 13:10:44'),
(18, 108, 'action complete via Async Request', '2023-06-28 13:10:44', '2023-06-28 13:10:44'),
(19, 112, 'action created', '2023-06-28 13:10:44', '2023-06-28 13:10:44'),
(20, 107, 'action started via Async Request', '2023-06-28 13:10:44', '2023-06-28 13:10:44'),
(21, 107, 'action complete via Async Request', '2023-06-28 13:10:45', '2023-06-28 13:10:45'),
(22, 113, 'action created', '2023-06-28 13:10:45', '2023-06-28 13:10:45'),
(23, 114, 'action created', '2023-06-28 13:11:02', '2023-06-28 13:11:02'),
(24, 114, 'action started via WP Cron', '2023-06-28 13:11:07', '2023-06-28 13:11:07'),
(25, 114, 'action complete via WP Cron', '2023-06-28 13:11:07', '2023-06-28 13:11:07') ;

#
# End of data contents of table `wp_actionscheduler_logs`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-06-21 08:14:31', '2023-06-21 08:14:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://en.gravatar.com/">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://redpages.solutions', 'yes'),
(2, 'home', 'http://redpages.solutions', 'yes'),
(3, 'blogname', 'RedPage Consulting', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rori.madonko@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:119:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:39:"index.php?yoast-sitemap-xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:50:"media_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?media_tag=$matches[1]&feed=$matches[2]";s:45:"media_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?media_tag=$matches[1]&feed=$matches[2]";s:26:"media_tag/([^/]+)/embed/?$";s:42:"index.php?media_tag=$matches[1]&embed=true";s:38:"media_tag/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?media_tag=$matches[1]&paged=$matches[2]";s:20:"media_tag/([^/]+)/?$";s:31:"index.php?media_tag=$matches[1]";s:42:"taxopress_logs/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:52:"taxopress_logs/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:72:"taxopress_logs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"taxopress_logs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:67:"taxopress_logs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:"taxopress_logs/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:31:"taxopress_logs/([^/]+)/embed/?$";s:62:"index.php?post_type=taxopress_logs&name=$matches[1]&embed=true";s:35:"taxopress_logs/([^/]+)/trackback/?$";s:56:"index.php?post_type=taxopress_logs&name=$matches[1]&tb=1";s:43:"taxopress_logs/([^/]+)/page/?([0-9]{1,})/?$";s:69:"index.php?post_type=taxopress_logs&name=$matches[1]&paged=$matches[2]";s:50:"taxopress_logs/([^/]+)/comment-page-([0-9]{1,})/?$";s:69:"index.php?post_type=taxopress_logs&name=$matches[1]&cpage=$matches[2]";s:39:"taxopress_logs/([^/]+)(?:/([0-9]+))?/?$";s:68:"index.php?post_type=taxopress_logs&name=$matches[1]&page=$matches[2]";s:31:"taxopress_logs/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"taxopress_logs/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"taxopress_logs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"taxopress_logs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"taxopress_logs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"taxopress_logs/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:31:"backup-backup/backup-backup.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:27:"simple-tags/simple-tags.php";i:3;s:23:"wordfence/wordfence.php";i:4;s:24:"wordpress-seo/wp-seo.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";i:6;s:24:"wpforms-lite/wpforms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '0', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tech-blogging', 'yes'),
(41, 'stylesheet', 'tech-blogging', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:24:"wordpress-seo/wp-seo.php";s:14:"__return_false";s:31:"backup-backup/backup-backup.php";s:21:"bmi_uninstall_handler";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '11', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '', 'yes'),
(91, 'admin_email_lifespan', '1702887271', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:84:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:11:"simple_tags";b:1;s:17:"admin_simple_tags";b:1;s:23:"rank_math_edit_htaccess";b:1;s:16:"rank_math_titles";b:1;s:17:"rank_math_general";b:1;s:17:"rank_math_sitemap";b:1;s:21:"rank_math_404_monitor";b:1;s:22:"rank_math_link_builder";b:1;s:22:"rank_math_redirections";b:1;s:22:"rank_math_role_manager";b:1;s:19:"rank_math_analytics";b:1;s:23:"rank_math_site_analysis";b:1;s:25:"rank_math_onpage_analysis";b:1;s:24:"rank_math_onpage_general";b:1;s:25:"rank_math_onpage_advanced";b:1;s:24:"rank_math_onpage_snippet";b:1;s:23:"rank_math_onpage_social";b:1;s:20:"rank_math_content_ai";b:1;s:19:"rank_math_admin_bar";b:1;s:20:"wpseo_manage_options";b:1;s:23:"wf2fa_activate_2fa_self";b:1;s:25:"wf2fa_activate_2fa_others";b:1;s:21:"wf2fa_manage_settings";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:42:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:11:"simple_tags";b:1;s:23:"rank_math_site_analysis";b:1;s:25:"rank_math_onpage_analysis";b:1;s:24:"rank_math_onpage_general";b:1;s:24:"rank_math_onpage_snippet";b:1;s:23:"rank_math_onpage_social";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:14:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:25:"rank_math_onpage_analysis";b:1;s:24:"rank_math_onpage_general";b:1;s:24:"rank_math_onpage_snippet";b:1;s:23:"rank_math_onpage_social";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:44:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:11:"simple_tags";b:1;s:23:"rank_math_site_analysis";b:1;s:25:"rank_math_onpage_analysis";b:1;s:24:"rank_math_onpage_general";b:1;s:24:"rank_math_onpage_snippet";b:1;s:23:"rank_math_onpage_social";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;s:23:"view_site_health_checks";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:42:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:11:"simple_tags";b:1;s:23:"rank_math_site_analysis";b:1;s:25:"rank_math_onpage_analysis";b:1;s:24:"rank_math_onpage_general";b:1;s:24:"rank_math_onpage_snippet";b:1;s:23:"rank_math_onpage_social";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";i:5;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(105, 'cron', 'a:14:{i:1687958753;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1687958916;a:1:{s:21:"wordfence_ls_ntp_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1687958922;a:2:{s:20:"wordfence_daily_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:21:"wordfence_hourly_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1687961672;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1687983272;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1687983357;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1688026471;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1688026472;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1688026568;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1688027130;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1688039689;a:2:{s:13:"wpseo-reindex";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"wpseo_permalink_structure_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1688392800;a:1:{s:28:"wpforms_email_summaries_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:30:"wpforms_email_summaries_weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1688400000;a:1:{s:31:"wordfence_email_activity_report";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}s:7:"version";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1687335918;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(137, 'finished_updating_comment_type', '1', 'yes'),
(141, 'current_theme', 'Tech Blogging', 'yes'),
(142, 'theme_mods_tech-blogging', 'a:14:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1687335918;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}}}s:18:"custom_css_post_id";i:23;s:11:"custom_logo";i:8;s:16:"header_textcolor";s:5:"blank";s:13:"primary_color";s:7:"#db1f29";s:15:"button_bg_color";s:7:"#db1f29";s:19:"single_page_sidebar";s:2:"no";s:26:"tech_blogging_image_upload";s:71:"http://redpages.solutions/wp-content/uploads/2023/06/servicesbg2-01.png";s:24:"tech_blogging_body_fonts";s:18:"Montserrat:400,700";s:29:"tech_blogging_body_fonts_size";i:16;s:36:"tech_blogging_body_fonts_line_height";i:26;s:12:"header_image";s:13:"remove-header";}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'widget_tech-blogging-latest-post', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(155, 'site_logo', '8', 'yes'),
(166, 'category_children', 'a:0:{}', 'yes'),
(175, 'tech_blogging_admin_notice', '1', 'yes'),
(186, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(197, 'recently_activated', 'a:1:{s:29:"wp-subscribe/wp-subscribe.php";i:1687421078;}', 'yes'),
(202, 'simpletags', 'a:60:{s:17:"active_taxonomies";i:1;s:20:"active_terms_display";i:1;s:16:"active_post_tags";i:1;s:24:"active_related_posts_new";i:1;s:17:"active_auto_links";i:1;s:17:"active_auto_terms";i:1;s:20:"active_suggest_terms";i:1;s:16:"active_mass_edit";i:1;s:13:"active_manage";i:1;s:20:"active_related_posts";i:1;s:15:"active_autotags";i:1;s:15:"active_st_terms";i:1;s:18:"allow_embed_tcloud";i:1;s:14:"auto_link_tags";i:0;s:13:"auto_link_min";i:1;s:13:"auto_link_all";i:1;s:14:"auto_link_case";i:1;s:17:"auto_link_exclude";s:0:"";s:21:"auto_link_max_by_post";i:10;s:20:"auto_link_max_by_tag";i:1;s:18:"auto_link_priority";i:12;s:15:"auto_link_views";s:8:"singular";s:13:"auto_link_dom";i:0;s:15:"auto_link_title";s:20:"Posts tagged with %s";s:20:"auto_link_title_excl";i:0;s:7:"tt_feed";i:0;s:11:"tt_embedded";s:2:"no";s:12:"tt_separator";s:2:", ";s:9:"tt_before";s:6:"Tags: ";s:8:"tt_after";s:6:"<br />";s:13:"tt_notagstext";s:22:"No tags for this post.";s:9:"tt_number";i:0;s:11:"tt_inc_cats";i:0;s:10:"tt_xformat";s:64:"<a href="%tag_link%" title="%tag_name%" %tag_rel%>%tag_name%</a>";s:12:"tt_adv_usage";s:0:"";s:11:"rp_taxonomy";s:8:"post_tag";s:7:"rp_feed";i:0;s:11:"rp_embedded";s:2:"no";s:8:"rp_order";s:10:"count-desc";s:12:"rp_limit_qty";i:5;s:13:"rp_notagstext";s:17:"No related posts.";s:8:"rp_title";s:22:"<h4>Related posts</h4>";s:10:"rp_xformat";s:95:"<a href="%post_permalink%" title="%post_title% (%post_date%)">%post_title%</a> (%post_comment%)";s:12:"rp_adv_usage";s:0:"";s:14:"cloud_taxonomy";s:8:"post_tag";s:17:"cloud_selectionby";s:5:"count";s:15:"cloud_selection";s:4:"desc";s:13:"cloud_orderby";s:6:"random";s:11:"cloud_order";s:3:"asc";s:15:"cloud_limit_qty";i:45;s:16:"cloud_notagstext";s:8:"No tags.";s:11:"cloud_title";s:18:"<h4>Tag Cloud</h4>";s:12:"cloud_format";s:4:"flat";s:13:"cloud_xformat";s:155:"<a href="%tag_link%" id="tag-link-%tag_id%" class="st-tags t%tag_scale%" title="%tag_count% topics" %tag_rel% style="%tag_size% %tag_color%">%tag_name%</a>";s:15:"cloud_max_color";s:7:"#000000";s:15:"cloud_min_color";s:7:"#CCCCCC";s:14:"cloud_max_size";i:22;s:14:"cloud_min_size";i:8;s:10:"cloud_unit";s:2:"pt";s:15:"cloud_adv_usage";s:0:"";}', 'yes'),
(203, 'simpletags-version', '3.8.0', 'yes'),
(204, 'widget_simpletags', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(205, 'widget_simpletags-shortcode', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(206, 'widget_simpletags-posttags', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(207, 'widget_simpletags-relatedposts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(208, 'taxopress_reviews_installed_on', '2023-06-21 11:48:56', 'yes'),
(209, 'taxopress_autolinks', 'a:1:{i:1;a:20:{s:5:"title";s:9:"Auto link";s:8:"taxonomy";s:8:"post_tag";s:13:"autolink_case";s:4:"none";s:16:"autolink_display";s:12:"post_content";s:24:"autolink_title_attribute";s:20:"Posts tagged with %s";s:18:"autolink_usage_min";s:1:"1";s:17:"auto_link_exclude";s:0:"";s:18:"autolink_usage_max";s:2:"10";s:23:"autolink_same_usage_max";s:1:"1";s:17:"autolink_min_char";s:0:"";s:17:"autolink_max_char";s:0:"";s:22:"autolink_exclude_class";s:0:"";s:13:"hook_priority";s:2:"12";s:8:"embedded";a:0:{}s:14:"html_exclusion";a:0:{}s:16:"unattached_terms";s:1:"1";s:11:"ignore_case";s:1:"1";s:12:"autolink_dom";s:1:"1";s:13:"synonyms_link";s:1:"0";s:2:"ID";i:1;}}', 'yes'),
(210, 'taxopress_autolink_ids_increament', '1', 'yes'),
(211, 'taxopress_default_autolinks', '1', 'yes'),
(212, 'taxopress_autoterms', 'a:1:{i:1;a:14:{s:5:"title";s:9:"Auto term";s:8:"taxonomy";s:8:"post_tag";s:13:"autoterm_from";s:5:"posts";s:21:"autoterm_use_taxonomy";s:1:"1";s:15:"autoterm_useall";s:1:"1";s:16:"autoterm_useonly";s:1:"0";s:15:"autoterm_target";s:1:"0";s:13:"autoterm_word";s:1:"0";s:13:"autoterm_hash";s:1:"0";s:11:"terms_limit";s:1:"0";s:14:"specific_terms";a:0:{}s:10:"post_types";a:0:{}s:11:"post_status";a:1:{i:0;s:7:"publish";}s:2:"ID";i:1;}}', 'yes'),
(213, 'taxopress_autoterm_ids_increament', '1', 'yes'),
(214, 'taxopress_default_autoterms', '1', 'yes'),
(215, 'taxopress_suggestterms', 'a:1:{i:1;a:14:{s:5:"title";s:12:"Suggest Term";s:8:"taxonomy";s:8:"post_tag";s:6:"number";s:3:"100";s:7:"orderby";s:5:"count";s:5:"order";s:4:"desc";s:21:"enable_existing_terms";s:1:"1";s:22:"suggest_term_use_local";s:1:"1";s:26:"suggest_term_use_dandelion";s:1:"0";s:27:"suggest_term_use_opencalais";s:1:"0";s:20:"terms_opencalais_key";s:0:"";s:26:"terms_datatxt_access_token";s:0:"";s:28:"terms_datatxt_min_confidence";s:0:"";s:10:"post_types";a:1:{i:0;s:4:"post";}s:2:"ID";i:1;}}', 'yes'),
(216, 'taxopress_suggestterm_ids_increament', '1', 'yes'),
(217, 'taxopress_default_suggestterms', '1', 'yes'),
(218, 'taxopress_tagclouds', 'a:1:{i:1;a:18:{s:5:"title";s:13:"Terms Display";s:9:"post_type";s:0:"";s:8:"taxonomy";s:8:"post_tag";s:3:"max";s:2:"45";s:11:"selectionby";s:5:"count";s:9:"selection";s:4:"desc";s:7:"orderby";s:6:"random";s:5:"order";s:4:"desc";s:8:"smallest";s:1:"8";s:7:"largest";s:2:"22";s:4:"unit";s:2:"pt";s:6:"format";s:4:"flat";s:5:"color";s:4:"true";s:8:"mincolor";s:7:"#CCCCCC";s:8:"maxcolor";s:7:"#000000";s:7:"xformat";s:145:"<a href="%tag_link%" id="tag-link-%tag_id%" class="st-tags t%tag_scale%" title="%tag_count% topics" style="%tag_size% %tag_color%">%tag_name%</a>";s:10:"limit_days";s:1:"0";s:2:"ID";i:1;}}', 'yes'),
(219, 'taxopress_tagcloud_ids_increament', '1', 'yes'),
(220, 'taxopress_default_tagclouds', '1', 'yes'),
(221, 'taxopress_posttagss', 'a:1:{i:1;a:10:{s:5:"title";s:22:"Terms for Current Post";s:8:"taxonomy";s:8:"post_tag";s:8:"embedded";a:0:{}s:6:"number";s:1:"0";s:9:"separator";s:2:", ";s:5:"after";s:6:"<br />";s:6:"before";s:6:"Tags: ";s:9:"notagtext";s:22:"No tags for this post.";s:7:"xformat";s:54:"<a href="%tag_link%" title="%tag_name%">%tag_name%</a>";s:2:"ID";i:1;}}', 'yes'),
(222, 'taxopress_posttags_ids_increament', '1', 'yes'),
(223, 'taxopress_default_posttagss', '1', 'yes'),
(224, 'taxopress_relatedposts', 'a:1:{i:1;a:11:{s:5:"title";s:13:"Related Posts";s:12:"title_header";s:2:"h4";s:9:"post_type";s:4:"post";s:8:"taxonomy";s:8:"post_tag";s:6:"number";s:1:"5";s:10:"limit_days";s:1:"0";s:5:"order";s:10:"count-desc";s:11:"nopoststext";s:17:"No related posts.";s:7:"xformat";s:78:"<a href="%post_permalink%" title="%post_title% (%post_date%)">%post_title%</a>";s:8:"embedded";a:0:{}s:2:"ID";i:1;}}', 'yes'),
(225, 'taxopress_relatedpost_ids_increament', '1', 'yes'),
(226, 'taxopress_default_relatedposts', '1', 'yes'),
(230, 'action_scheduler_hybrid_store_demarkation', '103', 'yes'),
(231, 'schema-ActionScheduler_StoreSchema', '7.0.1687348306', 'yes'),
(232, 'schema-ActionScheduler_LoggerSchema', '3.0.1687348306', 'yes'),
(233, 'rank_math_known_post_types', 'a:3:{s:4:"post";s:4:"post";s:4:"page";s:4:"page";s:10:"attachment";s:10:"attachment";}', 'yes'),
(234, 'rank_math_modules', 'a:13:{i:0;s:12:"link-counter";i:1;s:9:"analytics";i:2;s:12:"seo-analysis";i:3;s:7:"sitemap";i:4;s:12:"rich-snippet";i:5;s:11:"woocommerce";i:6;s:10:"buddypress";i:7;s:7:"bbpress";i:8;s:3:"acf";i:9;s:11:"web-stories";i:10;s:10:"content-ai";i:11;s:16:"instant-indexing";i:12;s:9:"local-seo";}', 'yes'),
(235, 'rank-math-options-general', 'a:44:{s:19:"strip_category_base";s:3:"off";s:24:"attachment_redirect_urls";s:2:"on";s:27:"attachment_redirect_default";s:25:"http://redpages.solutions";s:23:"nofollow_external_links";s:3:"off";s:20:"nofollow_image_links";s:3:"off";s:25:"new_window_external_links";s:2:"on";s:11:"add_img_alt";s:3:"off";s:14:"img_alt_format";s:11:" %filename%";s:13:"add_img_title";s:3:"off";s:16:"img_title_format";s:22:"%title% %count(title)%";s:11:"breadcrumbs";s:3:"off";s:21:"breadcrumbs_separator";s:1:"-";s:16:"breadcrumbs_home";s:2:"on";s:22:"breadcrumbs_home_label";s:4:"Home";s:26:"breadcrumbs_archive_format";s:15:"Archives for %s";s:25:"breadcrumbs_search_format";s:14:"Results for %s";s:21:"breadcrumbs_404_label";s:25:"404 Error: page not found";s:31:"breadcrumbs_ancestor_categories";s:3:"off";s:21:"breadcrumbs_blog_page";s:3:"off";s:16:"404_monitor_mode";s:6:"simple";s:17:"404_monitor_limit";i:100;s:35:"404_monitor_ignore_query_parameters";s:2:"on";s:24:"redirections_header_code";s:3:"301";s:18:"redirections_debug";s:3:"off";s:23:"console_caching_control";s:2:"90";s:21:"console_email_reports";b:0;s:23:"console_email_frequency";s:7:"monthly";s:27:"link_builder_links_per_page";s:1:"7";s:29:"link_builder_links_per_target";s:1:"1";s:22:"wc_remove_product_base";s:3:"off";s:23:"wc_remove_category_base";s:3:"off";s:31:"wc_remove_category_parent_slugs";s:3:"off";s:18:"rss_before_content";s:0:"";s:17:"rss_after_content";s:0:"";s:19:"wc_remove_generator";s:2:"on";s:24:"remove_shop_snippet_data";s:2:"on";s:18:"frontend_seo_score";s:3:"off";s:29:"frontend_seo_score_post_types";a:1:{i:0;s:4:"post";}s:27:"frontend_seo_score_position";s:3:"top";s:10:"setup_mode";s:4:"easy";s:21:"content_ai_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:15:"analytics_stats";s:2:"on";s:15:"toc_block_title";s:17:"Table of Contents";s:20:"toc_block_list_style";s:2:"ul";}', 'yes'),
(236, 'rank-math-options-titles', 'a:114:{s:24:"noindex_empty_taxonomies";s:2:"on";s:15:"title_separator";s:1:"-";s:17:"capitalize_titles";s:3:"off";s:17:"twitter_card_type";s:19:"summary_large_image";s:19:"knowledgegraph_type";s:7:"company";s:19:"knowledgegraph_name";s:18:"RedPage Consulting";s:12:"website_name";s:18:"RedPage Consulting";s:19:"local_business_type";s:12:"Organization";s:20:"local_address_format";s:43:"{address} {locality}, {region} {postalcode}";s:13:"opening_hours";a:7:{i:0;a:2:{s:3:"day";s:6:"Monday";s:4:"time";s:11:"09:00-17:00";}i:1;a:2:{s:3:"day";s:7:"Tuesday";s:4:"time";s:11:"09:00-17:00";}i:2;a:2:{s:3:"day";s:9:"Wednesday";s:4:"time";s:11:"09:00-17:00";}i:3;a:2:{s:3:"day";s:8:"Thursday";s:4:"time";s:11:"09:00-17:00";}i:4;a:2:{s:3:"day";s:6:"Friday";s:4:"time";s:11:"09:00-17:00";}i:5;a:2:{s:3:"day";s:8:"Saturday";s:4:"time";s:11:"09:00-17:00";}i:6;a:2:{s:3:"day";s:6:"Sunday";s:4:"time";s:11:"09:00-17:00";}}s:20:"opening_hours_format";s:3:"off";s:14:"homepage_title";s:34:"%sitename% %page% %sep% %sitedesc%";s:20:"homepage_description";s:0:"";s:22:"homepage_custom_robots";s:3:"off";s:23:"disable_author_archives";s:3:"off";s:15:"url_author_base";s:6:"author";s:20:"author_custom_robots";s:2:"on";s:13:"author_robots";a:1:{i:0;s:7:"noindex";}s:20:"author_archive_title";s:30:"%name% %sep% %sitename% %page%";s:19:"author_add_meta_box";s:2:"on";s:21:"disable_date_archives";s:2:"on";s:18:"date_archive_title";s:30:"%date% %page% %sep% %sitename%";s:12:"search_title";s:38:"%search_query% %page% %sep% %sitename%";s:9:"404_title";s:31:"Page Not Found %sep% %sitename%";s:19:"date_archive_robots";a:1:{i:0;s:7:"noindex";}s:14:"noindex_search";s:2:"on";s:24:"noindex_archive_subpages";s:3:"off";s:26:"noindex_password_protected";s:3:"off";s:32:"pt_download_default_rich_snippet";s:7:"product";s:29:"author_slack_enhanced_sharing";s:2:"on";s:13:"pt_post_title";s:24:"%title% %sep% %sitename%";s:19:"pt_post_description";s:9:"%excerpt%";s:14:"pt_post_robots";a:0:{}s:21:"pt_post_custom_robots";s:3:"off";s:28:"pt_post_default_rich_snippet";s:7:"article";s:28:"pt_post_default_article_type";s:11:"BlogPosting";s:28:"pt_post_default_snippet_name";s:11:"%seo_title%";s:28:"pt_post_default_snippet_desc";s:17:"%seo_description%";s:30:"pt_post_slack_enhanced_sharing";s:2:"on";s:17:"pt_post_ls_use_fk";s:6:"titles";s:20:"pt_post_add_meta_box";s:2:"on";s:20:"pt_post_bulk_editing";s:7:"editing";s:24:"pt_post_link_suggestions";s:2:"on";s:24:"pt_post_primary_taxonomy";s:8:"category";s:13:"pt_page_title";s:24:"%title% %sep% %sitename%";s:19:"pt_page_description";s:9:"%excerpt%";s:14:"pt_page_robots";a:0:{}s:21:"pt_page_custom_robots";s:3:"off";s:28:"pt_page_default_rich_snippet";s:7:"article";s:28:"pt_page_default_article_type";s:7:"Article";s:28:"pt_page_default_snippet_name";s:11:"%seo_title%";s:28:"pt_page_default_snippet_desc";s:17:"%seo_description%";s:30:"pt_page_slack_enhanced_sharing";s:2:"on";s:17:"pt_page_ls_use_fk";s:6:"titles";s:20:"pt_page_add_meta_box";s:2:"on";s:20:"pt_page_bulk_editing";s:7:"editing";s:24:"pt_page_link_suggestions";s:2:"on";s:19:"pt_attachment_title";s:24:"%title% %sep% %sitename%";s:25:"pt_attachment_description";s:9:"%excerpt%";s:20:"pt_attachment_robots";a:1:{i:0;s:7:"noindex";}s:27:"pt_attachment_custom_robots";s:2:"on";s:34:"pt_attachment_default_rich_snippet";s:3:"off";s:34:"pt_attachment_default_article_type";s:7:"Article";s:34:"pt_attachment_default_snippet_name";s:11:"%seo_title%";s:34:"pt_attachment_default_snippet_desc";s:17:"%seo_description%";s:36:"pt_attachment_slack_enhanced_sharing";s:3:"off";s:26:"pt_attachment_add_meta_box";s:3:"off";s:16:"pt_product_title";s:24:"%title% %sep% %sitename%";s:22:"pt_product_description";s:9:"%excerpt%";s:17:"pt_product_robots";a:0:{}s:24:"pt_product_custom_robots";s:3:"off";s:31:"pt_product_default_rich_snippet";s:7:"product";s:31:"pt_product_default_article_type";s:7:"Article";s:31:"pt_product_default_snippet_name";s:11:"%seo_title%";s:31:"pt_product_default_snippet_desc";s:17:"%seo_description%";s:33:"pt_product_slack_enhanced_sharing";s:2:"on";s:20:"pt_product_ls_use_fk";s:6:"titles";s:23:"pt_product_add_meta_box";s:2:"on";s:23:"pt_product_bulk_editing";s:7:"editing";s:27:"pt_product_link_suggestions";s:2:"on";s:27:"pt_product_primary_taxonomy";s:11:"product_cat";s:18:"pt_web-story_title";s:24:"%title% %sep% %sitename%";s:24:"pt_web-story_description";s:9:"%excerpt%";s:19:"pt_web-story_robots";a:0:{}s:26:"pt_web-story_custom_robots";s:3:"off";s:33:"pt_web-story_default_rich_snippet";s:7:"article";s:33:"pt_web-story_default_article_type";s:7:"Article";s:33:"pt_web-story_default_snippet_name";s:11:"%seo_title%";s:33:"pt_web-story_default_snippet_desc";s:17:"%seo_description%";s:35:"pt_web-story_slack_enhanced_sharing";s:3:"off";s:25:"pt_web-story_add_meta_box";s:3:"off";s:18:"tax_category_title";s:23:"%term% %sep% %sitename%";s:19:"tax_category_robots";a:0:{}s:25:"tax_category_add_meta_box";s:2:"on";s:26:"tax_category_custom_robots";s:3:"off";s:24:"tax_category_description";s:18:"%term_description%";s:35:"tax_category_slack_enhanced_sharing";s:2:"on";s:18:"tax_post_tag_title";s:23:"%term% %sep% %sitename%";s:19:"tax_post_tag_robots";a:1:{i:0;s:7:"noindex";}s:25:"tax_post_tag_add_meta_box";s:2:"on";s:26:"tax_post_tag_custom_robots";s:2:"on";s:24:"tax_post_tag_description";s:18:"%term_description%";s:35:"tax_post_tag_slack_enhanced_sharing";s:2:"on";s:19:"tax_media_tag_title";s:23:"%term% %sep% %sitename%";s:20:"tax_media_tag_robots";a:0:{}s:26:"tax_media_tag_add_meta_box";s:2:"on";s:27:"tax_media_tag_custom_robots";s:3:"off";s:25:"tax_media_tag_description";s:18:"%term_description%";s:36:"tax_media_tag_slack_enhanced_sharing";s:2:"on";s:31:"remove_product_cat_snippet_data";s:2:"on";s:31:"remove_product_tag_snippet_data";s:2:"on";s:19:"knowledgegraph_logo";s:78:"http://redpages.solutions/wp-content/uploads/2023/06/cropped-redpages-logo.png";s:22:"knowledgegraph_logo_id";s:1:"8";s:28:"tax_post_format_add_meta_box";s:2:"on";}', 'yes'),
(237, 'rank-math-options-sitemap', 'a:18:{s:14:"items_per_page";i:200;s:14:"include_images";s:2:"on";s:22:"include_featured_image";s:3:"off";s:19:"ping_search_engines";s:2:"on";s:13:"exclude_roles";a:2:{s:11:"contributor";s:11:"Contributor";s:10:"subscriber";s:10:"Subscriber";}s:12:"html_sitemap";s:2:"on";s:20:"html_sitemap_display";s:9:"shortcode";s:17:"html_sitemap_sort";s:9:"published";s:23:"html_sitemap_seo_titles";s:6:"titles";s:15:"authors_sitemap";s:2:"on";s:15:"pt_post_sitemap";s:2:"on";s:15:"pt_page_sitemap";s:2:"on";s:21:"pt_attachment_sitemap";s:3:"off";s:18:"pt_product_sitemap";s:2:"on";s:20:"pt_web-story_sitemap";s:3:"off";s:20:"tax_category_sitemap";s:2:"on";s:20:"tax_post_tag_sitemap";s:3:"off";s:21:"tax_media_tag_sitemap";s:3:"off";}', 'yes'),
(238, 'rank-math-options-instant-indexing', 'a:2:{s:15:"bing_post_types";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:16:"indexnow_api_key";s:32:"348c68bdd2e641db8af426926d4d7ede";}', 'yes'),
(241, 'rank_math_version', '1.0.117.1', 'yes'),
(242, 'rank_math_db_version', '1', 'yes'),
(243, 'rank_math_install_date', '1687348306', 'yes'),
(245, 'action_scheduler_lock_async-request-runner', '1687958717', 'yes'),
(249, 'rank_math_notifications', 'a:0:{}', 'yes'),
(251, 'rank_math_registration_skip', '1', 'yes'),
(252, 'rank_math_review_notice_date', '1688557914', 'no'),
(253, 'rank_math_pro_notice_date', '1688212314', 'no'),
(254, 'rank_math_review_posts_converted', '1', 'yes'),
(256, 'rank_math_content_ai_viewed', '1', 'yes'),
(257, 'rank_math_wizard_completed', '1', 'yes'),
(262, 'rank_math_is_configured', '1', 'yes'),
(263, 'rank_math_viewed_seo_analyer', '1', 'no'),
(266, 'yoast_migrations_free', 'a:1:{s:7:"version";s:4:"20.9";}', 'yes'),
(267, 'wpseo', 'a:102:{s:8:"tracking";b:0;s:16:"toggled_tracking";b:0;s:22:"license_server_version";b:0;s:15:"ms_defaults_set";b:0;s:40:"ignore_search_engines_discouraged_notice";b:0;s:19:"indexing_first_time";b:1;s:16:"indexing_started";b:0;s:15:"indexing_reason";s:26:"permalink_settings_changed";s:29:"indexables_indexing_completed";b:1;s:13:"index_now_key";s:0:"";s:7:"version";s:4:"20.9";s:16:"previous_version";s:0:"";s:20:"disableadvanced_meta";b:1;s:30:"enable_headless_rest_endpoints";b:1;s:17:"ryte_indexability";b:0;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:34:"inclusive_language_analysis_active";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:16:"enable_index_now";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1687348489;s:13:"myyoast-oauth";b:0;s:26:"semrush_integration_active";b:1;s:14:"semrush_tokens";a:0:{}s:20:"semrush_country_code";s:2:"us";s:19:"permalink_structure";s:36:"/%year%/%monthnum%/%day%/%postname%/";s:8:"home_url";s:26:"https://redpages.solutions";s:18:"dynamic_permalinks";b:0;s:17:"category_base_url";s:0:"";s:12:"tag_base_url";s:0:"";s:21:"custom_taxonomy_slugs";a:2:{s:9:"media_tag";s:9:"media_tag";s:16:"wpforms_form_tag";s:16:"wpforms_form_tag";}s:29:"enable_enhanced_slack_sharing";b:1;s:25:"zapier_integration_active";b:0;s:19:"zapier_subscription";a:0:{}s:14:"zapier_api_key";s:0:"";s:23:"enable_metabox_insights";b:1;s:23:"enable_link_suggestions";b:1;s:26:"algolia_integration_active";b:0;s:14:"import_cursors";a:0:{}s:13:"workouts_data";a:1:{s:13:"configuration";a:1:{s:13:"finishedSteps";a:0:{}}}s:28:"configuration_finished_steps";a:3:{i:0;s:18:"siteRepresentation";i:1;s:14:"socialProfiles";i:2;s:19:"personalPreferences";}s:36:"dismiss_configuration_workout_notice";b:0;s:34:"dismiss_premium_deactivated_notice";b:0;s:34:"dismiss_old_premium_version_notice";s:0:"";s:19:"importing_completed";a:0:{}s:26:"wincher_integration_active";b:1;s:14:"wincher_tokens";a:0:{}s:36:"wincher_automatically_add_keyphrases";b:0;s:18:"wincher_website_id";s:0:"";s:28:"wordproof_integration_active";b:0;s:29:"wordproof_integration_changed";b:0;s:18:"first_time_install";b:0;s:34:"should_redirect_after_install_free";b:0;s:34:"activation_redirect_timestamp_free";i:1687348490;s:18:"remove_feed_global";b:0;s:27:"remove_feed_global_comments";b:0;s:25:"remove_feed_post_comments";b:0;s:19:"remove_feed_authors";b:0;s:22:"remove_feed_categories";b:0;s:16:"remove_feed_tags";b:0;s:29:"remove_feed_custom_taxonomies";b:0;s:22:"remove_feed_post_types";b:0;s:18:"remove_feed_search";b:0;s:21:"remove_atom_rdf_feeds";b:0;s:17:"remove_shortlinks";b:0;s:21:"remove_rest_api_links";b:0;s:20:"remove_rsd_wlw_links";b:0;s:19:"remove_oembed_links";b:0;s:16:"remove_generator";b:0;s:20:"remove_emoji_scripts";b:0;s:24:"remove_powered_by_header";b:0;s:22:"remove_pingback_header";b:0;s:28:"clean_campaign_tracking_urls";b:0;s:16:"clean_permalinks";b:0;s:32:"clean_permalinks_extra_variables";s:0:"";s:14:"search_cleanup";b:0;s:20:"search_cleanup_emoji";b:0;s:23:"search_cleanup_patterns";b:0;s:22:"search_character_limit";i:50;s:20:"deny_search_crawling";b:0;s:21:"deny_wp_json_crawling";b:0;s:27:"redirect_search_pretty_urls";b:0;s:29:"least_readability_ignore_list";a:0:{}s:27:"least_seo_score_ignore_list";a:0:{}s:23:"most_linked_ignore_list";a:0:{}s:24:"least_linked_ignore_list";a:0:{}s:28:"indexables_page_reading_list";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:"indexables_overview_state";s:21:"dashboard-not-visited";s:28:"last_known_public_post_types";a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:10:"attachment";}s:28:"last_known_public_taxonomies";a:4:{i:0;s:8:"category";i:1;s:8:"post_tag";i:2;s:11:"post_format";i:3;s:9:"media_tag";}s:23:"last_known_no_unindexed";a:6:{s:40:"wpseo_total_unindexed_post_type_archives";i:1687957857;s:31:"wpseo_unindexed_post_link_count";i:1687957857;s:31:"wpseo_unindexed_term_link_count";i:1687957857;s:27:"wpseo_total_unindexed_posts";i:1687352857;s:27:"wpseo_total_unindexed_terms";i:1687352857;s:35:"wpseo_total_unindexed_general_items";i:1687438647;}}', 'yes'),
(268, 'wpseo_titles', 'a:119:{s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:25:"social-title-author-wpseo";s:8:"%%name%%";s:26:"social-title-archive-wpseo";s:8:"%%date%%";s:31:"social-description-author-wpseo";s:0:"";s:32:"social-description-archive-wpseo";s:0:"";s:29:"social-image-url-author-wpseo";s:0:"";s:30:"social-image-url-archive-wpseo";s:0:"";s:28:"social-image-id-author-wpseo";i:0;s:29:"social-image-id-archive-wpseo";i:0;s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:1;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:2:"»";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:11:"person_logo";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:22:"company_alternate_name";s:0:"";s:17:"company_or_person";s:7:"company";s:25:"company_or_person_user_id";i:0;s:17:"stripcategorybase";b:0;s:26:"open_graph_frontpage_title";s:12:"%%sitename%%";s:25:"open_graph_frontpage_desc";s:0:"";s:26:"open_graph_frontpage_image";s:0:"";s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";i:0;s:21:"schema-page-type-post";s:7:"WebPage";s:24:"schema-article-type-post";s:7:"Article";s:17:"social-title-post";s:9:"%%title%%";s:23:"social-description-post";s:0:"";s:21:"social-image-url-post";s:0:"";s:20:"social-image-id-post";i:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";i:0;s:21:"schema-page-type-page";s:7:"WebPage";s:24:"schema-article-type-page";s:4:"None";s:17:"social-title-page";s:9:"%%title%%";s:23:"social-description-page";s:0:"";s:21:"social-image-url-page";s:0:"";s:20:"social-image-id-page";i:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";i:0;s:27:"schema-page-type-attachment";s:7:"WebPage";s:30:"schema-article-type-attachment";s:4:"None";s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:25:"social-title-tax-category";s:23:"%%term_title%% Archives";s:31:"social-description-tax-category";s:0:"";s:29:"social-image-url-tax-category";s:0:"";s:28:"social-image-id-tax-category";i:0;s:26:"taxonomy-category-ptparent";i:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:25:"social-title-tax-post_tag";s:23:"%%term_title%% Archives";s:31:"social-description-tax-post_tag";s:0:"";s:29:"social-image-url-tax-post_tag";s:0:"";s:28:"social-image-id-tax-post_tag";i:0;s:26:"taxonomy-post_tag-ptparent";i:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:28:"social-title-tax-post_format";s:23:"%%term_title%% Archives";s:34:"social-description-tax-post_format";s:0:"";s:32:"social-image-url-tax-post_format";s:0:"";s:31:"social-image-id-tax-post_format";i:0;s:29:"taxonomy-post_format-ptparent";i:0;s:19:"title-tax-media_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:22:"metadesc-tax-media_tag";s:0:"";s:29:"display-metabox-tax-media_tag";b:1;s:21:"noindex-tax-media_tag";b:0;s:26:"social-title-tax-media_tag";s:23:"%%term_title%% Archives";s:32:"social-description-tax-media_tag";s:0:"";s:30:"social-image-url-tax-media_tag";s:0:"";s:29:"social-image-id-tax-media_tag";i:0;s:27:"taxonomy-media_tag-ptparent";i:0;s:14:"person_logo_id";i:0;s:15:"company_logo_id";i:0;s:17:"company_logo_meta";b:0;s:16:"person_logo_meta";b:0;s:29:"open_graph_frontpage_image_id";i:0;}', 'yes'),
(269, 'wpseo_social', 'a:20:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:13:"wikipedia_url";s:0:"";s:17:"other_social_urls";a:0:{}s:12:"mastodon_url";s:0:"";}', 'yes'),
(317, 'wordfence_ls_version', '1.1.2', 'yes'),
(318, 'wfls_last_role_change', '1687354106', 'no'),
(319, 'wordfence_version', '7.9.3', 'yes'),
(320, 'wordfence_case', '1', 'yes'),
(321, 'wordfence_installed', '1', 'yes'),
(322, 'wordfenceActivated', '1', 'yes'),
(323, 'wf_plugin_act_error', '', 'yes'),
(382, 'wp_subscribe_activated', '1687420969', 'yes'),
(383, 'widget_wp_subscribe', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(384, 'wp_subscribe_notice_views', '3', 'yes'),
(389, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.7.7";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1687421392;s:7:"version";s:5:"5.7.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(390, 'wpforms_version', '1.8.2.1', 'yes'),
(391, 'wpforms_version_lite', '1.8.2.1', 'yes'),
(392, 'wpforms_activated', 'a:1:{s:4:"lite";i:1687421453;}', 'yes'),
(397, 'wpforms_versions_lite', 'a:8:{s:5:"1.5.9";i:0;s:7:"1.6.7.2";i:0;s:5:"1.6.8";i:0;s:5:"1.7.5";i:0;s:7:"1.7.5.1";i:0;s:5:"1.7.7";i:0;s:5:"1.8.2";i:0;s:7:"1.8.2.1";i:1687421454;}', 'yes'),
(398, 'widget_wpforms-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(399, 'wpforms_settings', 'a:3:{s:13:"modern-markup";s:1:"1";s:20:"modern-markup-is-set";b:1;s:26:"modern-markup-hide-setting";b:1;}', 'yes'),
(401, 'wpforms_admin_notices', 'a:1:{s:14:"review_request";a:2:{s:4:"time";i:1687421455;s:9:"dismissed";b:0;}}', 'yes'),
(402, '_wpforms_transient_timeout_addons.json', '1688026256', 'no'),
(403, '_wpforms_transient_addons.json', '1687421456', 'no'),
(405, '_wpforms_transient_timeout_docs.json', '1688026269', 'no'),
(406, '_wpforms_transient_docs.json', '1687421469', 'no'),
(407, '_wpforms_transient_timeout_templates.json', '1688026269', 'no'),
(408, '_wpforms_transient_templates.json', '1687421469', 'no'),
(409, 'wpforms_builder_opened_date', '1687421470', 'no'),
(410, 'wpforms_challenge', 'a:13:{s:6:"status";s:7:"started";s:4:"step";i:4;s:7:"user_id";i:1;s:7:"form_id";i:106;s:10:"embed_page";i:0;s:16:"embed_page_title";s:0:"";s:16:"started_date_gmt";s:19:"2023-06-22 08:58:54";s:17:"finished_date_gmt";s:0:"";s:13:"seconds_spent";i:170;s:12:"seconds_left";i:130;s:13:"feedback_sent";b:0;s:19:"feedback_contact_me";b:0;s:13:"window_closed";s:1:"1";}', 'yes'),
(411, '_wpforms_transient_timeout_4bf2a29bffb74b5530d89949041b535d.json', '1688026302', 'no'),
(412, '_wpforms_transient_4bf2a29bffb74b5530d89949041b535d.json', '1687421502', 'no'),
(413, 'wpforms_forms_first_created', '1687421505', 'no'),
(415, 'action_scheduler_migration_status', 'complete', 'yes'),
(416, 'wpforms_process_forms_locator_status', 'completed', 'yes'),
(419, 'wpforms_crypto_secret_key', 'TclXuIbSnVE6yPQflubVyK/AWX5AL4sjdcIoUs0Y63Q=', 'yes'),
(425, 'wpforms_notifications', 'a:4:{s:4:"feed";a:0:{}s:6:"events";a:6:{s:15:"welcome-message";a:6:{s:2:"id";s:15:"welcome-message";s:5:"title";s:19:"Welcome to WPForms!";s:7:"content";s:233:"We’re grateful that you chose WPForms for your website! Now that you’ve installed the plugin, you’re less than 5 minutes away from publishing your first form. To make it easy, we’ve got 600+ form templates to get you started!";s:4:"btns";a:2:{s:4:"main";a:2:{s:3:"url";s:66:"https://redpages.solutions/wp-admin/admin.php?page=wpforms-builder";s:4:"text";s:14:"Start Building";}s:3:"alt";a:2:{s:3:"url";s:163:"https://wpforms.com/docs/creating-first-form/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Welcome%20Read%20the%20Guide";s:4:"text";s:14:"Read the Guide";}}s:4:"type";a:7:{i:0;s:4:"lite";i:1;s:5:"basic";i:2;s:4:"plus";i:3;s:3:"pro";i:4;s:6:"agency";i:5;s:5:"elite";i:6;s:8:"ultimate";}s:5:"start";s:19:"2023-06-22 08:10:54";}s:22:"wp-mail-smtp-education";a:5:{s:2:"id";s:22:"wp-mail-smtp-education";s:5:"title";s:43:"Don’t Miss Your Form Notification Emails!";s:7:"content";s:260:"Did you know that many WordPress sites are not properly configured to send emails? With the free WP Mail SMTP plugin, you can easily optimize your site to send emails, avoid the spam folder, and make sure your emails land in the recipient’s inbox every time.";s:4:"btns";a:2:{s:4:"main";a:2:{s:3:"url";s:63:"https://redpages.solutions/wp-admin/admin.php?page=wpforms-smtp";s:4:"text";s:11:"Install Now";}s:3:"alt";a:2:{s:3:"url";s:195:"https://wpforms.com/docs/how-to-set-up-smtp-using-the-wp-mail-smtp-plugin/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=WP%20Mail%20SMTP%20Learn%20More";s:4:"text";s:10:"Learn More";}}s:5:"start";s:19:"2023-06-25 08:10:54";}s:15:"join-vip-circle";a:5:{s:2:"id";s:15:"join-vip-circle";s:5:"title";s:27:"Want to Be a VIP? Join Now!";s:7:"content";s:326:"Running a WordPress site can be challenging. But help is just around the corner! Our Facebook group contains tons of tips and help to get your business growing! When you join our VIP Circle, you’ll get instant access to tips, tricks, and answers from a community of loyal WPForms users. Best of all, membership is 100% free!";s:4:"btns";a:1:{s:4:"main";a:2:{s:3:"url";s:43:"https://www.facebook.com/groups/wpformsvip/";s:4:"text";s:8:"Join Now";}}s:5:"start";s:19:"2023-07-22 08:10:54";}s:14:"survey-reports";a:5:{s:2:"id";s:14:"survey-reports";s:5:"title";s:46:"Want to Know What Your Customers Really Think?";s:7:"content";s:334:"Nothing beats real feedback from your customers and visitors. That’s why many small businesses love our awesome Surveys and Polls addon. Instantly unlock full survey reporting right in your WordPress dashboard. And don’t forget: building a survey is easy with our pre-made templates, so you could get started within a few minutes!";s:4:"btns";a:2:{s:4:"main";a:1:{s:7:"license";a:5:{s:4:"lite";a:2:{s:3:"url";s:178:"https://wpforms.com/lite-upgrade/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Lite&utm_locale=en_US";s:4:"text";s:11:"Upgrade Now";}s:5:"basic";a:2:{s:3:"url";s:166:"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Basic";s:4:"text";s:11:"Upgrade Now";}s:4:"plus";a:2:{s:3:"url";s:166:"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Upgrade%20Basic";s:4:"text";s:11:"Upgrade Now";}s:3:"pro";a:2:{s:3:"url";s:65:"https://redpages.solutions/wp-admin/admin.php?page=wpforms-addons";s:4:"text";s:11:"Install Now";}s:5:"elite";a:2:{s:3:"url";s:65:"https://redpages.solutions/wp-admin/admin.php?page=wpforms-addons";s:4:"text";s:11:"Install Now";}}}s:3:"alt";a:2:{s:3:"url";s:202:"https://wpforms.com/docs/how-to-install-and-use-the-surveys-and-polls-addon/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Surveys%20and%20Polls%20Learn%20More";s:4:"text";s:10:"Learn More";}}s:5:"start";s:19:"2023-08-06 08:10:54";}s:16:"form-abandonment";a:5:{s:2:"id";s:16:"form-abandonment";s:5:"title";s:31:"Get More Leads From Your Forms!";s:7:"content";s:363:"Are your forms converting fewer visitors than you hoped? Often, visitors quit forms partway through. That can prevent you from getting all the leads you deserve to capture. With our Form Abandonment addon, you can capture partial entries even if your visitor didn’t hit Submit! From there, it’s easy to follow up with leads and turn them into loyal customers.";s:4:"btns";a:2:{s:4:"main";a:1:{s:7:"license";a:5:{s:4:"lite";a:2:{s:3:"url";s:175:"https://wpforms.com/lite-upgrade/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Lite&utm_locale=en_US";s:4:"text";s:11:"Upgrade Now";}s:5:"basic";a:2:{s:3:"url";s:163:"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Basic";s:4:"text";s:11:"Upgrade Now";}s:4:"plus";a:2:{s:3:"url";s:163:"https://wpforms.com/account/licenses/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Upgrade%20Basic";s:4:"text";s:11:"Upgrade Now";}s:3:"pro";a:2:{s:3:"url";s:65:"https://redpages.solutions/wp-admin/admin.php?page=wpforms-addons";s:4:"text";s:11:"Install Now";}s:5:"elite";a:2:{s:3:"url";s:65:"https://redpages.solutions/wp-admin/admin.php?page=wpforms-addons";s:4:"text";s:11:"Install Now";}}}s:3:"alt";a:2:{s:3:"url";s:201:"https://wpforms.com/docs/how-to-install-and-use-form-abandonment-with-wpforms/?utm_source=WordPress&utm_medium=Event%20Notification&utm_campaign=liteplugin&utm_content=Form%20Abandonment%20Learn%20More";s:4:"text";s:10:"Learn More";}}s:5:"start";s:19:"2023-08-21 08:10:54";}s:5:"ideas";a:5:{s:2:"id";s:5:"ideas";s:5:"title";s:36:"What’s Your Dream WPForms Feature?";s:7:"content";s:288:"If you could add just one feature to WPForms, what would it be? We want to know! Our team is busy surveying valued customers like you as we plan the year ahead. We’d love to know which features would take your business to the next level! Do you have a second to share your idea with us?";s:4:"btns";a:1:{s:4:"main";a:2:{s:3:"url";s:36:"https://wpforms.com/share-your-idea/";s:4:"text";s:15:"Share Your Idea";}}s:5:"start";s:19:"2023-10-20 08:10:54";}}s:9:"dismissed";a:0:{}s:6:"update";i:1687957867;}', 'yes'),
(500, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(544, 'wpforms_email_summaries_fetch_info_blocks_last_run', '1687957845', 'yes'),
(593, 'bmi_initial_installation_version', '1.2.9', 'yes'),
(595, 'analyst_cache', 's:6:"a:0:{}";', 'yes'),
(596, 'BMI::STORAGE::LOCAL::PATH', '/home/redpahaj/public_html/blog.redpages.solutions/wp-content/backup-migration', 'yes'),
(597, '_irb_h_bn_review', 'a:2:{s:5:"users";a:0:{}s:13:"backup-backup";i:1687958003;}', 'yes'),
(598, 'bmi_gdrive_banner_dismissed', '1', 'yes'),
(599, 'bmi_hotfixes', 'a:2:{i:0;s:14:"BMI_D20_M07_01";i:1;s:18:"BMI_D17_M12_Y21_02";}', 'yes'),
(619, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1687958740;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1687425621:1'),
(4, 7, '_wp_attached_file', '2023/06/redpages-logo.png'),
(5, 7, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:454;s:6:"height";i:69;s:4:"file";s:25:"2023/06/redpages-logo.png";s:8:"filesize";i:5071;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"redpages-logo-300x46.png";s:5:"width";i:300;s:6:"height";i:46;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7120;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"redpages-logo-150x69.png";s:5:"width";i:150;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1803;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:24:"redpages-logo-350x69.png";s:5:"width";i:350;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3804;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:24:"redpages-logo-380x69.png";s:5:"width";i:380;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4270;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:24:"redpages-logo-380x69.png";s:5:"width";i:380;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4270;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:24:"redpages-logo-120x69.png";s:5:"width";i:120;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1527;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 8, '_wp_attached_file', '2023/06/cropped-redpages-logo.png'),
(7, 8, '_wp_attachment_context', 'custom-logo'),
(8, 8, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:454;s:6:"height";i:69;s:4:"file";s:33:"2023/06/cropped-redpages-logo.png";s:8:"filesize";i:5174;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:32:"cropped-redpages-logo-300x46.png";s:5:"width";i:300;s:6:"height";i:46;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7120;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"cropped-redpages-logo-150x69.png";s:5:"width";i:150;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1803;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:32:"cropped-redpages-logo-350x69.png";s:5:"width";i:350;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3804;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:32:"cropped-redpages-logo-380x69.png";s:5:"width";i:380;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4270;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:32:"cropped-redpages-logo-380x69.png";s:5:"width";i:380;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4270;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:32:"cropped-redpages-logo-120x69.png";s:5:"width";i:120;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1527;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 9, '_edit_lock', '1687336315:1'),
(10, 10, '_wp_attached_file', '2023/06/Screenshot-2023-06-21-at-10.30.52.png'),
(11, 10, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:872;s:6:"height";i:828;s:4:"file";s:45:"2023/06/Screenshot-2023-06-21-at-10.30.52.png";s:8:"filesize";i:201038;s:5:"sizes";a:10:{s:6:"medium";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-300x285.png";s:5:"width";i:300;s:6:"height";i:285;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:45980;}s:9:"thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:13373;}s:12:"medium_large";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-768x729.png";s:5:"width";i:768;s:6:"height";i:729;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:218010;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:65783;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:70813;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:64854;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:153658;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-872x675.png";s:5:"width";i:872;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:88416;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-872x650.png";s:5:"width";i:872;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:86553;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:45:"Screenshot-2023-06-21-at-10.30.52-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:8991;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 11, '_wp_attached_file', '2023/06/cropped-Screenshot-2023-06-21-at-10.30.52.png'),
(13, 11, '_wp_attachment_context', 'site-icon'),
(14, 11, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:53:"2023/06/cropped-Screenshot-2023-06-21-at-10.30.52.png";s:8:"filesize";i:49931;s:5:"sizes";a:11:{s:6:"medium";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:49149;}s:9:"thumbnail";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:14994;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:63117;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:69104;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:60439;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-512x433.png";s:5:"width";i:512;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:42201;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:9801;}s:13:"site_icon-270";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:39100;}s:13:"site_icon-192";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:15357;}s:13:"site_icon-180";a:5:{s:4:"file";s:53:"cropped-Screenshot-2023-06-21-at-10.30.52-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:20242;}s:12:"site_icon-32";a:5:{s:4:"file";s:51:"cropped-Screenshot-2023-06-21-at-10.30.52-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1191;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 9, '_wp_trash_meta_status', 'publish'),
(16, 9, '_wp_trash_meta_time', '1687336318'),
(17, 12, '_wp_trash_meta_status', 'publish'),
(18, 12, '_wp_trash_meta_time', '1687336435'),
(19, 13, '_wp_trash_meta_status', 'publish'),
(20, 13, '_wp_trash_meta_time', '1687336473'),
(21, 14, '_wp_trash_meta_status', 'publish'),
(22, 14, '_wp_trash_meta_time', '1687336514'),
(23, 15, '_wp_attached_file', '2023/06/servicesbg2-01.png'),
(24, 15, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1250;s:6:"height";i:1249;s:4:"file";s:26:"2023/06/servicesbg2-01.png";s:8:"filesize";i:660120;s:5:"sizes";a:12:{s:6:"medium";a:5:{s:4:"file";s:26:"servicesbg2-01-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:79686;}s:5:"large";a:5:{s:4:"file";s:28:"servicesbg2-01-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:491722;}s:9:"thumbnail";a:5:{s:4:"file";s:26:"servicesbg2-01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:27085;}s:12:"medium_large";a:5:{s:4:"file";s:26:"servicesbg2-01-768x767.png";s:5:"width";i:768;s:6:"height";i:767;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:517346;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:26:"servicesbg2-01-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:118673;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:26:"servicesbg2-01-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:131390;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:26:"servicesbg2-01-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:125298;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:26:"servicesbg2-01-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:361897;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:27:"servicesbg2-01-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:712801;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:26:"servicesbg2-01-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:556339;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:28:"servicesbg2-01-1250x1080.png";s:5:"width";i:1250;s:6:"height";i:1080;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:671817;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:26:"servicesbg2-01-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:18457;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 16, '_edit_lock', '1687337117:1'),
(26, 16, '_wp_trash_meta_status', 'publish'),
(27, 16, '_wp_trash_meta_time', '1687337118'),
(28, 17, '_edit_lock', '1687337245:1'),
(29, 17, '_wp_trash_meta_status', 'publish'),
(30, 17, '_wp_trash_meta_time', '1687337267'),
(31, 18, '_wp_attached_file', '2023/06/servicesbg2-01-1.png'),
(32, 18, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1250;s:6:"height";i:1249;s:4:"file";s:28:"2023/06/servicesbg2-01-1.png";s:8:"filesize";i:660120;s:5:"sizes";a:12:{s:6:"medium";a:5:{s:4:"file";s:28:"servicesbg2-01-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:79686;}s:5:"large";a:5:{s:4:"file";s:30:"servicesbg2-01-1-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:491722;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:27085;}s:12:"medium_large";a:5:{s:4:"file";s:28:"servicesbg2-01-1-768x767.png";s:5:"width";i:768;s:6:"height";i:767;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:517346;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:28:"servicesbg2-01-1-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:118673;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-1-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:131390;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-1-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:125298;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:28:"servicesbg2-01-1-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:361897;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:29:"servicesbg2-01-1-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:712801;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:28:"servicesbg2-01-1-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:556339;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:30:"servicesbg2-01-1-1250x1080.png";s:5:"width";i:1250;s:6:"height";i:1080;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:671817;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:28:"servicesbg2-01-1-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:18457;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 19, '_wp_attached_file', '2023/06/arrows.png'),
(34, 19, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2881;s:6:"height";i:389;s:4:"file";s:18:"2023/06/arrows.png";s:8:"filesize";i:16203;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:17:"arrows-300x41.png";s:5:"width";i:300;s:6:"height";i:41;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:9400;}s:5:"large";a:5:{s:4:"file";s:19:"arrows-1024x138.png";s:5:"width";i:1024;s:6:"height";i:138;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:83008;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"arrows-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:15931;}s:12:"medium_large";a:5:{s:4:"file";s:18:"arrows-768x104.png";s:5:"width";i:768;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:51326;}s:9:"1536x1536";a:5:{s:4:"file";s:19:"arrows-1536x207.png";s:5:"width";i:1536;s:6:"height";i:207;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:198361;}s:9:"2048x2048";a:5:{s:4:"file";s:19:"arrows-2048x277.png";s:5:"width";i:2048;s:6:"height";i:277;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:230565;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:18:"arrows-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:70125;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:18:"arrows-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:86044;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:18:"arrows-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:74704;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:18:"arrows-770x389.png";s:5:"width";i:770;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:11763;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:19:"arrows-1200x389.png";s:5:"width";i:1200;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:17182;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:18:"arrows-930x389.png";s:5:"width";i:930;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:13795;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:19:"arrows-1920x389.png";s:5:"width";i:1920;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:25445;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:18:"arrows-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10122;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 20, '_wp_attached_file', '2023/06/cropped-arrows.png'),
(36, 20, '_wp_attachment_context', 'custom-header'),
(37, 20, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1920;s:6:"height";i:399;s:4:"file";s:26:"2023/06/cropped-arrows.png";s:8:"filesize";i:398345;s:5:"sizes";a:12:{s:6:"medium";a:5:{s:4:"file";s:25:"cropped-arrows-300x62.png";s:5:"width";i:300;s:6:"height";i:62;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5046;}s:5:"large";a:5:{s:4:"file";s:27:"cropped-arrows-1024x213.png";s:5:"width";i:1024;s:6:"height";i:213;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:78670;}s:9:"thumbnail";a:5:{s:4:"file";s:26:"cropped-arrows-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:6168;}s:12:"medium_large";a:5:{s:4:"file";s:26:"cropped-arrows-768x160.png";s:5:"width";i:768;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:37632;}s:9:"1536x1536";a:5:{s:4:"file";s:27:"cropped-arrows-1536x319.png";s:5:"width";i:1536;s:6:"height";i:319;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:176144;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:26:"cropped-arrows-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:58899;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:26:"cropped-arrows-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:65176;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:26:"cropped-arrows-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:54404;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:26:"cropped-arrows-770x399.png";s:5:"width";i:770;s:6:"height";i:399;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:177662;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:27:"cropped-arrows-1200x399.png";s:5:"width";i:1200;s:6:"height";i:399;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:264178;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:26:"cropped-arrows-930x399.png";s:5:"width";i:930;s:6:"height";i:399;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:209996;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:26:"cropped-arrows-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3564;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:19;}'),
(40, 21, '_edit_lock', '1687337422:1'),
(41, 21, '_wp_trash_meta_status', 'publish'),
(42, 21, '_wp_trash_meta_time', '1687337423'),
(43, 22, '_edit_lock', '1687337812:1'),
(44, 22, '_wp_trash_meta_status', 'publish'),
(45, 22, '_wp_trash_meta_time', '1687337823'),
(46, 25, '_wp_trash_meta_status', 'publish'),
(47, 25, '_wp_trash_meta_time', '1687337856'),
(48, 27, '_wp_trash_meta_status', 'publish'),
(49, 27, '_wp_trash_meta_time', '1687337929'),
(50, 2, '_wp_trash_meta_status', 'publish'),
(51, 2, '_wp_trash_meta_time', '1687337948'),
(52, 2, '_wp_desired_post_slug', 'sample-page'),
(53, 30, '_wp_trash_meta_status', 'publish'),
(54, 30, '_wp_trash_meta_time', '1687338067'),
(55, 1, '_edit_lock', '1687355167:1'),
(56, 32, '_wp_attached_file', '2023/06/pexels-danny-meneses-943096-2-scaled-e1687338546520.jpg'),
(57, 32, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1798;s:6:"height";i:403;s:4:"file";s:63:"2023/06/pexels-danny-meneses-943096-2-scaled-e1687338546520.jpg";s:8:"filesize";i:326951;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:62:"pexels-danny-meneses-943096-2-scaled-e1687338546520-300x67.jpg";s:5:"width";i:300;s:6:"height";i:67;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4539;}s:5:"large";a:5:{s:4:"file";s:64:"pexels-danny-meneses-943096-2-scaled-e1687338546520-1024x230.jpg";s:5:"width";i:1024;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25251;}s:9:"thumbnail";a:5:{s:4:"file";s:63:"pexels-danny-meneses-943096-2-scaled-e1687338546520-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6234;}s:12:"medium_large";a:5:{s:4:"file";s:63:"pexels-danny-meneses-943096-2-scaled-e1687338546520-768x172.jpg";s:5:"width";i:768;s:6:"height";i:172;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16571;}s:9:"1536x1536";a:5:{s:4:"file";s:64:"pexels-danny-meneses-943096-2-scaled-e1687338546520-1536x344.jpg";s:5:"width";i:1536;s:6:"height";i:344;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:46394;}s:9:"2048x2048";a:5:{s:4:"file";s:43:"pexels-danny-meneses-943096-2-2048x1365.jpg";s:5:"width";i:2048;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:214499;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:63:"pexels-danny-meneses-943096-2-scaled-e1687338546520-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18353;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:63:"pexels-danny-meneses-943096-2-scaled-e1687338546520-380x360.jpg";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20120;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:63:"pexels-danny-meneses-943096-2-scaled-e1687338546520-380x320.jpg";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18818;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:63:"pexels-danny-meneses-943096-2-scaled-e1687338546520-770x403.jpg";s:5:"width";i:770;s:6:"height";i:403;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39057;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:64:"pexels-danny-meneses-943096-2-scaled-e1687338546520-1200x403.jpg";s:5:"width";i:1200;s:6:"height";i:403;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:50975;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:63:"pexels-danny-meneses-943096-2-scaled-e1687338546520-930x403.jpg";s:5:"width";i:930;s:6:"height";i:403;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44873;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:43:"pexels-danny-meneses-943096-2-1920x1080.jpg";s:5:"width";i:1920;s:6:"height";i:1080;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:155569;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:63:"pexels-danny-meneses-943096-2-scaled-e1687338546520-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4684;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:33:"pexels-danny-meneses-943096-2.jpg";}'),
(60, 1, '_thumbnail_id', '11'),
(65, 32, '_wp_attachment_backup_sizes', 'a:15:{s:9:"full-orig";a:3:{s:5:"width";i:2560;s:6:"height";i:1707;s:4:"file";s:40:"pexels-danny-meneses-943096-2-scaled.jpg";}s:14:"thumbnail-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4939;}s:11:"medium-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9743;}s:17:"medium_large-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40583;}s:10:"large-orig";a:5:{s:4:"file";s:42:"pexels-danny-meneses-943096-2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:64587;}s:14:"1536x1536-orig";a:5:{s:4:"file";s:43:"pexels-danny-meneses-943096-2-1536x1024.jpg";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:126242;}s:14:"2048x2048-orig";a:5:{s:4:"file";s:43:"pexels-danny-meneses-943096-2-2048x1365.jpg";s:5:"width";i:2048;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:214499;}s:35:"tech-blogging-thumbnail-mobile-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18156;}s:33:"tech-blogging-list-thumbnail-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-380x360.jpg";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19791;}s:33:"tech-blogging-grid-thumbnail-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-380x320.jpg";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17551;}s:35:"tech-blogging-thumbnail-medium-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-770x433.jpg";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32867;}s:34:"tech-blogging-thumbnail-large-orig";a:5:{s:4:"file";s:42:"pexels-danny-meneses-943096-2-1200x675.jpg";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:67102;}s:37:"tech-blogging-thumbnail-featured-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-930x650.jpg";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:58834;}s:30:"tech-blogging-header-full-orig";a:5:{s:4:"file";s:43:"pexels-danny-meneses-943096-2-1920x1080.jpg";s:5:"width";i:1920;s:6:"height";i:1080;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:155569;}s:43:"tech-blogging-latest-post-widget-thumb-orig";a:5:{s:4:"file";s:41:"pexels-danny-meneses-943096-2-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3631;}}'),
(66, 34, '_wp_trash_meta_status', 'publish'),
(67, 34, '_wp_trash_meta_time', '1687338952'),
(68, 36, '_wp_trash_meta_status', 'publish'),
(69, 36, '_wp_trash_meta_time', '1687338967'),
(70, 38, '_wp_trash_meta_status', 'publish'),
(71, 38, '_wp_trash_meta_time', '1687342705'),
(72, 40, '_wp_trash_meta_status', 'publish'),
(73, 40, '_wp_trash_meta_time', '1687342813'),
(74, 42, '_edit_lock', '1687342875:1'),
(75, 42, '_wp_trash_meta_status', 'publish'),
(76, 42, '_wp_trash_meta_time', '1687342891'),
(77, 8, '_oembed_ddc523f021aad4a83f4dc9154129212e', '{{unknown}}'),
(80, 46, '_wp_attached_file', '2023/06/servicesbg2-01-2.png'),
(81, 46, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1250;s:6:"height";i:1293;s:4:"file";s:28:"2023/06/servicesbg2-01-2.png";s:8:"filesize";i:660617;s:5:"sizes";a:12:{s:6:"medium";a:5:{s:4:"file";s:28:"servicesbg2-01-2-290x300.png";s:5:"width";i:290;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:84087;}s:5:"large";a:5:{s:4:"file";s:29:"servicesbg2-01-2-990x1024.png";s:5:"width";i:990;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:733881;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:23700;}s:12:"medium_large";a:5:{s:4:"file";s:28:"servicesbg2-01-2-768x794.png";s:5:"width";i:768;s:6:"height";i:794;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:528359;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:28:"servicesbg2-01-2-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:98924;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-2-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:131537;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-2-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:125649;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:28:"servicesbg2-01-2-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:365819;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:29:"servicesbg2-01-2-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:722967;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:28:"servicesbg2-01-2-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:559971;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:30:"servicesbg2-01-2-1250x1080.png";s:5:"width";i:1250;s:6:"height";i:1080;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:673148;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:28:"servicesbg2-01-2-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:17516;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(82, 47, '_wp_attached_file', '2023/06/arrows-1.png'),
(83, 47, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2881;s:6:"height";i:389;s:4:"file";s:20:"2023/06/arrows-1.png";s:8:"filesize";i:16203;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:19:"arrows-1-300x41.png";s:5:"width";i:300;s:6:"height";i:41;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:9400;}s:5:"large";a:5:{s:4:"file";s:21:"arrows-1-1024x138.png";s:5:"width";i:1024;s:6:"height";i:138;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:83008;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"arrows-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:15931;}s:12:"medium_large";a:5:{s:4:"file";s:20:"arrows-1-768x104.png";s:5:"width";i:768;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:51326;}s:9:"1536x1536";a:5:{s:4:"file";s:21:"arrows-1-1536x207.png";s:5:"width";i:1536;s:6:"height";i:207;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:198361;}s:9:"2048x2048";a:5:{s:4:"file";s:21:"arrows-1-2048x277.png";s:5:"width";i:2048;s:6:"height";i:277;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:230565;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:20:"arrows-1-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:70125;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:20:"arrows-1-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:86044;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:20:"arrows-1-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:74704;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:20:"arrows-1-770x389.png";s:5:"width";i:770;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:11763;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:21:"arrows-1-1200x389.png";s:5:"width";i:1200;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:17182;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:20:"arrows-1-930x389.png";s:5:"width";i:930;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:13795;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:21:"arrows-1-1920x389.png";s:5:"width";i:1920;s:6:"height";i:389;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:25445;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:20:"arrows-1-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10122;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(84, 48, '_wp_attached_file', '2023/06/BenjaminAgbalajobi.png'),
(85, 48, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:481;s:6:"height";i:720;s:4:"file";s:30:"2023/06/BenjaminAgbalajobi.png";s:8:"filesize";i:530064;s:5:"sizes";a:9:{s:6:"medium";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-200x300.png";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:87998;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:36816;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:176166;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:195332;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:174556;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-481x433.png";s:5:"width";i:481;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:325025;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-481x675.png";s:5:"width";i:481;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:485583;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-481x650.png";s:5:"width";i:481;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:469741;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:30:"BenjaminAgbalajobi-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:24610;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(86, 49, '_wp_attached_file', '2023/06/cloud.png'),
(87, 49, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1314;s:6:"height";i:942;s:4:"file";s:17:"2023/06/cloud.png";s:8:"filesize";i:847552;s:5:"sizes";a:11:{s:6:"medium";a:5:{s:4:"file";s:17:"cloud-300x215.png";s:5:"width";i:300;s:6:"height";i:215;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:57586;}s:5:"large";a:5:{s:4:"file";s:18:"cloud-1024x734.png";s:5:"width";i:1024;s:6:"height";i:734;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:492480;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"cloud-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:26325;}s:12:"medium_large";a:5:{s:4:"file";s:17:"cloud-768x551.png";s:5:"width";i:768;s:6:"height";i:551;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:297036;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:17:"cloud-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:117734;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:17:"cloud-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:126880;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:17:"cloud-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:109249;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:17:"cloud-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:289872;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:18:"cloud-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:630881;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:17:"cloud-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:415445;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:17:"cloud-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:17443;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(88, 50, '_wp_attached_file', '2023/06/dg-aug.png'),
(89, 50, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2881;s:6:"height";i:1586;s:4:"file";s:18:"2023/06/dg-aug.png";s:8:"filesize";i:22540;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:18:"dg-aug-300x165.png";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:21044;}s:5:"large";a:5:{s:4:"file";s:19:"dg-aug-1024x564.png";s:5:"width";i:1024;s:6:"height";i:564;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:211212;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"dg-aug-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:8213;}s:12:"medium_large";a:5:{s:4:"file";s:18:"dg-aug-768x423.png";s:5:"width";i:768;s:6:"height";i:423;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:150627;}s:9:"1536x1536";a:5:{s:4:"file";s:19:"dg-aug-1536x846.png";s:5:"width";i:1536;s:6:"height";i:846;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:681498;}s:9:"2048x2048";a:5:{s:4:"file";s:20:"dg-aug-2048x1127.png";s:5:"width";i:2048;s:6:"height";i:1127;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1069263;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:18:"dg-aug-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:53748;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:18:"dg-aug-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:57911;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:18:"dg-aug-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:53248;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:18:"dg-aug-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:107242;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:19:"dg-aug-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:107740;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:18:"dg-aug-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:298279;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:20:"dg-aug-1920x1080.png";s:5:"width";i:1920;s:6:"height";i:1080;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:78658;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:18:"dg-aug-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4221;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(90, 51, '_wp_attached_file', '2023/06/logo.png'),
(91, 51, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1306;s:6:"height";i:223;s:4:"file";s:16:"2023/06/logo.png";s:8:"filesize";i:14526;s:5:"sizes";a:11:{s:6:"medium";a:5:{s:4:"file";s:15:"logo-300x51.png";s:5:"width";i:300;s:6:"height";i:51;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7700;}s:5:"large";a:5:{s:4:"file";s:17:"logo-1024x175.png";s:5:"width";i:1024;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:54253;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7894;}s:12:"medium_large";a:5:{s:4:"file";s:16:"logo-768x131.png";s:5:"width";i:768;s:6:"height";i:131;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:37685;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:16:"logo-350x223.png";s:5:"width";i:350;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5161;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:16:"logo-380x223.png";s:5:"width";i:380;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5862;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:16:"logo-380x223.png";s:5:"width";i:380;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5862;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:16:"logo-770x223.png";s:5:"width";i:770;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10020;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:17:"logo-1200x223.png";s:5:"width";i:1200;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:13978;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:16:"logo-930x223.png";s:5:"width";i:930;s:6:"height";i:223;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10444;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:16:"logo-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5628;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(92, 52, '_wp_attached_file', '2023/06/redpages-logo-vert.png'),
(93, 52, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:338;s:6:"height";i:593;s:4:"file";s:30:"2023/06/redpages-logo-vert.png";s:8:"filesize";i:6473;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:30:"redpages-logo-vert-171x300.png";s:5:"width";i:171;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:39519;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"redpages-logo-vert-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:17050;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:30:"redpages-logo-vert-338x350.png";s:5:"width";i:338;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5166;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:30:"redpages-logo-vert-338x360.png";s:5:"width";i:338;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5305;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:30:"redpages-logo-vert-338x320.png";s:5:"width";i:338;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4859;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:30:"redpages-logo-vert-338x433.png";s:5:"width";i:338;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:6017;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:30:"redpages-logo-vert-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10794;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(94, 53, '_wp_attached_file', '2023/06/redpages-logo-1.png'),
(95, 53, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:454;s:6:"height";i:69;s:4:"file";s:27:"2023/06/redpages-logo-1.png";s:8:"filesize";i:5071;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:26:"redpages-logo-1-300x46.png";s:5:"width";i:300;s:6:"height";i:46;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7120;}s:9:"thumbnail";a:5:{s:4:"file";s:26:"redpages-logo-1-150x69.png";s:5:"width";i:150;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1803;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:26:"redpages-logo-1-350x69.png";s:5:"width";i:350;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3804;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:26:"redpages-logo-1-380x69.png";s:5:"width";i:380;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4270;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:26:"redpages-logo-1-380x69.png";s:5:"width";i:380;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4270;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:26:"redpages-logo-1-120x69.png";s:5:"width";i:120;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1527;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 54, '_wp_attached_file', '2023/06/servicesbg1.png'),
(97, 54, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1558;s:6:"height";i:1370;s:4:"file";s:23:"2023/06/servicesbg1.png";s:8:"filesize";i:44039;s:5:"sizes";a:13:{s:6:"medium";a:5:{s:4:"file";s:23:"servicesbg1-300x264.png";s:5:"width";i:300;s:6:"height";i:264;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:33724;}s:5:"large";a:5:{s:4:"file";s:24:"servicesbg1-1024x900.png";s:5:"width";i:1024;s:6:"height";i:900;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:271757;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"servicesbg1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:8469;}s:12:"medium_large";a:5:{s:4:"file";s:23:"servicesbg1-768x675.png";s:5:"width";i:768;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:214886;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"servicesbg1-1536x1351.png";s:5:"width";i:1536;s:6:"height";i:1351;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:773647;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:23:"servicesbg1-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:42257;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:23:"servicesbg1-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:56139;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:23:"servicesbg1-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:23047;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:23:"servicesbg1-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:120381;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:24:"servicesbg1-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:289501;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:23:"servicesbg1-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:245156;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:25:"servicesbg1-1558x1080.png";s:5:"width";i:1558;s:6:"height";i:1080;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:43718;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:23:"servicesbg1-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:6564;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(98, 55, '_wp_attached_file', '2023/06/servicesbg2-01-3.png') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(99, 55, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1250;s:6:"height";i:1249;s:4:"file";s:28:"2023/06/servicesbg2-01-3.png";s:8:"filesize";i:660120;s:5:"sizes";a:12:{s:6:"medium";a:5:{s:4:"file";s:28:"servicesbg2-01-3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:79686;}s:5:"large";a:5:{s:4:"file";s:30:"servicesbg2-01-3-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:491722;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:27085;}s:12:"medium_large";a:5:{s:4:"file";s:28:"servicesbg2-01-3-768x767.png";s:5:"width";i:768;s:6:"height";i:767;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:517346;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:28:"servicesbg2-01-3-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:118673;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-3-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:131390;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:28:"servicesbg2-01-3-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:125298;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:28:"servicesbg2-01-3-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:361897;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:29:"servicesbg2-01-3-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:712801;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:28:"servicesbg2-01-3-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:556339;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:30:"servicesbg2-01-3-1250x1080.png";s:5:"width";i:1250;s:6:"height";i:1080;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:671817;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:28:"servicesbg2-01-3-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:18457;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(100, 56, '_wp_attached_file', '2023/06/servicesbg2.png'),
(101, 56, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2071;s:6:"height";i:1286;s:4:"file";s:23:"2023/06/servicesbg2.png";s:8:"filesize";i:822994;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:23:"servicesbg2-300x186.png";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:37581;}s:5:"large";a:5:{s:4:"file";s:24:"servicesbg2-1024x636.png";s:5:"width";i:1024;s:6:"height";i:636;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:272228;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"servicesbg2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:23715;}s:12:"medium_large";a:5:{s:4:"file";s:23:"servicesbg2-768x477.png";s:5:"width";i:768;s:6:"height";i:477;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:172928;}s:9:"1536x1536";a:5:{s:4:"file";s:24:"servicesbg2-1536x954.png";s:5:"width";i:1536;s:6:"height";i:954;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:569428;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"servicesbg2-2048x1272.png";s:5:"width";i:2048;s:6:"height";i:1272;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:900103;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:23:"servicesbg2-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:92246;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:23:"servicesbg2-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:99385;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:23:"servicesbg2-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:82669;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:23:"servicesbg2-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:170615;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:24:"servicesbg2-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:367151;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:23:"servicesbg2-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:278916;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:25:"servicesbg2-1920x1080.png";s:5:"width";i:1920;s:6:"height";i:1080;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:820286;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:23:"servicesbg2-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16713;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 57, '_wp_attached_file', '2023/06/site_bg.png'),
(103, 57, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:19:"2023/06/site_bg.png";s:8:"filesize";i:779855;s:5:"sizes";a:12:{s:6:"medium";a:5:{s:4:"file";s:19:"site_bg-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:30261;}s:5:"large";a:5:{s:4:"file";s:20:"site_bg-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:249901;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"site_bg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:14284;}s:12:"medium_large";a:5:{s:4:"file";s:19:"site_bg-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:154516;}s:9:"1536x1536";a:5:{s:4:"file";s:20:"site_bg-1536x864.png";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:488364;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:19:"site_bg-350x350.png";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:64235;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:19:"site_bg-380x360.png";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:69172;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:19:"site_bg-380x320.png";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:64921;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:19:"site_bg-770x433.png";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:163413;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:20:"site_bg-1200x675.png";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:344199;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:19:"site_bg-930x650.png";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:270102;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:19:"site_bg-120x120.png";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:9520;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(104, 58, '_wp_attached_file', '2023/06/solutions-eng.png'),
(105, 58, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:454;s:6:"height";i:22;s:4:"file";s:25:"2023/06/solutions-eng.png";s:8:"filesize";i:3245;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"solutions-eng-300x15.png";s:5:"width";i:300;s:6:"height";i:15;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4815;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"solutions-eng-150x22.png";s:5:"width";i:150;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1317;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:24:"solutions-eng-350x22.png";s:5:"width";i:350;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:2454;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:24:"solutions-eng-380x22.png";s:5:"width";i:380;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:2633;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:24:"solutions-eng-380x22.png";s:5:"width";i:380;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:2633;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:24:"solutions-eng-120x22.png";s:5:"width";i:120;s:6:"height";i:22;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1104;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 11, '_oembed_eb3a8af7d523680c0c2d94b98defc700', '{{unknown}}'),
(111, 59, '_wp_trash_meta_status', 'publish'),
(112, 59, '_wp_trash_meta_time', '1687343625'),
(113, 61, '_wp_trash_meta_status', 'publish'),
(114, 61, '_wp_trash_meta_time', '1687343721') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(115, 63, '_edit_lock', '1687356798:1'),
(118, 63, '_thumbnail_id', '11'),
(123, 67, '_wp_trash_meta_status', 'publish'),
(124, 67, '_wp_trash_meta_time', '1687344081'),
(125, 69, '_wp_trash_meta_status', 'publish'),
(126, 69, '_wp_trash_meta_time', '1687344437'),
(127, 71, '_edit_lock', '1687344598:1'),
(128, 71, '_wp_trash_meta_status', 'publish'),
(129, 71, '_wp_trash_meta_time', '1687344600'),
(130, 73, '_edit_lock', '1687345018:1'),
(131, 73, '_wp_trash_meta_status', 'publish'),
(132, 73, '_wp_trash_meta_time', '1687345026'),
(133, 75, '_edit_lock', '1687345138:1'),
(134, 75, '_wp_trash_meta_status', 'publish'),
(135, 75, '_wp_trash_meta_time', '1687345158'),
(136, 77, '_wp_trash_meta_status', 'publish'),
(137, 77, '_wp_trash_meta_time', '1687345267'),
(138, 79, '_wp_trash_meta_status', 'publish'),
(139, 79, '_wp_trash_meta_time', '1687345347'),
(140, 81, '_edit_lock', '1687345438:1'),
(141, 81, '_wp_trash_meta_status', 'publish'),
(142, 81, '_wp_trash_meta_time', '1687345482'),
(143, 83, '_edit_lock', '1687345618:1'),
(144, 83, '_wp_trash_meta_status', 'publish'),
(145, 83, '_wp_trash_meta_time', '1687345622'),
(146, 85, '_wp_trash_meta_status', 'publish'),
(147, 85, '_wp_trash_meta_time', '1687345695'),
(148, 87, '_wp_trash_meta_status', 'publish'),
(149, 87, '_wp_trash_meta_time', '1687345725'),
(150, 89, '_wp_trash_meta_status', 'publish'),
(151, 89, '_wp_trash_meta_time', '1687345769'),
(152, 91, '_edit_lock', '1687345858:1'),
(153, 91, '_wp_trash_meta_status', 'publish'),
(154, 91, '_wp_trash_meta_time', '1687345867'),
(155, 93, '_wp_trash_meta_status', 'publish'),
(156, 93, '_wp_trash_meta_time', '1687345941'),
(158, 96, '_wp_attached_file', '2023/06/RedpagesWebsite-red-bg-scaled.jpg'),
(159, 96, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1420;s:4:"file";s:41:"2023/06/RedpagesWebsite-red-bg-scaled.jpg";s:8:"filesize";i:72392;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-300x166.jpg";s:5:"width";i:300;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3136;}s:5:"large";a:5:{s:4:"file";s:35:"RedpagesWebsite-red-bg-1024x568.jpg";s:5:"width";i:1024;s:6:"height";i:568;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16678;}s:9:"thumbnail";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:1100;}s:12:"medium_large";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-768x426.jpg";s:5:"width";i:768;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10905;}s:9:"1536x1536";a:5:{s:4:"file";s:35:"RedpagesWebsite-red-bg-1536x852.jpg";s:5:"width";i:1536;s:6:"height";i:852;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31342;}s:9:"2048x2048";a:5:{s:4:"file";s:36:"RedpagesWebsite-red-bg-2048x1136.jpg";s:5:"width";i:2048;s:6:"height";i:1136;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:50252;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:2870;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-380x360.jpg";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3506;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-380x320.jpg";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:2766;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-770x433.jpg";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11162;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:35:"RedpagesWebsite-red-bg-1200x675.jpg";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20371;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-930x650.jpg";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12973;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:36:"RedpagesWebsite-red-bg-1920x1080.jpg";s:5:"width";i:1920;s:6:"height";i:1080;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44474;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:34:"RedpagesWebsite-red-bg-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:956;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:26:"RedpagesWebsite-red-bg.jpg";}'),
(160, 97, '_edit_lock', '1687346930:1'),
(161, 97, '_wp_trash_meta_status', 'publish'),
(162, 97, '_wp_trash_meta_time', '1687346931'),
(163, 99, '_wp_trash_meta_status', 'publish'),
(164, 99, '_wp_trash_meta_time', '1687347371'),
(165, 101, '_edit_lock', '1687347413:1'),
(166, 101, '_wp_trash_meta_status', 'publish'),
(167, 101, '_wp_trash_meta_time', '1687347418'),
(168, 103, '_wp_attached_file', '2023/06/pexels-luis-gomes-546819-scaled.jpg'),
(169, 103, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1700;s:4:"file";s:43:"2023/06/pexels-luis-gomes-546819-scaled.jpg";s:8:"filesize";i:295372;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11253;}s:5:"large";a:5:{s:4:"file";s:37:"pexels-luis-gomes-546819-1024x680.jpg";s:5:"width";i:1024;s:6:"height";i:680;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:67213;}s:9:"thumbnail";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5925;}s:12:"medium_large";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44144;}s:9:"1536x1536";a:5:{s:4:"file";s:38:"pexels-luis-gomes-546819-1536x1020.jpg";s:5:"width";i:1536;s:6:"height";i:1020;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:124423;}s:9:"2048x2048";a:5:{s:4:"file";s:38:"pexels-luis-gomes-546819-2048x1360.jpg";s:5:"width";i:2048;s:6:"height";i:1360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:200741;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20841;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-380x360.jpg";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22458;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-380x320.jpg";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20049;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-770x433.jpg";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38129;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:37:"pexels-luis-gomes-546819-1200x675.jpg";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:73108;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-930x650.jpg";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:62128;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:38:"pexels-luis-gomes-546819-1920x1080.jpg";s:5:"width";i:1920;s:6:"height";i:1080;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:154164;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:36:"pexels-luis-gomes-546819-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4281;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:28:"pexels-luis-gomes-546819.jpg";}'),
(170, 104, '_wp_attached_file', '2023/06/pexels-christina-morillo-1181314-scaled.jpg'),
(171, 104, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:1709;s:6:"height";i:2560;s:4:"file";s:51:"2023/06/pexels-christina-morillo-1181314-scaled.jpg";s:8:"filesize";i:543358;s:5:"sizes";a:14:{s:6:"medium";a:5:{s:4:"file";s:44:"pexels-christina-morillo-1181314-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12781;}s:5:"large";a:5:{s:4:"file";s:45:"pexels-christina-morillo-1181314-684x1024.jpg";s:5:"width";i:684;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:85915;}s:9:"thumbnail";a:5:{s:4:"file";s:44:"pexels-christina-morillo-1181314-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6576;}s:12:"medium_large";a:5:{s:4:"file";s:45:"pexels-christina-morillo-1181314-768x1150.jpg";s:5:"width";i:768;s:6:"height";i:1150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:105233;}s:9:"1536x1536";a:5:{s:4:"file";s:46:"pexels-christina-morillo-1181314-1025x1536.jpg";s:5:"width";i:1025;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:183057;}s:9:"2048x2048";a:5:{s:4:"file";s:46:"pexels-christina-morillo-1181314-1367x2048.jpg";s:5:"width";i:1367;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:332996;}s:30:"tech-blogging-thumbnail-mobile";a:5:{s:4:"file";s:44:"pexels-christina-morillo-1181314-350x350.jpg";s:5:"width";i:350;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22862;}s:28:"tech-blogging-list-thumbnail";a:5:{s:4:"file";s:44:"pexels-christina-morillo-1181314-380x360.jpg";s:5:"width";i:380;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25079;}s:28:"tech-blogging-grid-thumbnail";a:5:{s:4:"file";s:44:"pexels-christina-morillo-1181314-380x320.jpg";s:5:"width";i:380;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22554;}s:30:"tech-blogging-thumbnail-medium";a:5:{s:4:"file";s:44:"pexels-christina-morillo-1181314-770x433.jpg";s:5:"width";i:770;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:49303;}s:29:"tech-blogging-thumbnail-large";a:5:{s:4:"file";s:45:"pexels-christina-morillo-1181314-1200x675.jpg";s:5:"width";i:1200;s:6:"height";i:675;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:114636;}s:32:"tech-blogging-thumbnail-featured";a:5:{s:4:"file";s:44:"pexels-christina-morillo-1181314-930x650.jpg";s:5:"width";i:930;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:85094;}s:25:"tech-blogging-header-full";a:5:{s:4:"file";s:46:"pexels-christina-morillo-1181314-1920x1080.jpg";s:5:"width";i:1920;s:6:"height";i:1080;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:305957;}s:38:"tech-blogging-latest-post-widget-thumb";a:5:{s:4:"file";s:44:"pexels-christina-morillo-1181314-120x120.jpg";s:5:"width";i:120;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4744;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:36:"pexels-christina-morillo-1181314.jpg";}'),
(174, 63, '_edit_last', '1'),
(177, 63, '_yoast_wpseo_primary_category', '1'),
(178, 63, '_yoast_wpseo_content_score', '90'),
(179, 63, '_yoast_wpseo_estimated-reading-time-minutes', '3'),
(180, 63, '_yoast_wpseo_wordproof_timestamp', ''),
(183, 63, '_pingme', '1'),
(184, 63, '_encloseme', '1'),
(185, 105, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit "Submit"]'),
(186, 105, '_mail', 'a:8:{s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:38:"[_site_title] <rori.madonko@gmail.com>";s:4:"body";s:161:"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])";s:9:"recipient";s:19:"[_site_admin_email]";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(187, 105, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:38:"[_site_title] <rori.madonko@gmail.com>";s:4:"body";s:105:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(188, 105, '_messages', 'a:12:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";}'),
(189, 105, '_additional_settings', ''),
(190, 105, '_locale', 'en_US'),
(191, 110, '_wp_trash_meta_status', 'publish'),
(192, 110, '_wp_trash_meta_time', '1687422689'),
(193, 112, '_wp_trash_meta_status', 'publish'),
(194, 112, '_wp_trash_meta_time', '1687422861'),
(195, 114, '_edit_lock', '1687422888:1'),
(196, 114, '_wp_trash_meta_status', 'publish'),
(197, 114, '_wp_trash_meta_time', '1687422928'),
(198, 116, '_wp_trash_meta_status', 'publish'),
(199, 116, '_wp_trash_meta_time', '1687422956'),
(200, 118, '_wp_trash_meta_status', 'publish'),
(201, 118, '_wp_trash_meta_time', '1687422998'),
(202, 120, '_wp_trash_meta_status', 'publish'),
(203, 120, '_wp_trash_meta_time', '1687423119'),
(204, 122, '_wp_trash_meta_status', 'publish'),
(205, 122, '_wp_trash_meta_time', '1687423161'),
(206, 124, '_edit_lock', '1687423348:1'),
(207, 124, '_wp_trash_meta_status', 'publish'),
(208, 124, '_wp_trash_meta_time', '1687423349'),
(209, 126, '_wp_trash_meta_status', 'publish'),
(210, 126, '_wp_trash_meta_time', '1687423474'),
(211, 128, '_wp_trash_meta_status', 'publish'),
(212, 128, '_wp_trash_meta_time', '1687423689'),
(213, 130, '_wp_trash_meta_status', 'publish'),
(214, 130, '_wp_trash_meta_time', '1687423746'),
(215, 132, '_wp_trash_meta_status', 'publish'),
(216, 132, '_wp_trash_meta_time', '1687423819'),
(217, 134, '_wp_trash_meta_status', 'publish'),
(218, 134, '_wp_trash_meta_time', '1687423927'),
(219, 143, '_edit_lock', '1687424123:1'),
(220, 143, '_wp_trash_meta_status', 'publish'),
(221, 143, '_wp_trash_meta_time', '1687424137'),
(222, 145, '_wp_trash_meta_status', 'publish'),
(223, 145, '_wp_trash_meta_time', '1687424581'),
(224, 146, '_menu_item_type', 'custom'),
(225, 146, '_menu_item_menu_item_parent', '0'),
(226, 146, '_menu_item_object_id', '146'),
(227, 146, '_menu_item_object', 'custom') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(228, 146, '_menu_item_target', ''),
(229, 146, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 146, '_menu_item_xfn', ''),
(231, 146, '_menu_item_url', 'https://fanciful-frangollo-ca4f1a.netlify.app/'),
(242, 148, '_menu_item_type', 'custom'),
(243, 148, '_menu_item_menu_item_parent', '0'),
(244, 148, '_menu_item_object_id', '148'),
(245, 148, '_menu_item_object', 'custom'),
(246, 148, '_menu_item_target', ''),
(247, 148, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(248, 148, '_menu_item_xfn', ''),
(249, 148, '_menu_item_url', 'https://redpages.solutions'),
(251, 5, '_edit_last', '1'),
(252, 5, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-06-21 08:14:31', '2023-06-21 08:14:31', '<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Introduction</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the digital age, data has become the lifeblood of organizations. However, the true value of data lies not just in its accumulation but in its ability to be seamlessly integrated and analyzed. Universal data integration is a transformative approach that enables businesses to connect, harmonize, and leverage data from disparate sources. In this article, we delve into the diverse use cases and the wide-ranging business benefits of universal data integration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Comprehensive Customer Insights:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the most compelling use cases for universal data integration is the ability to gain a comprehensive understanding of customers. By integrating data from various touchpoints like CRM systems, social media platforms, and e-commerce platforms, businesses can create a unified customer profile. This holistic view allows organizations to analyze customer behavior, preferences, and purchase history in real-time. Armed with these insights, businesses can personalize marketing campaigns, offer tailored recommendations, and deliver exceptional customer experiences, ultimately driving customer loyalty and revenue growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Operational Efficiency and Cost Reduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration brings together data from different systems and departments, breaking down silos and enabling cross-functional collaboration. This integration streamlines operational processes by eliminating manual data entry, reducing errors, and increasing efficiency. For example, integrating data from sales, inventory, and production systems can optimize supply chain management, ensuring accurate demand forecasting and inventory optimization. This not only reduces costs but also enhances overall operational efficiency, leading to improved productivity and profitability.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Data-Driven Decision Making:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration empowers organizations to make informed, data-driven decisions. By integrating data from diverse sources such as sales, marketing, finance, and customer service, businesses can access a holistic view of their operations. This integrated data can then be transformed into meaningful insights through analytics and reporting tools. With accurate and timely information at their fingertips, decision-makers can identify trends, patterns, and opportunities, enabling strategic planning, proactive risk management, and agile decision-making.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Seamless Business Expansion and Mergers/Acquisitions:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration plays a crucial role in business expansion and mergers/acquisitions. When organizations expand their operations or undergo mergers/acquisitions, they often inherit disparate systems and databases. Universal data integration allows businesses to bring together data from these different sources, harmonize it, and create a single source of truth. This integration facilitates smooth data migration, ensures continuity of operations, and enables the consolidation of systems and processes. As a result, organizations can quickly adapt to new markets, integrate new entities, and achieve operational synergies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Compliance and Risk Management:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In an increasingly regulated business landscape, universal data integration helps organizations maintain compliance and manage risks effectively. By integrating data from various sources and systems, businesses can establish robust data governance frameworks. This ensures data accuracy, security, and privacy, thus complying with industry regulations and safeguarding sensitive information. Universal data integration also enables organizations to implement comprehensive risk management strategies by facilitating real-time monitoring, early detection of anomalies, and proactive mitigation measures.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Conclusion:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration is a game-changer for businesses striving to thrive in a data-centric world. By seamlessly connecting and analyzing data from disparate sources, organizations can unlock valuable insights, improve operational efficiency, enhance customer experiences, and drive strategic decision-making. The benefits of universal data integration extend across industries and sectors, enabling businesses to stay competitive, adapt to changing market dynamics, and fuel growth. Embracing this transformative approach will undoubtedly empower businesses to harness the true power of their data and unlock their full potential.</p>\n<!-- /wp:paragraph -->', 'Harnessing the Power of Universal Data Integration: Unleashing Business Potential', 'In the digital age, data has become the lifeblood of organizations. However, the true value of data lies not just in its accumulation but in its ability to be seamlessly integrated and analyzed. ', 'publish', 'closed', 'closed', '', 'hello-world', '', '', '2023-06-21 10:39:08', '2023-06-21 10:39:08', '', 0, 'http://redpages.solutions/?p=1', 0, 'post', '', 1),
(2, 1, '2023-06-21 08:14:31', '2023-06-21 08:14:31', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://redpages.solutions/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-06-21 08:59:08', '2023-06-21 08:59:08', '', 0, 'http://redpages.solutions/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-06-21 08:14:31', '2023-06-21 08:14:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://redpages.solutions.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-06-21 08:14:31', '2023-06-21 08:14:31', '', 0, 'http://redpages.solutions/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-06-21 08:25:47', '2023-06-21 08:25:47', '', 'Home', '', 'draft', 'closed', 'closed', '', 'home', '', '', '2023-06-22 09:20:20', '2023-06-22 09:20:20', '', 0, 'http://redpages.solutions/?page_id=5', 0, 'page', '', 0),
(6, 1, '2023-06-21 08:25:47', '2023-06-21 08:25:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-06-21 08:25:47', '2023-06-21 08:25:47', '', 5, 'http://redpages.solutions/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-06-21 08:27:53', '2023-06-21 08:27:53', '', 'redpages-logo', '', 'inherit', 'open', 'closed', '', 'redpages-logo', '', '', '2023-06-21 08:27:53', '2023-06-21 08:27:53', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/redpages-logo.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2023-06-21 08:28:05', '2023-06-21 08:28:05', 'http://redpages.solutions/wp-content/uploads/2023/06/cropped-redpages-logo.png', 'cropped-redpages-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-redpages-logo-png', '', '', '2023-06-21 08:28:05', '2023-06-21 08:28:05', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/cropped-redpages-logo.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2023-06-21 08:31:58', '2023-06-21 08:31:58', '{"tech-blogging::custom_logo":{"value":8,"type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:28:43"},"tech-blogging::header_textcolor":{"value":"blank","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:28:43"},"site_icon":{"value":11,"type":"option","user_id":1,"date_modified_gmt":"2023-06-21 08:31:58"}}', '', '', 'trash', 'closed', 'closed', '', 'dbd24715-ce95-4419-9b74-5af696d3d055', '', '', '2023-06-21 08:31:58', '2023-06-21 08:31:58', '', 0, 'http://redpages.solutions/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2023-06-21 08:31:09', '2023-06-21 08:31:09', '', 'Screenshot 2023-06-21 at 10.30.52', '', 'inherit', 'open', 'closed', '', 'screenshot-2023-06-21-at-10-30-52', '', '', '2023-06-21 08:31:09', '2023-06-21 08:31:09', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/Screenshot-2023-06-21-at-10.30.52.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2023-06-21 08:31:43', '2023-06-21 08:31:43', 'http://redpages.solutions/wp-content/uploads/2023/06/cropped-Screenshot-2023-06-21-at-10.30.52.png', 'cropped-Screenshot-2023-06-21-at-10.30.52.png', '', 'inherit', 'open', 'closed', '', 'cropped-screenshot-2023-06-21-at-10-30-52-png', '', '', '2023-06-21 08:31:43', '2023-06-21 08:31:43', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/cropped-Screenshot-2023-06-21-at-10.30.52.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2023-06-21 08:33:55', '2023-06-21 08:33:55', '{"tech-blogging::primary_color":{"value":"#db1f29","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:33:55"}}', '', '', 'trash', 'closed', 'closed', '', 'a2b1c313-7c44-4742-b16d-74cecc4eaf61', '', '', '2023-06-21 08:33:55', '2023-06-21 08:33:55', '', 0, 'http://redpages.solutions/2023/06/21/a2b1c313-7c44-4742-b16d-74cecc4eaf61/', 0, 'customize_changeset', '', 0),
(13, 1, '2023-06-21 08:34:33', '2023-06-21 08:34:33', '{"tech-blogging::button_bg_color":{"value":"#db1f29","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:34:33"}}', '', '', 'trash', 'closed', 'closed', '', 'eb88fe9b-1c0b-435d-93bd-6134e07b7bba', '', '', '2023-06-21 08:34:33', '2023-06-21 08:34:33', '', 0, 'http://redpages.solutions/2023/06/21/eb88fe9b-1c0b-435d-93bd-6134e07b7bba/', 0, 'customize_changeset', '', 0),
(14, 1, '2023-06-21 08:35:14', '2023-06-21 08:35:14', '{"tech-blogging::single_page_sidebar":{"value":"no","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:35:14"}}', '', '', 'trash', 'closed', 'closed', '', '5d1b7fde-bf91-459b-812d-7fed3d22860d', '', '', '2023-06-21 08:35:14', '2023-06-21 08:35:14', '', 0, 'http://redpages.solutions/2023/06/21/5d1b7fde-bf91-459b-812d-7fed3d22860d/', 0, 'customize_changeset', '', 0),
(15, 1, '2023-06-21 08:44:34', '2023-06-21 08:44:34', '', 'servicesbg2-01', '', 'inherit', 'open', 'closed', '', 'servicesbg2-01', '', '', '2023-06-21 08:44:34', '2023-06-21 08:44:34', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/servicesbg2-01.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2023-06-21 08:45:18', '2023-06-21 08:45:18', '{"tech-blogging::tech_blogging_image_upload":{"value":"http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/servicesbg2-01.png","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:45:17"}}', '', '', 'trash', 'closed', 'closed', '', '6f156576-4f9e-4b1d-b27a-bd25179ed4ff', '', '', '2023-06-21 08:45:18', '2023-06-21 08:45:18', '', 0, 'http://redpages.solutions/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2023-06-21 08:47:47', '2023-06-21 08:47:47', '{"tech-blogging::tech_blogging_body_fonts":{"value":"Montserrat:400,700","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:47:25"},"tech-blogging::tech_blogging_body_fonts_size":{"value":"16","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:47:47"},"tech-blogging::tech_blogging_body_fonts_line_height":{"value":"26","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:47:47"}}', '', '', 'trash', 'closed', 'closed', '', 'dc74a95f-14bb-47eb-a873-54c6f489b2d8', '', '', '2023-06-21 08:47:47', '2023-06-21 08:47:47', '', 0, 'http://redpages.solutions/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2023-06-21 08:49:15', '2023-06-21 08:49:15', '', 'servicesbg2-01', '', 'inherit', 'open', 'closed', '', 'servicesbg2-01-2', '', '', '2023-06-21 08:49:15', '2023-06-21 08:49:15', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/servicesbg2-01-1.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2023-06-21 08:49:26', '2023-06-21 08:49:26', '', 'arrows', '', 'inherit', 'open', 'closed', '', 'arrows', '', '', '2023-06-21 08:49:26', '2023-06-21 08:49:26', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/arrows.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2023-06-21 08:50:04', '2023-06-21 08:50:04', '', 'cropped-arrows.png', '', 'inherit', 'open', 'closed', '', 'cropped-arrows-png', '', '', '2023-06-21 08:50:04', '2023-06-21 08:50:04', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/cropped-arrows.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2023-06-21 08:50:23', '2023-06-21 08:50:23', '{"tech-blogging::header_image":{"value":"remove-header","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:50:23"},"tech-blogging::header_image_data":{"value":"remove-header","type":"theme_mod","user_id":1,"date_modified_gmt":"2023-06-21 08:50:23"}}', '', '', 'trash', 'closed', 'closed', '', 'fae1cb5d-6101-4fd0-838c-fdfbd5a6cd51', '', '', '2023-06-21 08:50:23', '2023-06-21 08:50:23', '', 0, 'http://redpages.solutions/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2023-06-21 08:57:03', '2023-06-21 08:57:03', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#000;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 08:57:03"}}', '', '', 'trash', 'closed', 'closed', '', 'e190e2e9-883c-40fc-95a0-a606f0f999c8', '', '', '2023-06-21 08:57:03', '2023-06-21 08:57:03', '', 0, 'http://redpages.solutions/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2023-06-21 08:57:03', '2023-06-21 08:57:03', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	text-transform:uppercase;\n	text-align:left;\n}\nfooter section:nth-child(1){\n	border-bottom:1px solid #fff;\n}\nfooter .fa-solid, .fas {\n    font-family: "Font Awesome 6 Free";\n    font-weight: 900;\n    color: #db1f29;\n}\n.fa-skype::before {\n    content: "\\f17e";\n    position: absolute;\n    margin-top: -23px;\n    font-size: 30px;\n}\n.scrooltotop a {\n    background: #fff;\n    color: #db1f29;\n}\n#cssmenu>ul>li>a {\n    padding: 1.0625rem;\n    letter-spacing: 0.0625rem;\n    text-decoration: none;\n    color: #d81e27 !important;\n    font-weight: 400;\n    text-transform: uppercase;\n    transition: .4s;\n    font-size: 18px;\n}\na:visited {\n    color: unset;\n    text-decoration: none;\n}\n@media (min-width: 1300px){\n.container {\n    max-width: 1310px;\n}\n}', 'tech-blogging', '', 'publish', 'closed', 'closed', '', 'tech-blogging', '', '', '2023-06-22 08:55:37', '2023-06-22 08:55:37', '', 0, 'http://redpages.solutions/2023/06/21/tech-blogging/', 0, 'custom_css', '', 0),
(24, 1, '2023-06-21 08:57:03', '2023-06-21 08:57:03', '.book-display-area{\n	background:#000;\n}\n.book-text h2 {\n	color: #fff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 08:57:03', '2023-06-21 08:57:03', '', 23, 'http://redpages.solutions/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-06-21 08:57:36', '2023-06-21 08:57:36', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 08:57:36"}}', '', '', 'trash', 'closed', 'closed', '', 'ab463676-7304-4868-b53a-4f53b99650ed', '', '', '2023-06-21 08:57:36', '2023-06-21 08:57:36', '', 0, 'http://redpages.solutions/2023/06/21/ab463676-7304-4868-b53a-4f53b99650ed/', 0, 'customize_changeset', '', 0),
(26, 1, '2023-06-21 08:57:36', '2023-06-21 08:57:36', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 08:57:36', '2023-06-21 08:57:36', '', 23, 'http://redpages.solutions/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-06-21 08:58:49', '2023-06-21 08:58:49', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 08:58:49"}}', '', '', 'trash', 'closed', 'closed', '', '7c0fe119-41c7-4bb5-982b-5094d525023c', '', '', '2023-06-21 08:58:49', '2023-06-21 08:58:49', '', 0, 'http://redpages.solutions/2023/06/21/7c0fe119-41c7-4bb5-982b-5094d525023c/', 0, 'customize_changeset', '', 0),
(28, 1, '2023-06-21 08:58:49', '2023-06-21 08:58:49', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 08:58:49', '2023-06-21 08:58:49', '', 23, 'http://redpages.solutions/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-06-21 08:59:08', '2023-06-21 08:59:08', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://redpages.solutions/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-21 08:59:08', '2023-06-21 08:59:08', '', 2, 'http://redpages.solutions/?p=29', 0, 'revision', '', 0),
(30, 1, '2023-06-21 09:01:07', '2023-06-21 09:01:07', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 09:01:07"}}', '', '', 'trash', 'closed', 'closed', '', '8ef27459-590c-48fd-afe5-d50e72c3772e', '', '', '2023-06-21 09:01:07', '2023-06-21 09:01:07', '', 0, 'http://redpages.solutions/2023/06/21/8ef27459-590c-48fd-afe5-d50e72c3772e/', 0, 'customize_changeset', '', 0),
(31, 1, '2023-06-21 09:01:07', '2023-06-21 09:01:07', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 09:01:07', '2023-06-21 09:01:07', '', 23, 'http://redpages.solutions/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-06-21 09:03:27', '2023-06-21 09:03:27', '', 'pexels-danny-meneses-943096 2', '', 'inherit', 'open', 'closed', '', 'pexels-danny-meneses-943096-2', '', '', '2023-06-21 09:03:27', '2023-06-21 09:03:27', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/pexels-danny-meneses-943096-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2023-06-21 09:03:51', '2023-06-21 09:03:51', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-21 09:03:51', '2023-06-21 09:03:51', '', 1, 'http://redpages.solutions/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-06-21 09:15:52', '2023-06-21 09:15:52', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 09:15:52"}}', '', '', 'trash', 'closed', 'closed', '', '5100512f-9f5c-4221-bce5-666b2760f063', '', '', '2023-06-21 09:15:52', '2023-06-21 09:15:52', '', 0, 'http://redpages.solutions/2023/06/21/5100512f-9f5c-4221-bce5-666b2760f063/', 0, 'customize_changeset', '', 0),
(35, 1, '2023-06-21 09:15:52', '2023-06-21 09:15:52', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 09:15:52', '2023-06-21 09:15:52', '', 23, 'http://redpages.solutions/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-06-21 09:16:07', '2023-06-21 09:16:07', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 09:16:07"}}', '', '', 'trash', 'closed', 'closed', '', 'e1558114-7510-4437-bbd2-a4c064a0e71d', '', '', '2023-06-21 09:16:07', '2023-06-21 09:16:07', '', 0, 'http://redpages.solutions/2023/06/21/e1558114-7510-4437-bbd2-a4c064a0e71d/', 0, 'customize_changeset', '', 0),
(37, 1, '2023-06-21 09:16:07', '2023-06-21 09:16:07', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 09:16:07', '2023-06-21 09:16:07', '', 23, 'http://redpages.solutions/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-06-21 10:18:25', '2023-06-21 10:18:25', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:18:25"}}', '', '', 'trash', 'closed', 'closed', '', '657c8a7a-4b17-43ee-9df4-7c78181e9e36', '', '', '2023-06-21 10:18:25', '2023-06-21 10:18:25', '', 0, 'http://redpages.solutions/2023/06/21/657c8a7a-4b17-43ee-9df4-7c78181e9e36/', 0, 'customize_changeset', '', 0),
(39, 1, '2023-06-21 10:18:25', '2023-06-21 10:18:25', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:18:25', '2023-06-21 10:18:25', '', 23, 'http://redpages.solutions/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-06-21 10:20:13', '2023-06-21 10:20:13', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:20:13"}}', '', '', 'trash', 'closed', 'closed', '', '3feaad66-fabc-4a03-b8a2-dc56bc223257', '', '', '2023-06-21 10:20:13', '2023-06-21 10:20:13', '', 0, 'http://redpages.solutions/2023/06/21/3feaad66-fabc-4a03-b8a2-dc56bc223257/', 0, 'customize_changeset', '', 0),
(41, 1, '2023-06-21 10:20:13', '2023-06-21 10:20:13', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:20:13', '2023-06-21 10:20:13', '', 23, 'http://redpages.solutions/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-06-21 10:21:31', '2023-06-21 10:21:31', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:21:31"}}', '', '', 'trash', 'closed', 'closed', '', 'fb9f5b39-3235-4745-9237-6761e9db1f60', '', '', '2023-06-21 10:21:31', '2023-06-21 10:21:31', '', 0, 'http://redpages.solutions/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2023-06-21 10:21:31', '2023-06-21 10:21:31', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:21:31', '2023-06-21 10:21:31', '', 23, 'http://redpages.solutions/?p=43', 0, 'revision', '', 0),
(45, 1, '2023-06-21 10:27:47', '2023-06-21 10:27:47', '<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Introduction</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the digital age, data has become the lifeblood of organizations. However, the true value of data lies not just in its accumulation but in its ability to be seamlessly integrated and analyzed. Universal data integration is a transformative approach that enables businesses to connect, harmonize, and leverage data from disparate sources. In this article, we delve into the diverse use cases and the wide-ranging business benefits of universal data integration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Comprehensive Customer Insights:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the most compelling use cases for universal data integration is the ability to gain a comprehensive understanding of customers. By integrating data from various touchpoints like CRM systems, social media platforms, and e-commerce platforms, businesses can create a unified customer profile. This holistic view allows organizations to analyze customer behavior, preferences, and purchase history in real-time. Armed with these insights, businesses can personalize marketing campaigns, offer tailored recommendations, and deliver exceptional customer experiences, ultimately driving customer loyalty and revenue growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Operational Efficiency and Cost Reduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration brings together data from different systems and departments, breaking down silos and enabling cross-functional collaboration. This integration streamlines operational processes by eliminating manual data entry, reducing errors, and increasing efficiency. For example, integrating data from sales, inventory, and production systems can optimize supply chain management, ensuring accurate demand forecasting and inventory optimization. This not only reduces costs but also enhances overall operational efficiency, leading to improved productivity and profitability.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Data-Driven Decision Making:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration empowers organizations to make informed, data-driven decisions. By integrating data from diverse sources such as sales, marketing, finance, and customer service, businesses can access a holistic view of their operations. This integrated data can then be transformed into meaningful insights through analytics and reporting tools. With accurate and timely information at their fingertips, decision-makers can identify trends, patterns, and opportunities, enabling strategic planning, proactive risk management, and agile decision-making.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Seamless Business Expansion and Mergers/Acquisitions:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration plays a crucial role in business expansion and mergers/acquisitions. When organizations expand their operations or undergo mergers/acquisitions, they often inherit disparate systems and databases. Universal data integration allows businesses to bring together data from these different sources, harmonize it, and create a single source of truth. This integration facilitates smooth data migration, ensures continuity of operations, and enables the consolidation of systems and processes. As a result, organizations can quickly adapt to new markets, integrate new entities, and achieve operational synergies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Compliance and Risk Management:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In an increasingly regulated business landscape, universal data integration helps organizations maintain compliance and manage risks effectively. By integrating data from various sources and systems, businesses can establish robust data governance frameworks. This ensures data accuracy, security, and privacy, thus complying with industry regulations and safeguarding sensitive information. Universal data integration also enables organizations to implement comprehensive risk management strategies by facilitating real-time monitoring, early detection of anomalies, and proactive mitigation measures.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Conclusion:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration is a game-changer for businesses striving to thrive in a data-centric world. By seamlessly connecting and analyzing data from disparate sources, organizations can unlock valuable insights, improve operational efficiency, enhance customer experiences, and drive strategic decision-making. The benefits of universal data integration extend across industries and sectors, enabling businesses to stay competitive, adapt to changing market dynamics, and fuel growth. Embracing this transformative approach will undoubtedly empower businesses to harness the true power of their data and unlock their full potential.</p>\n<!-- /wp:paragraph -->', 'Harnessing the Power of Universal Data Integration: Unleashing Business Potential', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-21 10:27:47', '2023-06-21 10:27:47', '', 1, 'http://redpages.solutions/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-06-21 10:29:11', '2023-06-21 10:29:11', '', '_servicesbg2-01', '', 'inherit', 'open', 'closed', '', '_servicesbg2-01', '', '', '2023-06-21 10:29:11', '2023-06-21 10:29:11', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/servicesbg2-01-2.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2023-06-21 10:29:16', '2023-06-21 10:29:16', '', 'arrows', '', 'inherit', 'open', 'closed', '', 'arrows-2', '', '', '2023-06-21 10:29:16', '2023-06-21 10:29:16', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/arrows-1.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2023-06-21 10:29:18', '2023-06-21 10:29:18', '', 'BenjaminAgbalajobi', '', 'inherit', 'open', 'closed', '', 'benjaminagbalajobi', '', '', '2023-06-21 10:29:18', '2023-06-21 10:29:18', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/BenjaminAgbalajobi.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2023-06-21 10:29:21', '2023-06-21 10:29:21', '', 'cloud', '', 'inherit', 'open', 'closed', '', 'cloud', '', '', '2023-06-21 10:29:21', '2023-06-21 10:29:21', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/cloud.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2023-06-21 10:29:24', '2023-06-21 10:29:24', '', 'dg-aug', '', 'inherit', 'open', 'closed', '', 'dg-aug', '', '', '2023-06-21 10:29:24', '2023-06-21 10:29:24', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/dg-aug.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2023-06-21 10:29:33', '2023-06-21 10:29:33', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2023-06-21 10:29:33', '2023-06-21 10:29:33', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/logo.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2023-06-21 10:29:34', '2023-06-21 10:29:34', '', 'redpages-logo-vert', '', 'inherit', 'open', 'closed', '', 'redpages-logo-vert', '', '', '2023-06-21 10:29:34', '2023-06-21 10:29:34', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/redpages-logo-vert.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2023-06-21 10:29:34', '2023-06-21 10:29:34', '', 'redpages-logo', '', 'inherit', 'open', 'closed', '', 'redpages-logo-2', '', '', '2023-06-21 10:29:34', '2023-06-21 10:29:34', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/redpages-logo-1.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2023-06-21 10:29:35', '2023-06-21 10:29:35', '', 'servicesbg1', '', 'inherit', 'open', 'closed', '', 'servicesbg1', '', '', '2023-06-21 10:29:35', '2023-06-21 10:29:35', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/servicesbg1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2023-06-21 10:29:41', '2023-06-21 10:29:41', '', 'servicesbg2-01', '', 'inherit', 'open', 'closed', '', 'servicesbg2-01-3', '', '', '2023-06-21 10:29:41', '2023-06-21 10:29:41', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/servicesbg2-01-3.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2023-06-21 10:29:47', '2023-06-21 10:29:47', '', 'servicesbg2', '', 'inherit', 'open', 'closed', '', 'servicesbg2', '', '', '2023-06-21 10:29:47', '2023-06-21 10:29:47', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/servicesbg2.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2023-06-21 10:29:54', '2023-06-21 10:29:54', '', 'site_bg', '', 'inherit', 'open', 'closed', '', 'site_bg', '', '', '2023-06-21 10:29:54', '2023-06-21 10:29:54', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/site_bg.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2023-06-21 10:30:00', '2023-06-21 10:30:00', '', 'solutions-eng', '', 'inherit', 'open', 'closed', '', 'solutions-eng', '', '', '2023-06-21 10:30:00', '2023-06-21 10:30:00', '', 1, 'http://redpages.solutions/wp-content/uploads/2023/06/solutions-eng.png', 0, 'attachment', 'image/png', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(59, 1, '2023-06-21 10:33:45', '2023-06-21 10:33:45', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:33:45"}}', '', '', 'trash', 'closed', 'closed', '', '30bc4362-d2ee-4334-b67f-4ebee3bd8a1b', '', '', '2023-06-21 10:33:45', '2023-06-21 10:33:45', '', 0, 'http://redpages.solutions/2023/06/21/30bc4362-d2ee-4334-b67f-4ebee3bd8a1b/', 0, 'customize_changeset', '', 0),
(60, 1, '2023-06-21 10:33:45', '2023-06-21 10:33:45', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:33:45', '2023-06-21 10:33:45', '', 23, 'http://redpages.solutions/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-06-21 10:35:21', '2023-06-21 10:35:21', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:35:21"}}', '', '', 'trash', 'closed', 'closed', '', 'f28b8c6e-e9cb-4a47-9a6a-584c6f7a5800', '', '', '2023-06-21 10:35:21', '2023-06-21 10:35:21', '', 0, 'http://redpages.solutions/2023/06/21/f28b8c6e-e9cb-4a47-9a6a-584c6f7a5800/', 0, 'customize_changeset', '', 0),
(62, 1, '2023-06-21 10:35:21', '2023-06-21 10:35:21', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:35:21', '2023-06-21 10:35:21', '', 23, 'http://redpages.solutions/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-06-21 10:38:16', '2023-06-21 10:38:16', '<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Introduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In today\'s rapidly evolving business landscape, organizations are constantly seeking innovative solutions to address their data management challenges. One such solution gaining significant traction is migrating from traditional relational databases, such as Oracle Database, to modern NoSQL databases like MongoDB. This article presents a compelling business case for migrating from Oracle Database to MongoDB, highlighting the benefits of enhanced agility, scalability, flexibility, and cost-efficiency.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Agile Development and Faster Time-to-Market:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Migrating from Oracle Database to MongoDB enables businesses to embrace an agile development approach. Unlike the rigid schema structure of relational databases, MongoDB\'s flexible schema allows developers to quickly iterate and adapt their data models as business requirements evolve. This flexibility empowers development teams to deliver new features and functionalities at an accelerated pace, reducing time-to-market and gaining a competitive edge. MongoDB\'s document-oriented data model also aligns well with modern development frameworks, enabling seamless integration with popular programming languages and frameworks.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Scalability for Growing Data Volumes:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>As data volumes continue to explode, scalability becomes a critical requirement for businesses. MongoDB excels in this aspect with its horizontal scaling capabilities. By distributing data across multiple servers in a cluster, MongoDB enables seamless scalability to handle growing data workloads. This distributed architecture ensures high availability and performance, allowing businesses to handle massive amounts of data and accommodate increasing user demands without compromising performance. Scaling with MongoDB is seamless and non-disruptive, enabling businesses to future-proof their data infrastructure.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Flexible Data Modeling and Complex Data Structures:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Oracle Database follows a rigid table-based structure, requiring upfront schema design and predefined relationships. In contrast, MongoDB\'s document-oriented approach allows for flexible data modeling, accommodating evolving business needs and complex data structures. With MongoDB, businesses can store and query complex, hierarchical, and nested data structures without sacrificing performance. This flexibility simplifies application development, reduces data mapping complexities, and provides greater agility to adapt to changing data requirements.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Rich Query Capabilities and Real-time Analytics:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>MongoDB offers a powerful query language that supports rich querying capabilities, including ad hoc queries, indexing, aggregation pipelines, and geospatial queries. This enables businesses to derive real-time insights from their data, perform complex analytics, and make informed decisions. MongoDB\'s built-in sharding and replication features provide high performance and fault tolerance, ensuring that real-time analytics and reporting operations can be executed seamlessly on large datasets.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Cost-Efficiency and Total Cost of Ownership (TCO) Reduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Migrating from Oracle Database to MongoDB can significantly reduce the total cost of ownership. Oracle Database requires substantial upfront licensing and hardware investments, as well as ongoing maintenance costs. In contrast, MongoDB is open source and offers flexible licensing options, eliminating expensive licensing fees. Additionally, MongoDB\'s horizontal scalability allows businesses to scale out using cost-effective commodity hardware rather than investing in costly proprietary infrastructure. The operational simplicity and automated management features of MongoDB further contribute to cost savings by reducing administrative overhead.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Conclusion:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The migration from Oracle Database to MongoDB offers a multitude of benefits that can empower businesses to thrive in today\'s data-driven world. By embracing MongoDB\'s flexible schema, scalability, and rich query capabilities, organizations can unlock agility, accelerate development cycles, and achieve faster time-to-market. Furthermore, the ability to handle complex data structures and perform real-time analytics enables businesses to gain actionable insights and make informed decisions. Finally, the cost-efficiency and reduced total cost of ownership associated with MongoDB make it an attractive choice for organizations seeking to optimize their data infrastructure. Migrating from Oracle Database to MongoDB represents a strategic move towards modernizing data management, fostering innovation, and gaining a competitive advantage in the digital era.</p>\n<!-- /wp:paragraph -->', 'Unleashing Agility and Scalability: A Business Case for Migrating from Oracle Database to MongoDB', 'In today\'s rapidly evolving business landscape, organizations are constantly seeking innovative solutions to address their data management challenges.', 'publish', 'closed', 'closed', '', 'unleashing-agility-and-scalability-a-business-case-for-migrating-from-oracle-database-to-mongodb', '', '', '2023-06-21 13:47:47', '2023-06-21 13:47:47', '', 0, 'http://redpages.solutions/?p=63', 0, 'post', '', 0),
(64, 1, '2023-06-21 10:38:16', '2023-06-21 10:38:16', '<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Introduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In today\'s rapidly evolving business landscape, organizations are constantly seeking innovative solutions to address their data management challenges. One such solution gaining significant traction is migrating from traditional relational databases, such as Oracle Database, to modern NoSQL databases like MongoDB. This article presents a compelling business case for migrating from Oracle Database to MongoDB, highlighting the benefits of enhanced agility, scalability, flexibility, and cost-efficiency.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Agile Development and Faster Time-to-Market:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Migrating from Oracle Database to MongoDB enables businesses to embrace an agile development approach. Unlike the rigid schema structure of relational databases, MongoDB\'s flexible schema allows developers to quickly iterate and adapt their data models as business requirements evolve. This flexibility empowers development teams to deliver new features and functionalities at an accelerated pace, reducing time-to-market and gaining a competitive edge. MongoDB\'s document-oriented data model also aligns well with modern development frameworks, enabling seamless integration with popular programming languages and frameworks.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Scalability for Growing Data Volumes:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>As data volumes continue to explode, scalability becomes a critical requirement for businesses. MongoDB excels in this aspect with its horizontal scaling capabilities. By distributing data across multiple servers in a cluster, MongoDB enables seamless scalability to handle growing data workloads. This distributed architecture ensures high availability and performance, allowing businesses to handle massive amounts of data and accommodate increasing user demands without compromising performance. Scaling with MongoDB is seamless and non-disruptive, enabling businesses to future-proof their data infrastructure.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Flexible Data Modeling and Complex Data Structures:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Oracle Database follows a rigid table-based structure, requiring upfront schema design and predefined relationships. In contrast, MongoDB\'s document-oriented approach allows for flexible data modeling, accommodating evolving business needs and complex data structures. With MongoDB, businesses can store and query complex, hierarchical, and nested data structures without sacrificing performance. This flexibility simplifies application development, reduces data mapping complexities, and provides greater agility to adapt to changing data requirements.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Rich Query Capabilities and Real-time Analytics:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>MongoDB offers a powerful query language that supports rich querying capabilities, including ad hoc queries, indexing, aggregation pipelines, and geospatial queries. This enables businesses to derive real-time insights from their data, perform complex analytics, and make informed decisions. MongoDB\'s built-in sharding and replication features provide high performance and fault tolerance, ensuring that real-time analytics and reporting operations can be executed seamlessly on large datasets.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Cost-Efficiency and Total Cost of Ownership (TCO) Reduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Migrating from Oracle Database to MongoDB can significantly reduce the total cost of ownership. Oracle Database requires substantial upfront licensing and hardware investments, as well as ongoing maintenance costs. In contrast, MongoDB is open source and offers flexible licensing options, eliminating expensive licensing fees. Additionally, MongoDB\'s horizontal scalability allows businesses to scale out using cost-effective commodity hardware rather than investing in costly proprietary infrastructure. The operational simplicity and automated management features of MongoDB further contribute to cost savings by reducing administrative overhead.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Conclusion:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The migration from Oracle Database to MongoDB offers a multitude of benefits that can empower businesses to thrive in today\'s data-driven world. By embracing MongoDB\'s flexible schema, scalability, and rich query capabilities, organizations can unlock agility, accelerate development cycles, and achieve faster time-to-market. Furthermore, the ability to handle complex data structures and perform real-time analytics enables businesses to gain actionable insights and make informed decisions. Finally, the cost-efficiency and reduced total cost of ownership associated with MongoDB make it an attractive choice for organizations seeking to optimize their data infrastructure. Migrating from Oracle Database to MongoDB represents a strategic move towards modernizing data management, fostering innovation, and gaining a competitive advantage in the digital era.</p>\n<!-- /wp:paragraph -->', 'Unleashing Agility and Scalability: A Business Case for Migrating from Oracle Database to MongoDB', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2023-06-21 10:38:16', '2023-06-21 10:38:16', '', 63, 'http://redpages.solutions/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-06-21 10:38:39', '2023-06-21 10:38:39', '<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Introduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In today\'s rapidly evolving business landscape, organizations are constantly seeking innovative solutions to address their data management challenges. One such solution gaining significant traction is migrating from traditional relational databases, such as Oracle Database, to modern NoSQL databases like MongoDB. This article presents a compelling business case for migrating from Oracle Database to MongoDB, highlighting the benefits of enhanced agility, scalability, flexibility, and cost-efficiency.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Agile Development and Faster Time-to-Market:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Migrating from Oracle Database to MongoDB enables businesses to embrace an agile development approach. Unlike the rigid schema structure of relational databases, MongoDB\'s flexible schema allows developers to quickly iterate and adapt their data models as business requirements evolve. This flexibility empowers development teams to deliver new features and functionalities at an accelerated pace, reducing time-to-market and gaining a competitive edge. MongoDB\'s document-oriented data model also aligns well with modern development frameworks, enabling seamless integration with popular programming languages and frameworks.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Scalability for Growing Data Volumes:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>As data volumes continue to explode, scalability becomes a critical requirement for businesses. MongoDB excels in this aspect with its horizontal scaling capabilities. By distributing data across multiple servers in a cluster, MongoDB enables seamless scalability to handle growing data workloads. This distributed architecture ensures high availability and performance, allowing businesses to handle massive amounts of data and accommodate increasing user demands without compromising performance. Scaling with MongoDB is seamless and non-disruptive, enabling businesses to future-proof their data infrastructure.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Flexible Data Modeling and Complex Data Structures:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Oracle Database follows a rigid table-based structure, requiring upfront schema design and predefined relationships. In contrast, MongoDB\'s document-oriented approach allows for flexible data modeling, accommodating evolving business needs and complex data structures. With MongoDB, businesses can store and query complex, hierarchical, and nested data structures without sacrificing performance. This flexibility simplifies application development, reduces data mapping complexities, and provides greater agility to adapt to changing data requirements.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Rich Query Capabilities and Real-time Analytics:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>MongoDB offers a powerful query language that supports rich querying capabilities, including ad hoc queries, indexing, aggregation pipelines, and geospatial queries. This enables businesses to derive real-time insights from their data, perform complex analytics, and make informed decisions. MongoDB\'s built-in sharding and replication features provide high performance and fault tolerance, ensuring that real-time analytics and reporting operations can be executed seamlessly on large datasets.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Cost-Efficiency and Total Cost of Ownership (TCO) Reduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Migrating from Oracle Database to MongoDB can significantly reduce the total cost of ownership. Oracle Database requires substantial upfront licensing and hardware investments, as well as ongoing maintenance costs. In contrast, MongoDB is open source and offers flexible licensing options, eliminating expensive licensing fees. Additionally, MongoDB\'s horizontal scalability allows businesses to scale out using cost-effective commodity hardware rather than investing in costly proprietary infrastructure. The operational simplicity and automated management features of MongoDB further contribute to cost savings by reducing administrative overhead.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Conclusion:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The migration from Oracle Database to MongoDB offers a multitude of benefits that can empower businesses to thrive in today\'s data-driven world. By embracing MongoDB\'s flexible schema, scalability, and rich query capabilities, organizations can unlock agility, accelerate development cycles, and achieve faster time-to-market. Furthermore, the ability to handle complex data structures and perform real-time analytics enables businesses to gain actionable insights and make informed decisions. Finally, the cost-efficiency and reduced total cost of ownership associated with MongoDB make it an attractive choice for organizations seeking to optimize their data infrastructure. Migrating from Oracle Database to MongoDB represents a strategic move towards modernizing data management, fostering innovation, and gaining a competitive advantage in the digital era.</p>\n<!-- /wp:paragraph -->', 'Unleashing Agility and Scalability: A Business Case for Migrating from Oracle Database to MongoDB', 'In today\'s rapidly evolving business landscape, organizations are constantly seeking innovative solutions to address their data management challenges.', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2023-06-21 10:38:39', '2023-06-21 10:38:39', '', 63, 'http://redpages.solutions/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-06-21 10:39:08', '2023-06-21 10:39:08', '<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Introduction</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In the digital age, data has become the lifeblood of organizations. However, the true value of data lies not just in its accumulation but in its ability to be seamlessly integrated and analyzed. Universal data integration is a transformative approach that enables businesses to connect, harmonize, and leverage data from disparate sources. In this article, we delve into the diverse use cases and the wide-ranging business benefits of universal data integration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Comprehensive Customer Insights:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>One of the most compelling use cases for universal data integration is the ability to gain a comprehensive understanding of customers. By integrating data from various touchpoints like CRM systems, social media platforms, and e-commerce platforms, businesses can create a unified customer profile. This holistic view allows organizations to analyze customer behavior, preferences, and purchase history in real-time. Armed with these insights, businesses can personalize marketing campaigns, offer tailored recommendations, and deliver exceptional customer experiences, ultimately driving customer loyalty and revenue growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Operational Efficiency and Cost Reduction:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration brings together data from different systems and departments, breaking down silos and enabling cross-functional collaboration. This integration streamlines operational processes by eliminating manual data entry, reducing errors, and increasing efficiency. For example, integrating data from sales, inventory, and production systems can optimize supply chain management, ensuring accurate demand forecasting and inventory optimization. This not only reduces costs but also enhances overall operational efficiency, leading to improved productivity and profitability.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Data-Driven Decision Making:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration empowers organizations to make informed, data-driven decisions. By integrating data from diverse sources such as sales, marketing, finance, and customer service, businesses can access a holistic view of their operations. This integrated data can then be transformed into meaningful insights through analytics and reporting tools. With accurate and timely information at their fingertips, decision-makers can identify trends, patterns, and opportunities, enabling strategic planning, proactive risk management, and agile decision-making.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Seamless Business Expansion and Mergers/Acquisitions:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration plays a crucial role in business expansion and mergers/acquisitions. When organizations expand their operations or undergo mergers/acquisitions, they often inherit disparate systems and databases. Universal data integration allows businesses to bring together data from these different sources, harmonize it, and create a single source of truth. This integration facilitates smooth data migration, ensures continuity of operations, and enables the consolidation of systems and processes. As a result, organizations can quickly adapt to new markets, integrate new entities, and achieve operational synergies.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Compliance and Risk Management:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>In an increasingly regulated business landscape, universal data integration helps organizations maintain compliance and manage risks effectively. By integrating data from various sources and systems, businesses can establish robust data governance frameworks. This ensures data accuracy, security, and privacy, thus complying with industry regulations and safeguarding sensitive information. Universal data integration also enables organizations to implement comprehensive risk management strategies by facilitating real-time monitoring, early detection of anomalies, and proactive mitigation measures.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">Conclusion:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Universal data integration is a game-changer for businesses striving to thrive in a data-centric world. By seamlessly connecting and analyzing data from disparate sources, organizations can unlock valuable insights, improve operational efficiency, enhance customer experiences, and drive strategic decision-making. The benefits of universal data integration extend across industries and sectors, enabling businesses to stay competitive, adapt to changing market dynamics, and fuel growth. Embracing this transformative approach will undoubtedly empower businesses to harness the true power of their data and unlock their full potential.</p>\n<!-- /wp:paragraph -->', 'Harnessing the Power of Universal Data Integration: Unleashing Business Potential', 'In the digital age, data has become the lifeblood of organizations. However, the true value of data lies not just in its accumulation but in its ability to be seamlessly integrated and analyzed. ', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-21 10:39:08', '2023-06-21 10:39:08', '', 1, 'http://redpages.solutions/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-06-21 10:41:21', '2023-06-21 10:41:21', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:41:21"}}', '', '', 'trash', 'closed', 'closed', '', '83b80dfb-1b89-4157-80f1-d998197b2be0', '', '', '2023-06-21 10:41:21', '2023-06-21 10:41:21', '', 0, 'http://redpages.solutions/2023/06/21/83b80dfb-1b89-4157-80f1-d998197b2be0/', 0, 'customize_changeset', '', 0),
(68, 1, '2023-06-21 10:41:21', '2023-06-21 10:41:21', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:41:21', '2023-06-21 10:41:21', '', 23, 'http://redpages.solutions/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-06-21 10:47:17', '2023-06-21 10:47:17', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:47:17"}}', '', '', 'trash', 'closed', 'closed', '', 'c742a11a-4548-4d23-a6c6-7df54d10dc27', '', '', '2023-06-21 10:47:17', '2023-06-21 10:47:17', '', 0, 'http://redpages.solutions/2023/06/21/c742a11a-4548-4d23-a6c6-7df54d10dc27/', 0, 'customize_changeset', '', 0),
(70, 1, '2023-06-21 10:47:17', '2023-06-21 10:47:17', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:47:17', '2023-06-21 10:47:17', '', 23, 'http://redpages.solutions/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-06-21 10:50:00', '2023-06-21 10:50:00', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:50:00"}}', '', '', 'trash', 'closed', 'closed', '', 'fca75394-d27b-47ea-abfa-dfaa9ddc01e1', '', '', '2023-06-21 10:50:00', '2023-06-21 10:50:00', '', 0, 'http://redpages.solutions/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2023-06-21 10:50:00', '2023-06-21 10:50:00', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:50:00', '2023-06-21 10:50:00', '', 23, 'http://redpages.solutions/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-06-21 10:57:06', '2023-06-21 10:57:06', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tbackground: #111111;\\n\\tmin-height: 80vh;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:57:06"}}', '', '', 'trash', 'closed', 'closed', '', '39872006-cf32-4b35-89dc-6680a6b9fe68', '', '', '2023-06-21 10:57:06', '2023-06-21 10:57:06', '', 0, 'http://redpages.solutions/?p=73', 0, 'customize_changeset', '', 0),
(74, 1, '2023-06-21 10:57:06', '2023-06-21 10:57:06', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	background: #111111;\n	min-height: 80vh;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:57:06', '2023-06-21 10:57:06', '', 23, 'http://redpages.solutions/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-06-21 10:59:18', '2023-06-21 10:59:18', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 10:58:58"}}', '', '', 'trash', 'closed', 'closed', '', '5c5933a7-0ce0-4537-9af4-9e83685847f1', '', '', '2023-06-21 10:59:18', '2023-06-21 10:59:18', '', 0, 'http://redpages.solutions/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2023-06-21 10:59:18', '2023-06-21 10:59:18', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n#masthead{\n	background:transparent;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 10:59:18', '2023-06-21 10:59:18', '', 23, 'http://redpages.solutions/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-06-21 11:01:07', '2023-06-21 11:01:07', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:01:07"}}', '', '', 'trash', 'closed', 'closed', '', '0e558889-6876-49f0-8f20-a3be1ba17f86', '', '', '2023-06-21 11:01:07', '2023-06-21 11:01:07', '', 0, 'http://redpages.solutions/2023/06/21/0e558889-6876-49f0-8f20-a3be1ba17f86/', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2023-06-21 11:01:07', '2023-06-21 11:01:07', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:01:07', '2023-06-21 11:01:07', '', 23, 'http://redpages.solutions/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-06-21 11:02:27', '2023-06-21 11:02:27', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:02:27"}}', '', '', 'trash', 'closed', 'closed', '', '3eba8c29-7403-4607-bab0-261ea593d794', '', '', '2023-06-21 11:02:27', '2023-06-21 11:02:27', '', 0, 'http://redpages.solutions/2023/06/21/3eba8c29-7403-4607-bab0-261ea593d794/', 0, 'customize_changeset', '', 0),
(80, 1, '2023-06-21 11:02:27', '2023-06-21 11:02:27', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:02:27', '2023-06-21 11:02:27', '', 23, 'http://redpages.solutions/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-06-21 11:04:42', '2023-06-21 11:04:42', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:04:42"}}', '', '', 'trash', 'closed', 'closed', '', 'e12cccee-4c7a-4eec-8b01-a3888668f15e', '', '', '2023-06-21 11:04:42', '2023-06-21 11:04:42', '', 0, 'http://redpages.solutions/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2023-06-21 11:04:42', '2023-06-21 11:04:42', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:04:42', '2023-06-21 11:04:42', '', 23, 'http://redpages.solutions/?p=82', 0, 'revision', '', 0),
(83, 1, '2023-06-21 11:07:02', '2023-06-21 11:07:02', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:07:02"}}', '', '', 'trash', 'closed', 'closed', '', 'ecf1bd69-438d-4d43-a072-6077d9aa8916', '', '', '2023-06-21 11:07:02', '2023-06-21 11:07:02', '', 0, 'http://redpages.solutions/?p=83', 0, 'customize_changeset', '', 0),
(84, 1, '2023-06-21 11:07:02', '2023-06-21 11:07:02', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:07:02', '2023-06-21 11:07:02', '', 23, 'http://redpages.solutions/?p=84', 0, 'revision', '', 0),
(85, 1, '2023-06-21 11:08:15', '2023-06-21 11:08:15', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:08:15"}}', '', '', 'trash', 'closed', 'closed', '', 'f51f2827-8402-4838-8794-cefa9f5d20cc', '', '', '2023-06-21 11:08:15', '2023-06-21 11:08:15', '', 0, 'http://redpages.solutions/2023/06/21/f51f2827-8402-4838-8794-cefa9f5d20cc/', 0, 'customize_changeset', '', 0),
(86, 1, '2023-06-21 11:08:15', '2023-06-21 11:08:15', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:08:15', '2023-06-21 11:08:15', '', 23, 'http://redpages.solutions/?p=86', 0, 'revision', '', 0),
(87, 1, '2023-06-21 11:08:45', '2023-06-21 11:08:45', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:08:45"}}', '', '', 'trash', 'closed', 'closed', '', '4e66ecfe-bb67-4371-97cc-194aed845bd7', '', '', '2023-06-21 11:08:45', '2023-06-21 11:08:45', '', 0, 'http://redpages.solutions/2023/06/21/4e66ecfe-bb67-4371-97cc-194aed845bd7/', 0, 'customize_changeset', '', 0),
(88, 1, '2023-06-21 11:08:45', '2023-06-21 11:08:45', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:08:45', '2023-06-21 11:08:45', '', 23, 'http://redpages.solutions/?p=88', 0, 'revision', '', 0),
(89, 1, '2023-06-21 11:09:29', '2023-06-21 11:09:29', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:09:29"}}', '', '', 'trash', 'closed', 'closed', '', 'd1652818-688b-4b80-891e-77fb5a81fe3c', '', '', '2023-06-21 11:09:29', '2023-06-21 11:09:29', '', 0, 'http://redpages.solutions/2023/06/21/d1652818-688b-4b80-891e-77fb5a81fe3c/', 0, 'customize_changeset', '', 0),
(90, 1, '2023-06-21 11:09:29', '2023-06-21 11:09:29', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:09:29', '2023-06-21 11:09:29', '', 23, 'http://redpages.solutions/?p=90', 0, 'revision', '', 0),
(91, 1, '2023-06-21 11:11:07', '2023-06-21 11:11:07', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:11:07"}}', '', '', 'trash', 'closed', 'closed', '', 'dc08219e-18f9-4e35-baef-c6c59b363d28', '', '', '2023-06-21 11:11:07', '2023-06-21 11:11:07', '', 0, 'http://redpages.solutions/?p=91', 0, 'customize_changeset', '', 0),
(92, 1, '2023-06-21 11:11:07', '2023-06-21 11:11:07', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:11:07', '2023-06-21 11:11:07', '', 23, 'http://redpages.solutions/?p=92', 0, 'revision', '', 0),
(93, 1, '2023-06-21 11:12:21', '2023-06-21 11:12:21', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground: #cb001e;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:12:21"}}', '', '', 'trash', 'closed', 'closed', '', '540d3236-5414-4535-887d-e9a7f1946fd8', '', '', '2023-06-21 11:12:21', '2023-06-21 11:12:21', '', 0, 'http://redpages.solutions/2023/06/21/540d3236-5414-4535-887d-e9a7f1946fd8/', 0, 'customize_changeset', '', 0),
(94, 1, '2023-06-21 11:12:21', '2023-06-21 11:12:21', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background: #cb001e;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:12:21', '2023-06-21 11:12:21', '', 23, 'http://redpages.solutions/?p=94', 0, 'revision', '', 0),
(96, 1, '2023-06-21 11:27:06', '2023-06-21 11:27:06', '', 'RedpagesWebsite-red-bg', '', 'inherit', 'open', 'closed', '', 'redpageswebsite-red-bg', '', '', '2023-06-21 11:27:06', '2023-06-21 11:27:06', '', 0, 'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2023-06-21 11:28:51', '2023-06-21 11:28:51', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg-scaled.jpg\');\\n\\tbackground-size:100%\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:28:51"}}', '', '', 'trash', 'closed', 'closed', '', '5296c066-7d3d-47d6-98b0-f67c4b6170e6', '', '', '2023-06-21 11:28:51', '2023-06-21 11:28:51', '', 0, 'http://redpages.solutions/?p=97', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 1, '2023-06-21 11:28:51', '2023-06-21 11:28:51', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg-scaled.jpg\');\n	background-size:100%\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:28:51', '2023-06-21 11:28:51', '', 23, 'http://redpages.solutions/?p=98', 0, 'revision', '', 0),
(99, 1, '2023-06-21 11:36:11', '2023-06-21 11:36:11', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:36:11"}}', '', '', 'trash', 'closed', 'closed', '', 'c54d584b-aa03-4ea6-ad60-2939c697dc6a', '', '', '2023-06-21 11:36:11', '2023-06-21 11:36:11', '', 0, 'http://redpages.solutions/2023/06/21/c54d584b-aa03-4ea6-ad60-2939c697dc6a/', 0, 'customize_changeset', '', 0),
(100, 1, '2023-06-21 11:36:11', '2023-06-21 11:36:11', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:36:11', '2023-06-21 11:36:11', '', 23, 'http://redpages.solutions/?p=100', 0, 'revision', '', 0),
(101, 1, '2023-06-21 11:36:58', '2023-06-21 11:36:58', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-21 11:36:58"}}', '', '', 'trash', 'closed', 'closed', '', '7f4ea40b-6238-4bea-bd55-82c7ab53925d', '', '', '2023-06-21 11:36:58', '2023-06-21 11:36:58', '', 0, 'http://redpages.solutions/?p=101', 0, 'customize_changeset', '', 0),
(102, 1, '2023-06-21 11:36:58', '2023-06-21 11:36:58', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-21 11:36:58', '2023-06-21 11:36:58', '', 23, 'http://redpages.solutions/?p=102', 0, 'revision', '', 0),
(103, 1, '2023-06-21 13:39:18', '2023-06-21 13:39:18', '', 'pexels-luis-gomes-546819', '', 'inherit', 'open', 'closed', '', 'pexels-luis-gomes-546819', '', '', '2023-06-21 13:39:18', '2023-06-21 13:39:18', '', 63, 'http://redpages.solutions/wp-content/uploads/2023/06/pexels-luis-gomes-546819.jpg', 0, 'attachment', 'image/jpeg', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(104, 1, '2023-06-21 13:41:27', '2023-06-21 13:41:27', '', 'pexels-christina-morillo-1181314', '', 'inherit', 'open', 'closed', '', 'pexels-christina-morillo-1181314', '', '', '2023-06-21 13:41:27', '2023-06-21 13:41:27', '', 63, 'http://redpages.solutions/wp-content/uploads/2023/06/pexels-christina-morillo-1181314.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2023-06-22 08:09:50', '2023-06-22 08:09:50', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit "Submit"]\n[_site_title] "[your-subject]"\n[_site_title] <rori.madonko@gmail.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] "[your-subject]"\n[_site_title] <rori.madonko@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-06-22 08:09:50', '2023-06-22 08:09:50', '', 0, 'http://redpages.solutions/?post_type=wpcf7_contact_form&p=105', 0, 'wpcf7_contact_form', '', 0),
(106, 1, '2023-06-22 08:11:45', '2023-06-22 08:11:45', '{"fields":{"2":{"id":"2","type":"email","label":" ","description":"","required":"1","size":"medium","placeholder":"Email","confirmation_placeholder":"","default_value":false,"filter_type":"","allowlist":"","denylist":"","css":"m-auto"}},"id":"106","field_id":3,"settings":{"form_title":"Newsletter Signup Form","form_desc":"","submit_text":"Submit","submit_text_processing":"Sending...","form_class":"","submit_class":"","ajax_submit":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Entry: Newsletter Signup Form","sender_name":"RedPage Consulting","sender_address":"{admin_email}","replyto":"{field_id=\\"2\\"}","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"<p>Thanks for signing up for the newsletter! We\'ll be in touch soon.<\\/p>","message_scroll":"1","page":"2","redirect":""}},"antispam":"1","form_tags":[]},"meta":{"template":"4bf2a29bffb74b5530d89949041b535d"}}', 'Newsletter Signup Form', '', 'publish', 'closed', 'closed', '', 'newsletter-signup-form', '', '', '2023-06-22 08:15:17', '2023-06-22 08:15:17', '', 0, 'http://redpages.solutions/?post_type=wpforms&#038;p=106', 0, 'wpforms', '', 0),
(107, 1, '2023-06-22 08:11:49', '2023-06-22 08:11:49', '{"fields":{"1":{"id":"1","type":"name","label":"Name","format":"first-last","description":"","required":"1","size":"medium","simple_placeholder":"","simple_default":"","first_placeholder":"","first_default":"","middle_placeholder":"","middle_default":"","last_placeholder":"","last_default":"","css":""},"2":{"id":"2","type":"email","label":"Email","description":"","required":"1","size":"medium","placeholder":"","confirmation_placeholder":"","default_value":false,"filter_type":"","allowlist":"","denylist":"","css":""}},"id":"106","field_id":3,"settings":{"form_title":"Newsletter Signup Form","form_desc":"","submit_text":"Submit","submit_text_processing":"Sending...","form_class":"","submit_class":"","ajax_submit":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Entry: Newsletter Signup Form","sender_name":"RedPage Consulting","sender_address":"{admin_email}","replyto":"{field_id=\\"2\\"}","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"<p>Thanks for signing up for the newsletter! We\'ll be in touch soon.<\\/p>","message_scroll":"1","page":"2","redirect":""}},"antispam":"1","form_tags":[]},"meta":{"template":"4bf2a29bffb74b5530d89949041b535d"}}', 'Newsletter Signup Form', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2023-06-22 08:11:49', '2023-06-22 08:11:49', '', 106, 'http://redpages.solutions/?p=107', 0, 'revision', '', 0),
(108, 1, '2023-06-22 08:14:48', '2023-06-22 08:14:48', '{"fields":{"2":{"id":"2","type":"email","label":" ","description":"","required":"1","size":"medium","placeholder":"Email","confirmation_placeholder":"","default_value":false,"filter_type":"","allowlist":"","denylist":"","css":""}},"id":"106","field_id":3,"settings":{"form_title":"Newsletter Signup Form","form_desc":"","submit_text":"Submit","submit_text_processing":"Sending...","form_class":"","submit_class":"","ajax_submit":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Entry: Newsletter Signup Form","sender_name":"RedPage Consulting","sender_address":"{admin_email}","replyto":"{field_id=\\"2\\"}","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"<p>Thanks for signing up for the newsletter! We\'ll be in touch soon.<\\/p>","message_scroll":"1","page":"2","redirect":""}},"antispam":"1","form_tags":[]},"meta":{"template":"4bf2a29bffb74b5530d89949041b535d"}}', 'Newsletter Signup Form', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2023-06-22 08:14:48', '2023-06-22 08:14:48', '', 106, 'http://redpages.solutions/?p=108', 0, 'revision', '', 0),
(109, 1, '2023-06-22 08:15:17', '2023-06-22 08:15:17', '{"fields":{"2":{"id":"2","type":"email","label":" ","description":"","required":"1","size":"medium","placeholder":"Email","confirmation_placeholder":"","default_value":false,"filter_type":"","allowlist":"","denylist":"","css":"m-auto"}},"id":"106","field_id":3,"settings":{"form_title":"Newsletter Signup Form","form_desc":"","submit_text":"Submit","submit_text_processing":"Sending...","form_class":"","submit_class":"","ajax_submit":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Entry: Newsletter Signup Form","sender_name":"RedPage Consulting","sender_address":"{admin_email}","replyto":"{field_id=\\"2\\"}","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"<p>Thanks for signing up for the newsletter! We\'ll be in touch soon.<\\/p>","message_scroll":"1","page":"2","redirect":""}},"antispam":"1","form_tags":[]},"meta":{"template":"4bf2a29bffb74b5530d89949041b535d"}}', 'Newsletter Signup Form', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2023-06-22 08:15:17', '2023-06-22 08:15:17', '', 106, 'http://redpages.solutions/?p=109', 0, 'revision', '', 0),
(110, 1, '2023-06-22 08:31:29', '2023-06-22 08:31:29', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n    line-height: 28px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:31:29"}}', '', '', 'trash', 'closed', 'closed', '', '9b628f32-9365-4655-81de-db427163b77a', '', '', '2023-06-22 08:31:29', '2023-06-22 08:31:29', '', 0, 'http://redpages.solutions/2023/06/22/9b628f32-9365-4655-81de-db427163b77a/', 0, 'customize_changeset', '', 0),
(111, 1, '2023-06-22 08:31:29', '2023-06-22 08:31:29', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n    line-height: 28px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:31:29', '2023-06-22 08:31:29', '', 23, 'http://redpages.solutions/?p=111', 0, 'revision', '', 0),
(112, 1, '2023-06-22 08:34:21', '2023-06-22 08:34:21', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n    line-height: 28px;\\n}\\nfooter h6 {\\n    margin: 0px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:34:21"}}', '', '', 'trash', 'closed', 'closed', '', '65214a4d-a6f2-4ef9-ace0-88952a7c9455', '', '', '2023-06-22 08:34:21', '2023-06-22 08:34:21', '', 0, 'http://redpages.solutions/2023/06/22/65214a4d-a6f2-4ef9-ace0-88952a7c9455/', 0, 'customize_changeset', '', 0),
(113, 1, '2023-06-22 08:34:21', '2023-06-22 08:34:21', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n    line-height: 28px;\n}\nfooter h6 {\n    margin: 0px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:34:21', '2023-06-22 08:34:21', '', 23, 'http://redpages.solutions/?p=113', 0, 'revision', '', 0),
(114, 1, '2023-06-22 08:35:28', '2023-06-22 08:35:28', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n    margin: 0px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:35:28"}}', '', '', 'trash', 'closed', 'closed', '', '1dcd76e1-ab1b-4585-97f6-eae8ad5419d7', '', '', '2023-06-22 08:35:28', '2023-06-22 08:35:28', '', 0, 'http://redpages.solutions/?p=114', 0, 'customize_changeset', '', 0),
(115, 1, '2023-06-22 08:35:28', '2023-06-22 08:35:28', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n    margin: 0px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:35:28', '2023-06-22 08:35:28', '', 23, 'http://redpages.solutions/?p=115', 0, 'revision', '', 0),
(116, 1, '2023-06-22 08:35:56', '2023-06-22 08:35:56', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n    margin: 0px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:35:56"}}', '', '', 'trash', 'closed', 'closed', '', '152893a9-d322-44c2-893d-5ba5b83fda6d', '', '', '2023-06-22 08:35:56', '2023-06-22 08:35:56', '', 0, 'http://redpages.solutions/2023/06/22/152893a9-d322-44c2-893d-5ba5b83fda6d/', 0, 'customize_changeset', '', 0),
(117, 1, '2023-06-22 08:35:56', '2023-06-22 08:35:56', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n    margin: 0px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:35:56', '2023-06-22 08:35:56', '', 23, 'http://redpages.solutions/?p=117', 0, 'revision', '', 0),
(118, 1, '2023-06-22 08:36:38', '2023-06-22 08:36:38', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:36:38"}}', '', '', 'trash', 'closed', 'closed', '', 'd1db92d3-5700-4db4-b25c-5a2bf8ba346d', '', '', '2023-06-22 08:36:38', '2023-06-22 08:36:38', '', 0, 'http://redpages.solutions/2023/06/22/d1db92d3-5700-4db4-b25c-5a2bf8ba346d/', 0, 'customize_changeset', '', 0),
(119, 1, '2023-06-22 08:36:38', '2023-06-22 08:36:38', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:36:38', '2023-06-22 08:36:38', '', 23, 'http://redpages.solutions/?p=119', 0, 'revision', '', 0),
(120, 1, '2023-06-22 08:38:39', '2023-06-22 08:38:39', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n}\\nfooter .text-reset{\\n\\ttext-align:left;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:38:39"}}', '', '', 'trash', 'closed', 'closed', '', 'edd3837b-0549-409b-9b69-7452208d4802', '', '', '2023-06-22 08:38:39', '2023-06-22 08:38:39', '', 0, 'http://redpages.solutions/2023/06/22/edd3837b-0549-409b-9b69-7452208d4802/', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(121, 1, '2023-06-22 08:38:39', '2023-06-22 08:38:39', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n}\nfooter .text-reset{\n	text-align:left;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:38:39', '2023-06-22 08:38:39', '', 23, 'http://redpages.solutions/?p=121', 0, 'revision', '', 0),
(122, 1, '2023-06-22 08:39:21', '2023-06-22 08:39:21', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n\\t\\n\\ttext-align:left;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:39:21"}}', '', '', 'trash', 'closed', 'closed', '', '9bbbadb4-3865-404b-80db-18361af56431', '', '', '2023-06-22 08:39:21', '2023-06-22 08:39:21', '', 0, 'http://redpages.solutions/2023/06/22/9bbbadb4-3865-404b-80db-18361af56431/', 0, 'customize_changeset', '', 0),
(123, 1, '2023-06-22 08:39:21', '2023-06-22 08:39:21', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	\n	text-align:left;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:39:21', '2023-06-22 08:39:21', '', 23, 'http://redpages.solutions/?p=123', 0, 'revision', '', 0),
(124, 1, '2023-06-22 08:42:29', '2023-06-22 08:42:29', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n\\t\\n\\ttext-align:left;\\n}\\nfooter section:nth-child(1){\\n\\tborder-bottom:1px solid #fff;\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:42:28"}}', '', '', 'trash', 'closed', 'closed', '', '9012eea6-763e-4ff3-97f3-7c8f38f9b9ee', '', '', '2023-06-22 08:42:29', '2023-06-22 08:42:29', '', 0, 'http://redpages.solutions/?p=124', 0, 'customize_changeset', '', 0),
(125, 1, '2023-06-22 08:42:29', '2023-06-22 08:42:29', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	\n	text-align:left;\n}\nfooter section:nth-child(1){\n	border-bottom:1px solid #fff;\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:42:29', '2023-06-22 08:42:29', '', 23, 'http://redpages.solutions/?p=125', 0, 'revision', '', 0),
(126, 1, '2023-06-22 08:44:33', '2023-06-22 08:44:33', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n\\t\\n\\ttext-align:left;\\n}\\nfooter section:nth-child(1){\\n\\tborder-bottom:1px solid #fff;\\n}\\n@media (min-width: 1300px){\\n.container {\\n    max-width: 1310px;\\n}\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:44:33"}}', '', '', 'trash', 'closed', 'closed', '', '178d1bbb-541e-410f-a143-3d2c3bbe689d', '', '', '2023-06-22 08:44:33', '2023-06-22 08:44:33', '', 0, 'http://redpages.solutions/2023/06/22/178d1bbb-541e-410f-a143-3d2c3bbe689d/', 0, 'customize_changeset', '', 0),
(127, 1, '2023-06-22 08:44:34', '2023-06-22 08:44:34', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	\n	text-align:left;\n}\nfooter section:nth-child(1){\n	border-bottom:1px solid #fff;\n}\n@media (min-width: 1300px){\n.container {\n    max-width: 1310px;\n}\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:44:34', '2023-06-22 08:44:34', '', 23, 'http://redpages.solutions/?p=127', 0, 'revision', '', 0),
(128, 1, '2023-06-22 08:48:09', '2023-06-22 08:48:09', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n\\ttext-transform:uppercase;\\n\\ttext-align:left;\\n}\\nfooter section:nth-child(1){\\n\\tborder-bottom:1px solid #fff;\\n}\\nfooter .fa-solid, .fas {\\n    font-family: \\"Font Awesome 6 Free\\";\\n    font-weight: 900;\\n    color: #db1f29;\\n}\\n@media (min-width: 1300px){\\n.container {\\n    max-width: 1310px;\\n}\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:48:09"}}', '', '', 'trash', 'closed', 'closed', '', '4ccc1cb9-a87c-4d99-badc-3ba6d75cde98', '', '', '2023-06-22 08:48:09', '2023-06-22 08:48:09', '', 0, 'http://redpages.solutions/2023/06/22/4ccc1cb9-a87c-4d99-badc-3ba6d75cde98/', 0, 'customize_changeset', '', 0),
(129, 1, '2023-06-22 08:48:09', '2023-06-22 08:48:09', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	text-transform:uppercase;\n	text-align:left;\n}\nfooter section:nth-child(1){\n	border-bottom:1px solid #fff;\n}\nfooter .fa-solid, .fas {\n    font-family: "Font Awesome 6 Free";\n    font-weight: 900;\n    color: #db1f29;\n}\n@media (min-width: 1300px){\n.container {\n    max-width: 1310px;\n}\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:48:09', '2023-06-22 08:48:09', '', 23, 'http://redpages.solutions/?p=129', 0, 'revision', '', 0),
(130, 1, '2023-06-22 08:49:06', '2023-06-22 08:49:06', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n\\ttext-transform:uppercase;\\n\\ttext-align:left;\\n}\\nfooter section:nth-child(1){\\n\\tborder-bottom:1px solid #fff;\\n}\\nfooter .fa-solid, .fas {\\n    font-family: \\"Font Awesome 6 Free\\";\\n    font-weight: 900;\\n    color: #db1f29;\\n}\\n.fa-skype::before {\\n    content: \\"\\\\f17e\\";\\n    position: absolute;\\n    margin-top: -23px;\\n    font-size: 30px;\\n}\\n@media (min-width: 1300px){\\n.container {\\n    max-width: 1310px;\\n}\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:49:06"}}', '', '', 'trash', 'closed', 'closed', '', '3bb27a13-fd14-4079-af8f-950dc42195a6', '', '', '2023-06-22 08:49:06', '2023-06-22 08:49:06', '', 0, 'http://redpages.solutions/2023/06/22/3bb27a13-fd14-4079-af8f-950dc42195a6/', 0, 'customize_changeset', '', 0),
(131, 1, '2023-06-22 08:49:06', '2023-06-22 08:49:06', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	text-transform:uppercase;\n	text-align:left;\n}\nfooter section:nth-child(1){\n	border-bottom:1px solid #fff;\n}\nfooter .fa-solid, .fas {\n    font-family: "Font Awesome 6 Free";\n    font-weight: 900;\n    color: #db1f29;\n}\n.fa-skype::before {\n    content: "\\f17e";\n    position: absolute;\n    margin-top: -23px;\n    font-size: 30px;\n}\n@media (min-width: 1300px){\n.container {\n    max-width: 1310px;\n}\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:49:06', '2023-06-22 08:49:06', '', 23, 'http://redpages.solutions/?p=131', 0, 'revision', '', 0),
(132, 1, '2023-06-22 08:50:19', '2023-06-22 08:50:19', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n\\ttext-transform:uppercase;\\n\\ttext-align:left;\\n}\\nfooter section:nth-child(1){\\n\\tborder-bottom:1px solid #fff;\\n}\\nfooter .fa-solid, .fas {\\n    font-family: \\"Font Awesome 6 Free\\";\\n    font-weight: 900;\\n    color: #db1f29;\\n}\\n.fa-skype::before {\\n    content: \\"\\\\f17e\\";\\n    position: absolute;\\n    margin-top: -23px;\\n    font-size: 30px;\\n}\\n.scrooltotop a {\\n    background: #fff;\\n    color: #db1f29;\\n}\\n@media (min-width: 1300px){\\n.container {\\n    max-width: 1310px;\\n}\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:50:19"}}', '', '', 'trash', 'closed', 'closed', '', '81b2606d-a659-4f5c-9a23-3e8b9f8353eb', '', '', '2023-06-22 08:50:19', '2023-06-22 08:50:19', '', 0, 'http://redpages.solutions/2023/06/22/81b2606d-a659-4f5c-9a23-3e8b9f8353eb/', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(133, 1, '2023-06-22 08:50:19', '2023-06-22 08:50:19', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	text-transform:uppercase;\n	text-align:left;\n}\nfooter section:nth-child(1){\n	border-bottom:1px solid #fff;\n}\nfooter .fa-solid, .fas {\n    font-family: "Font Awesome 6 Free";\n    font-weight: 900;\n    color: #db1f29;\n}\n.fa-skype::before {\n    content: "\\f17e";\n    position: absolute;\n    margin-top: -23px;\n    font-size: 30px;\n}\n.scrooltotop a {\n    background: #fff;\n    color: #db1f29;\n}\n@media (min-width: 1300px){\n.container {\n    max-width: 1310px;\n}\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:50:19', '2023-06-22 08:50:19', '', 23, 'http://redpages.solutions/?p=133', 0, 'revision', '', 0),
(134, 1, '2023-06-22 08:52:07', '2023-06-22 08:52:07', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n\\ttext-transform:uppercase;\\n\\ttext-align:left;\\n}\\nfooter section:nth-child(1){\\n\\tborder-bottom:1px solid #fff;\\n}\\nfooter .fa-solid, .fas {\\n    font-family: \\"Font Awesome 6 Free\\";\\n    font-weight: 900;\\n    color: #db1f29;\\n}\\n.fa-skype::before {\\n    content: \\"\\\\f17e\\";\\n    position: absolute;\\n    margin-top: -23px;\\n    font-size: 30px;\\n}\\n.scrooltotop a {\\n    background: #fff;\\n    color: #db1f29;\\n}\\n#cssmenu>ul>li>a {\\n    padding: 1.0625rem;\\n    letter-spacing: 0.0625rem;\\n    text-decoration: none;\\n    color: #d81e27 !important;\\n    font-weight: 400;\\n    text-transform: uppercase;\\n    transition: .4s;\\n    font-size: 18px;\\n}\\n@media (min-width: 1300px){\\n.container {\\n    max-width: 1310px;\\n}\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:52:07"}}', '', '', 'trash', 'closed', 'closed', '', '94d5397a-2b56-4ffa-a5f2-96c7dd2faf84', '', '', '2023-06-22 08:52:07', '2023-06-22 08:52:07', '', 0, 'http://redpages.solutions/2023/06/22/94d5397a-2b56-4ffa-a5f2-96c7dd2faf84/', 0, 'customize_changeset', '', 0),
(135, 1, '2023-06-22 08:52:07', '2023-06-22 08:52:07', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	text-transform:uppercase;\n	text-align:left;\n}\nfooter section:nth-child(1){\n	border-bottom:1px solid #fff;\n}\nfooter .fa-solid, .fas {\n    font-family: "Font Awesome 6 Free";\n    font-weight: 900;\n    color: #db1f29;\n}\n.fa-skype::before {\n    content: "\\f17e";\n    position: absolute;\n    margin-top: -23px;\n    font-size: 30px;\n}\n.scrooltotop a {\n    background: #fff;\n    color: #db1f29;\n}\n#cssmenu>ul>li>a {\n    padding: 1.0625rem;\n    letter-spacing: 0.0625rem;\n    text-decoration: none;\n    color: #d81e27 !important;\n    font-weight: 400;\n    text-transform: uppercase;\n    transition: .4s;\n    font-size: 18px;\n}\n@media (min-width: 1300px){\n.container {\n    max-width: 1310px;\n}\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:52:07', '2023-06-22 08:52:07', '', 23, 'http://redpages.solutions/?p=135', 0, 'revision', '', 0),
(143, 1, '2023-06-22 08:55:37', '2023-06-22 08:55:37', '{"custom_css[tech-blogging]":{"value":".book-display-area{\\n\\tbackground:#8b080f;\\n}\\n.book-text h2 {\\n\\tcolor: #fff;\\n}\\n.book-text p {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\\n\\tbackground: #000;\\n}\\narticle .post-author {\\n\\tdisplay: none !important;\\n}\\n#comments {\\n\\tdisplay: none;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n}\\n.post-details-page article {\\n\\tbackground: #151515;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post__thumbnail{\\n\\twidth:100%;\\n}\\n.single .tech-blogging-standard-post__thumbnail img {\\n\\tdisplay: block;\\n\\tmargin: 100px auto;\\n\\tborder-radius: 0px;\\n}\\n.single-post-navigation {\\n\\tmargin-top: 30px;\\n\\tdisplay: none !important;\\n\\tborder-bottom: 1px solid #fff;\\n}\\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\\n\\tdisplay: none;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tcolor: #242323;\\n\\ttext-decoration: none;\\n\\tbackground-size: 100% 3px;\\n\\toutline: none;\\n\\tbackground: #fff;\\n\\tcolor: #db1f29;\\n}\\n.tech-blogging-standard-post__post-title h3 {\\n\\tfont-size: 18px !important;\\n\\tfont-family: Montserrat;\\n\\tfont-weight: 400;\\n}\\n.book-display-area {\\n\\tmin-height: 80vh;\\n\\tbackground:transparent;\\n}\\n#page{\\n\\tbackground: #111111;\\n}\\n.site-main {\\n\\tbackground-color: #cb001e;\\n\\tbackground-image:url(\'http:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/RedpagesWebsite-red-bg.jpg\');\\n\\tbackground-size:100%\\n}\\n.blog-post-section > .container > .row > .col-md-12 {\\n\\tmax-width: 79%;\\n\\tmargin:auto\\n}\\n#masthead{\\n\\tbackground:transparent;\\n}\\n.tech-blogging-standard-post__entry-content {\\n\\tpadding: 0;\\n\\tborder: none;\\n\\tpadding: 20px;\\n\\tbackground: #000;\\n}\\n.tech-blogging-standard-post__post-title a h3{\\n\\tcolor:#fff;\\n}\\n.tech-blogging-standard-post__content-wrapper {\\n\\tpadding: 1.22rem 0px;\\n}\\n.post__post-title .post__post-title a:hover h3{\\n\\tcolor: #db1f29;\\nbackground: transparent;\\n}\\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\\n\\tdisplay: inline-block;\\n\\tvertical-align: top;\\n\\tcolor: #fff;\\n}\\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\\n\\tborder: 0px solid #ffffff;\\n\\tpadding: 0;\\n\\tborder-radius: 3px;\\n\\tbackground: #ffffff;\\n\\tbox-shadow: 0 0 50px -10px rgb(0 0 0 \\/ 10%);\\n}\\nheader.header-three {\\n\\tpadding: 1.2rem 0;\\n\\tborder-bottom: 0px solid #f1f1f1;\\n\\tbackground: #ffffff;\\n}\\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\\n\\tbackground: transparent;\\n}\\n.cat-links {\\n\\tdisplay: none;\\n}\\nfooter p {\\n    margin: 0px;\\n    text-align: left;\\n}\\nfooter p a{\\n\\ttext-decoration:none;\\n    color: rgba(255, 255, 255, 0.5);\\n}\\nfooter p {\\n    margin-top: 0;\\n    margin-bottom: 0rem;\\n    color: rgba(255, 255, 255, 0.5);\\n    font-size: 15px;\\n}\\nfooter h6 {\\n\\tcolor:#db1f29;\\n    margin: 0px;\\n\\ttext-transform:uppercase;\\n\\ttext-align:left;\\n}\\nfooter section:nth-child(1){\\n\\tborder-bottom:1px solid #fff;\\n}\\nfooter .fa-solid, .fas {\\n    font-family: \\"Font Awesome 6 Free\\";\\n    font-weight: 900;\\n    color: #db1f29;\\n}\\n.fa-skype::before {\\n    content: \\"\\\\f17e\\";\\n    position: absolute;\\n    margin-top: -23px;\\n    font-size: 30px;\\n}\\n.scrooltotop a {\\n    background: #fff;\\n    color: #db1f29;\\n}\\n#cssmenu>ul>li>a {\\n    padding: 1.0625rem;\\n    letter-spacing: 0.0625rem;\\n    text-decoration: none;\\n    color: #d81e27 !important;\\n    font-weight: 400;\\n    text-transform: uppercase;\\n    transition: .4s;\\n    font-size: 18px;\\n}\\na:visited {\\n    color: unset;\\n    text-decoration: none;\\n}\\n@media (min-width: 1300px){\\n.container {\\n    max-width: 1310px;\\n}\\n}","type":"custom_css","user_id":1,"date_modified_gmt":"2023-06-22 08:55:23"}}', '', '', 'trash', 'closed', 'closed', '', '26435501-ef87-4c05-83b7-0d9bd1cb9971', '', '', '2023-06-22 08:55:37', '2023-06-22 08:55:37', '', 0, 'http://redpages.solutions/?p=143', 0, 'customize_changeset', '', 0),
(144, 1, '2023-06-22 08:55:37', '2023-06-22 08:55:37', '.book-display-area{\n	background:#8b080f;\n}\n.book-text h2 {\n	color: #fff;\n}\n.book-text p {\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta .cat-links a:focus, .tech-blogging-standard-post__blog-meta .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:hover, .post_categories_on_thumbnail .cat-links a:focus {\n	background: #000;\n}\narticle .post-author {\n	display: none !important;\n}\n#comments {\n	display: none;\n}\n.single-post-navigation {\n	margin-top: 30px;\n}\n.post-details-page article {\n	background: #151515;\n	color: #fff;\n}\n.tech-blogging-standard-post__blog-meta > span.posted-on a {\n	color: #fff;\n}\n.tech-blogging-standard-post__thumbnail{\n	width:100%;\n}\n.single .tech-blogging-standard-post__thumbnail img {\n	display: block;\n	margin: 100px auto;\n	border-radius: 0px;\n}\n.single-post-navigation {\n	margin-top: 30px;\n	display: none !important;\n	border-bottom: 1px solid #fff;\n}\n.tech-blogging-standard-post.has-post-thumbnail .tech-blogging-standard-post__post-title p {\n	display: none;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	color: #242323;\n	text-decoration: none;\n	background-size: 100% 3px;\n	outline: none;\n	background: #fff;\n	color: #db1f29;\n}\n.tech-blogging-standard-post__post-title h3 {\n	font-size: 18px !important;\n	font-family: Montserrat;\n	font-weight: 400;\n}\n.book-display-area {\n	min-height: 80vh;\n	background:transparent;\n}\n#page{\n	background: #111111;\n}\n.site-main {\n	background-color: #cb001e;\n	background-image:url(\'http://redpages.solutions/wp-content/uploads/2023/06/RedpagesWebsite-red-bg.jpg\');\n	background-size:100%\n}\n.blog-post-section > .container > .row > .col-md-12 {\n	max-width: 79%;\n	margin:auto\n}\n#masthead{\n	background:transparent;\n}\n.tech-blogging-standard-post__entry-content {\n	padding: 0;\n	border: none;\n	padding: 20px;\n	background: #000;\n}\n.tech-blogging-standard-post__post-title a h3{\n	color:#fff;\n}\n.tech-blogging-standard-post__content-wrapper {\n	padding: 1.22rem 0px;\n}\n.post__post-title .post__post-title a:hover h3{\n	color: #db1f29;\nbackground: transparent;\n}\n.tech-blogging-standard-post__blog-meta > span.posted_by a i {\n	display: inline-block;\n	vertical-align: top;\n	color: #fff;\n}\n.tech-blogging-standard-post.no-post-thumbnail, .tech-blogging-standard-post {\n	border: 0px solid #ffffff;\n	padding: 0;\n	border-radius: 3px;\n	background: #ffffff;\n	box-shadow: 0 0 50px -10px rgb(0 0 0 / 10%);\n}\nheader.header-three {\n	padding: 1.2rem 0;\n	border-bottom: 0px solid #f1f1f1;\n	background: #ffffff;\n}\n.tech-blogging-standard-post__post-title a:hover h2, .tech-blogging-standard-post__post-title a:hover h3, .tech-blogging-standard-post__post-title a:focus h2, .tech-blogging-standard-post__post-title a:focus h3 {\n	background: transparent;\n}\n.cat-links {\n	display: none;\n}\nfooter p {\n    margin: 0px;\n    text-align: left;\n}\nfooter p a{\n	text-decoration:none;\n    color: rgba(255, 255, 255, 0.5);\n}\nfooter p {\n    margin-top: 0;\n    margin-bottom: 0rem;\n    color: rgba(255, 255, 255, 0.5);\n    font-size: 15px;\n}\nfooter h6 {\n	color:#db1f29;\n    margin: 0px;\n	text-transform:uppercase;\n	text-align:left;\n}\nfooter section:nth-child(1){\n	border-bottom:1px solid #fff;\n}\nfooter .fa-solid, .fas {\n    font-family: "Font Awesome 6 Free";\n    font-weight: 900;\n    color: #db1f29;\n}\n.fa-skype::before {\n    content: "\\f17e";\n    position: absolute;\n    margin-top: -23px;\n    font-size: 30px;\n}\n.scrooltotop a {\n    background: #fff;\n    color: #db1f29;\n}\n#cssmenu>ul>li>a {\n    padding: 1.0625rem;\n    letter-spacing: 0.0625rem;\n    text-decoration: none;\n    color: #d81e27 !important;\n    font-weight: 400;\n    text-transform: uppercase;\n    transition: .4s;\n    font-size: 18px;\n}\na:visited {\n    color: unset;\n    text-decoration: none;\n}\n@media (min-width: 1300px){\n.container {\n    max-width: 1310px;\n}\n}', 'tech-blogging', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2023-06-22 08:55:37', '2023-06-22 08:55:37', '', 23, 'http://redpages.solutions/?p=144', 0, 'revision', '', 0),
(145, 1, '2023-06-22 09:03:01', '2023-06-22 09:03:01', '{"show_on_front":{"value":"posts","type":"option","user_id":1,"date_modified_gmt":"2023-06-22 09:03:01"}}', '', '', 'trash', 'closed', 'closed', '', '6960cefe-bc1e-49b0-b37a-406a046eed04', '', '', '2023-06-22 09:03:01', '2023-06-22 09:03:01', '', 0, 'http://redpages.solutions/2023/06/22/6960cefe-bc1e-49b0-b37a-406a046eed04/', 0, 'customize_changeset', '', 0),
(146, 1, '2023-06-22 09:19:27', '2023-06-22 09:16:58', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-06-22 09:19:27', '2023-06-22 09:19:27', '', 0, 'https://redpages.solutions/?p=146', 1, 'nav_menu_item', '', 0),
(148, 1, '2023-06-22 09:19:28', '2023-06-22 09:19:16', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog-2', '', '', '2023-06-22 09:19:28', '2023-06-22 09:19:28', '', 0, 'https://redpages.solutions/?p=148', 2, 'nav_menu_item', '', 0),
(149, 1, '2023-06-28 13:11:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-28 13:11:03', '0000-00-00 00:00:00', '', 0, 'https://redpages.solutions/?p=149', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_rank_math_internal_links`
#

DROP TABLE IF EXISTS `wp_rank_math_internal_links`;


#
# Table structure of table `wp_rank_math_internal_links`
#

CREATE TABLE `wp_rank_math_internal_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_rank_math_internal_links`
#

#
# End of data contents of table `wp_rank_math_internal_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_rank_math_internal_meta`
#

DROP TABLE IF EXISTS `wp_rank_math_internal_meta`;


#
# Table structure of table `wp_rank_math_internal_meta`
#

CREATE TABLE `wp_rank_math_internal_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT 0,
  `external_link_count` int(10) unsigned DEFAULT 0,
  `incoming_link_count` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_rank_math_internal_meta`
#

#
# End of data contents of table `wp_rank_math_internal_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(63, 1, 0),
(146, 2, 0),
(148, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main', 'main', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'benjadmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:"2e152218c1e899809961f248ccd61eb17cb4a068d8b95c6f950c986854c5e26a";a:4:{s:10:"expiration";i:1688130659;s:2:"ip";s:12:"165.73.45.77";s:2:"ua";s:84:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/114.0";s:5:"login";i:1687957859;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '149'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:"core/edit-post";a:3:{s:26:"isComplementaryAreaVisible";b:1;s:12:"welcomeGuide";b:0;s:10:"openPanels";a:7:{i:0;s:11:"post-status";i:1;s:14:"featured-image";i:2;s:23:"taxonomy-panel-category";i:3;s:23:"taxonomy-panel-post_tag";i:4;s:24:"yoast-seo/document-panel";i:5;s:12:"post-excerpt";i:6;s:16:"discussion-panel";}}s:9:"_modified";s:24:"2023-06-21T13:43:19.580Z";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1687337934'),
(21, 1, 'manageedit-postcolumnshidden', 'a:3:{i:0;s:0:"";i:1;s:15:"rank_math_title";i:2;s:21:"rank_math_description";}'),
(22, 1, 'manageedit-postcolumnshidden_default', '1'),
(23, 1, 'manageedit-pagecolumnshidden', 'a:3:{i:0;s:0:"";i:1;s:15:"rank_math_title";i:2;s:21:"rank_math_description";}'),
(24, 1, 'manageedit-pagecolumnshidden_default', '1'),
(25, 1, 'meta-box-order_post', 'a:2:{i:0;b:0;s:4:"side";s:38:"submitdiv,rank_math_metabox_content_ai";}'),
(26, 1, 'wfls-last-login', '1687957859'),
(27, 1, 'community-events-location', 'a:1:{s:2:"ip";s:11:"165.73.45.0";}'),
(28, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(29, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:13:"add-media_tag";}'),
(30, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:"message";O:61:"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter":6:{s:18:"\0*\0total_unindexed";i:6;s:9:"\0*\0reason";s:26:"permalink_settings_changed";s:20:"\0*\0short_link_helper";O:38:"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper":2:{s:17:"\0*\0options_helper";O:35:"Yoast\\WP\\SEO\\Helpers\\Options_Helper":0:{}s:17:"\0*\0product_helper";O:35:"Yoast\\WP\\SEO\\Helpers\\Product_Helper":0:{}}s:15:"total_unindexed";i:6;s:6:"reason";s:26:"permalink_settings_changed";s:17:"short_link_helper";O:38:"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper":4:{s:17:"\0*\0options_helper";r:7;s:17:"\0*\0product_helper";r:8;s:14:"options_helper";O:35:"Yoast\\WP\\SEO\\Helpers\\Options_Helper":0:{}s:14:"product_helper";O:35:"Yoast\\WP\\SEO\\Helpers\\Product_Helper":0:{}}}s:7:"options";a:10:{s:4:"type";s:7:"warning";s:2:"id";s:13:"wpseo-reindex";s:4:"user";O:7:"WP_User":8:{s:4:"data";O:8:"stdClass":10:{s:2:"ID";s:1:"1";s:10:"user_login";s:9:"benjadmin";s:9:"user_pass";s:34:"$P$BjHJzQDToSJXUWOYA.8oDLPP777JZS1";s:13:"user_nicename";s:9:"benjadmin";s:10:"user_email";s:22:"rori.madonko@gmail.com";s:8:"user_url";s:25:"http://redpages.solutions";s:15:"user_registered";s:19:"2023-06-21 08:14:31";s:19:"user_activation_key";s:0:"";s:11:"user_status";s:1:"0";s:12:"display_name";s:9:"benjadmin";}s:2:"ID";i:1;s:4:"caps";a:1:{s:13:"administrator";b:1;}s:7:"cap_key";s:15:"wp_capabilities";s:5:"roles";a:1:{i:0;s:13:"administrator";}s:7:"allcaps";a:85:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:11:"simple_tags";b:1;s:17:"admin_simple_tags";b:1;s:23:"rank_math_edit_htaccess";b:1;s:16:"rank_math_titles";b:1;s:17:"rank_math_general";b:1;s:17:"rank_math_sitemap";b:1;s:21:"rank_math_404_monitor";b:1;s:22:"rank_math_link_builder";b:1;s:22:"rank_math_redirections";b:1;s:22:"rank_math_role_manager";b:1;s:19:"rank_math_analytics";b:1;s:23:"rank_math_site_analysis";b:1;s:25:"rank_math_onpage_analysis";b:1;s:24:"rank_math_onpage_general";b:1;s:25:"rank_math_onpage_advanced";b:1;s:24:"rank_math_onpage_snippet";b:1;s:23:"rank_math_onpage_social";b:1;s:20:"rank_math_content_ai";b:1;s:19:"rank_math_admin_bar";b:1;s:20:"wpseo_manage_options";b:1;s:23:"wf2fa_activate_2fa_self";b:1;s:25:"wf2fa_activate_2fa_others";b:1;s:21:"wf2fa_manage_settings";b:1;s:13:"administrator";b:1;}s:6:"filter";N;s:16:"\0WP_User\0site_id";i:1;}s:5:"nonce";N;s:8:"priority";d:0.8000000000000000444089209850062616169452667236328125;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";s:14:"yoast_branding";b:0;}}}'),
(31, 1, '_taxopress_reviews_dismissed_triggers', 'a:1:{s:14:"time_installed";s:2:"10";}'),
(32, 1, '_taxopress_reviews_last_dismissed', '2023-06-28 13:11:21'),
(33, 1, 'wpforms_dash_widget_hide_graph', '1') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'benjadmin', '$P$BjHJzQDToSJXUWOYA.8oDLPP777JZS1', 'benjadmin', 'rori.madonko@gmail.com', 'http://redpages.solutions', '2023-06-21 08:14:31', '', 0, 'benjadmin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfblockediplog`
#

DROP TABLE IF EXISTS `wp_wfblockediplog`;


#
# Table structure of table `wp_wfblockediplog`
#

CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) unsigned NOT NULL DEFAULT 0,
  `unixday` int(10) unsigned NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic',
  PRIMARY KEY (`IP`,`unixday`,`blockType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfblockediplog`
#

#
# End of data contents of table `wp_wfblockediplog`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfblocks7`
#

DROP TABLE IF EXISTS `wp_wfblocks7`;


#
# Table structure of table `wp_wfblocks7`
#

CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) unsigned DEFAULT 0,
  `blockedHits` int(10) unsigned DEFAULT 0,
  `expiration` bigint(20) unsigned NOT NULL DEFAULT 0,
  `parameters` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `IP` (`IP`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfblocks7`
#

#
# End of data contents of table `wp_wfblocks7`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfconfig`
#

DROP TABLE IF EXISTS `wp_wfconfig`;


#
# Table structure of table `wp_wfconfig`
#

CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfconfig`
#
INSERT INTO `wp_wfconfig` ( `name`, `val`, `autoload`) VALUES
('activatingIP', '::1', 'yes'),
('actUpdateInterval', '2', 'yes'),
('addCacheComment', '0', 'yes'),
('advancedCommentScanning', '1', 'yes'),
('ajaxWatcherDisabled_admin', '0', 'yes'),
('ajaxWatcherDisabled_front', '0', 'yes'),
('alertEmails', '', 'yes'),
('alertOn_adminLogin', '1', 'yes'),
('alertOn_block', '1', 'yes'),
('alertOn_breachLogin', '1', 'yes'),
('alertOn_firstAdminLoginOnly', '0', 'yes'),
('alertOn_firstNonAdminLoginOnly', '0', 'yes'),
('alertOn_loginLockout', '1', 'yes'),
('alertOn_lostPasswdForm', '1', 'yes'),
('alertOn_nonAdminLogin', '0', 'yes'),
('alertOn_scanIssues', '1', 'yes'),
('alertOn_severityLevel', '25', 'yes'),
('alertOn_throttle', '0', 'yes'),
('alertOn_update', '0', 'yes'),
('alertOn_wafDeactivated', '1', 'yes'),
('alertOn_wordfenceDeactivated', '1', 'yes'),
('alert_maxHourly', '0', 'yes'),
('allowed404s', '/favicon.ico\n/apple-touch-icon*.png\n/*@2x.png\n/browserconfig.xml', 'yes'),
('allowed404s6116Migration', '1', 'yes'),
('allowHTTPSCaching', '0', 'yes'),
('allowLegacy2FA', '0', 'yes'),
('allowMySQLi', '1', 'yes'),
('allScansScheduled', 'a:0:{}', 'yes'),
('apiKey', '', 'yes'),
('autoBlockScanners', '1', 'yes'),
('autoUpdate', '0', 'yes'),
('autoUpdateAttempts', '0', 'yes'),
('bannedURLs', '', 'yes'),
('blockCustomText', '', 'yes'),
('blockedTime', '300', 'yes'),
('blocks702Migration', '1', 'yes'),
('cacheType', 'disabled', 'yes'),
('cbl_action', 'block', 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', '6492faff65492', 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', '1', 'yes'),
('checkSpamIP', '1', 'yes'),
('config701Migration', '1', 'yes'),
('config720Migration', '1', 'yes'),
('dashboardData', 'a:4:{s:9:"generated";i:1687422396;s:3:"tdf";a:3:{s:9:"community";i:5517;s:7:"premium";i:5580;s:9:"blacklist";i:12027;}s:10:"attackdata";a:3:{s:3:"24h";a:24:{i:0;a:2:{s:1:"t";i:1687334400;s:1:"c";i:8203100;}i:1;a:2:{s:1:"t";i:1687338000;s:1:"c";i:7945062;}i:2;a:2:{s:1:"t";i:1687341600;s:1:"c";i:7961585;}i:3;a:2:{s:1:"t";i:1687345200;s:1:"c";i:8159246;}i:4;a:2:{s:1:"t";i:1687348800;s:1:"c";i:8526794;}i:5;a:2:{s:1:"t";i:1687352400;s:1:"c";i:11154991;}i:6;a:2:{s:1:"t";i:1687356000;s:1:"c";i:11427371;}i:7;a:2:{s:1:"t";i:1687359600;s:1:"c";i:10863727;}i:8;a:2:{s:1:"t";i:1687363200;s:1:"c";i:10298135;}i:9;a:2:{s:1:"t";i:1687366800;s:1:"c";i:13379194;}i:10;a:2:{s:1:"t";i:1687370400;s:1:"c";i:15944661;}i:11;a:2:{s:1:"t";i:1687374000;s:1:"c";i:18756064;}i:12;a:2:{s:1:"t";i:1687377600;s:1:"c";i:18638122;}i:13;a:2:{s:1:"t";i:1687381200;s:1:"c";i:16252333;}i:14;a:2:{s:1:"t";i:1687384800;s:1:"c";i:14566992;}i:15;a:2:{s:1:"t";i:1687388400;s:1:"c";i:13602637;}i:16;a:2:{s:1:"t";i:1687392000;s:1:"c";i:12894599;}i:17;a:2:{s:1:"t";i:1687395600;s:1:"c";i:12465815;}i:18;a:2:{s:1:"t";i:1687399200;s:1:"c";i:13321671;}i:19;a:2:{s:1:"t";i:1687402800;s:1:"c";i:13285949;}i:20;a:2:{s:1:"t";i:1687406400;s:1:"c";i:12556284;}i:21;a:2:{s:1:"t";i:1687410000;s:1:"c";i:12638573;}i:22;a:2:{s:1:"t";i:1687413600;s:1:"c";i:14345269;}i:23;a:2:{s:1:"t";i:1687417200;s:1:"c";i:15799328;}}s:2:"7d";a:7:{i:0;a:2:{s:1:"t";i:1686787200;s:1:"c";i:109772599;}i:1;a:2:{s:1:"t";i:1686873600;s:1:"c";i:344125951;}i:2;a:2:{s:1:"t";i:1686960000;s:1:"c";i:331714398;}i:3;a:2:{s:1:"t";i:1687046400;s:1:"c";i:401900609;}i:4;a:2:{s:1:"t";i:1687132800;s:1:"c";i:275983662;}i:5;a:2:{s:1:"t";i:1687219200;s:1:"c";i:320757836;}i:6;a:2:{s:1:"t";i:1687305600;s:1:"c";i:265342825;}}s:3:"30d";a:30:{i:0;a:2:{s:1:"t";i:1684800000;s:1:"c";i:317682052;}i:1;a:2:{s:1:"t";i:1684886400;s:1:"c";i:342724570;}i:2;a:2:{s:1:"t";i:1684972800;s:1:"c";i:345574690;}i:3;a:2:{s:1:"t";i:1685059200;s:1:"c";i:294260158;}i:4;a:2:{s:1:"t";i:1685145600;s:1:"c";i:351311978;}i:5;a:2:{s:1:"t";i:1685232000;s:1:"c";i:417566126;}i:6;a:2:{s:1:"t";i:1685318400;s:1:"c";i:116590501;}i:7;a:2:{s:1:"t";i:1685404800;s:1:"c";i:115596665;}i:8;a:2:{s:1:"t";i:1685491200;s:1:"c";i:287808617;}i:9;a:2:{s:1:"t";i:1685577600;s:1:"c";i:306222838;}i:10;a:2:{s:1:"t";i:1685664000;s:1:"c";i:281312284;}i:11;a:2:{s:1:"t";i:1685750400;s:1:"c";i:273108031;}i:12;a:2:{s:1:"t";i:1685836800;s:1:"c";i:341168774;}i:13;a:2:{s:1:"t";i:1685923200;s:1:"c";i:274073740;}i:14;a:2:{s:1:"t";i:1686009600;s:1:"c";i:318740961;}i:15;a:2:{s:1:"t";i:1686096000;s:1:"c";i:307488211;}i:16;a:2:{s:1:"t";i:1686182400;s:1:"c";i:99342957;}i:17;a:2:{s:1:"t";i:1686268800;s:1:"c";i:380017178;}i:18;a:2:{s:1:"t";i:1686355200;s:1:"c";i:183021513;}i:19;a:2:{s:1:"t";i:1686441600;s:1:"c";i:269712154;}i:20;a:2:{s:1:"t";i:1686528000;s:1:"c";i:106068466;}i:21;a:2:{s:1:"t";i:1686614400;s:1:"c";i:111549927;}i:22;a:2:{s:1:"t";i:1686700800;s:1:"c";i:123692559;}i:23;a:2:{s:1:"t";i:1686787200;s:1:"c";i:109772599;}i:24;a:2:{s:1:"t";i:1686873600;s:1:"c";i:344125951;}i:25;a:2:{s:1:"t";i:1686960000;s:1:"c";i:331714398;}i:26;a:2:{s:1:"t";i:1687046400;s:1:"c";i:401900609;}i:27;a:2:{s:1:"t";i:1687132800;s:1:"c";i:275983662;}i:28;a:2:{s:1:"t";i:1687219200;s:1:"c";i:320757836;}i:29;a:2:{s:1:"t";i:1687305600;s:1:"c";i:265342825;}}}s:9:"countries";a:1:{s:2:"7d";a:10:{i:0;a:2:{s:2:"cd";s:2:"US";s:2:"ct";i:630748807;}i:1;a:2:{s:2:"cd";s:2:"SG";s:2:"ct";i:252345606;}i:2;a:2:{s:2:"cd";s:2:"DE";s:2:"ct";i:184923575;}i:3;a:2:{s:2:"cd";s:2:"FR";s:2:"ct";i:110660840;}i:4;a:2:{s:2:"cd";s:2:"IN";s:2:"ct";i:108402582;}i:5;a:2:{s:2:"cd";s:2:"CN";s:2:"ct";i:66866767;}i:6;a:2:{s:2:"cd";s:2:"NL";s:2:"ct";i:63080265;}i:7;a:2:{s:2:"cd";s:2:"VN";s:2:"ct";i:61088424;}i:8;a:2:{s:2:"cd";s:2:"RU";s:2:"ct";i:53112629;}i:9;a:2:{s:2:"cd";s:2:"GB";s:2:"ct";i:50840364;}}}}', 'yes'),
('dbTest', 'a:1:{s:5:"nonce";s:64:"1860a6605c35b0eb791e2677f650e7d8df557d25a2f689ee6fa78e8f689591be";}', 'no'),
('dbVersion', '10.5.21-MariaDB', 'yes'),
('debugOn', '0', 'yes'),
('deleteTablesOnDeact', '0', 'yes'),
('detectProxyNextCheck', '1687958909', 'no'),
('detectProxyNonce', '0c009881a186b831ae1a80746473af02817e66584e8dcc28e1b566b358263e47', 'no'),
('detectProxyRecommendation', '', 'no'),
('diagnosticsWflogsRemovalHistory', '[]', 'no'),
('disableCodeExecutionUploads', '0', 'yes'),
('disableConfigCaching', '0', 'yes'),
('disableWAFIPBlocking', '0', 'yes'),
('dismissAutoPrependNotice', '0', 'yes'),
('displayAutomaticBlocks', '1', 'yes'),
('displayTopLevelBlocking', '0', 'yes'),
('displayTopLevelLiveTraffic', '0', 'yes'),
('displayTopLevelOptions', '1', 'yes'),
('email_summary_dashboard_widget_enabled', '1', 'yes'),
('email_summary_enabled', '1', 'yes'),
('email_summary_excluded_directories', 'wp-content/cache,wp-content/wflogs', 'yes'),
('email_summary_interval', 'weekly', 'yes'),
('enableRemoteIpLookup', '1', 'yes'),
('encKey', '9bbd6b1c10d2676e', 'yes'),
('fileContentsGSB6315Migration', '1', 'yes'),
('firewallEnabled', '1', 'yes'),
('hasKeyConflict', '0', 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('isPaid', '', 'yes'),
('keyType', 'free', 'yes'),
('lastAdminLogin', 'a:6:{s:6:"userID";i:1;s:8:"username";s:9:"benjadmin";s:9:"firstName";s:0:"";s:8:"lastName";s:0:"";s:4:"time";s:26:"Wed 28th June @ 01:10:59PM";s:2:"IP";s:12:"165.73.45.77";}', 'yes'),
('lastBlockAggregation', '1687957849', 'yes'),
('lastDailyCron', '1687957847', 'yes'),
('lastDashboardCheck', '1687424334', 'yes'),
('lastNotificationID', '6', 'no'),
('lastPermissionsTemplateCheck', '1687957858', 'yes'),
('liveActivityPauseEnabled', '1', 'yes'),
('liveTrafficEnabled', '0', 'yes'),
('liveTraf_displayExpandedRecords', '0', 'no'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', '1', 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxAge', '30', 'yes'),
('liveTraf_maxRows', '2000', 'yes'),
('loginSecurityEnabled', '1', 'yes'),
('loginSec_blockAdminReg', '1', 'yes'),
('loginSec_breachPasswds', 'admins', 'yes'),
('loginSec_breachPasswds_enabled', '1', 'yes'),
('loginSec_countFailMins', '240', 'yes'),
('loginSec_disableApplicationPasswords', '1', 'yes'),
('loginSec_disableAuthorScan', '1', 'yes') ;
INSERT INTO `wp_wfconfig` ( `name`, `val`, `autoload`) VALUES
('loginSec_disableOEmbedAuthor', '0', 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('loginSec_lockInvalidUsers', '0', 'yes'),
('loginSec_lockoutMins', '240', 'yes'),
('loginSec_maskLoginErrors', '1', 'yes'),
('loginSec_maxFailures', '20', 'yes'),
('loginSec_maxForgotPasswd', '20', 'yes'),
('loginSec_requireAdminTwoFactor', '0', 'yes'),
('loginSec_strongPasswds', 'pubs', 'yes'),
('loginSec_strongPasswds_enabled', '1', 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('longEncKey', '62caea9b79821641f23f5855c18406efef6e53cbf493596d231320c81ef82011', 'yes'),
('lowResourceScansEnabled', '0', 'yes'),
('manualScanType', 'onceDaily', 'yes'),
('max404Crawlers', 'DISABLED', 'yes'),
('max404Crawlers_action', 'throttle', 'yes'),
('max404Humans', 'DISABLED', 'yes'),
('max404Humans_action', 'throttle', 'yes'),
('maxExecutionTime', '0', 'yes'),
('maxGlobalRequests', 'DISABLED', 'yes'),
('maxGlobalRequests_action', 'throttle', 'yes'),
('maxMem', '256', 'yes'),
('maxRequestsCrawlers', 'DISABLED', 'yes'),
('maxRequestsCrawlers_action', 'throttle', 'yes'),
('maxRequestsHumans', 'DISABLED', 'yes'),
('maxRequestsHumans_action', 'throttle', 'yes'),
('migration636_email_summary_excluded_directories', '1', 'no'),
('needsNewTour_blocking', '1', 'yes'),
('needsNewTour_dashboard', '1', 'yes'),
('needsNewTour_firewall', '1', 'yes'),
('needsNewTour_livetraffic', '1', 'yes'),
('needsNewTour_loginsecurity', '1', 'yes'),
('needsNewTour_scan', '1', 'yes'),
('needsUpgradeTour_blocking', '0', 'yes'),
('needsUpgradeTour_dashboard', '0', 'yes'),
('needsUpgradeTour_firewall', '0', 'yes'),
('needsUpgradeTour_livetraffic', '0', 'yes'),
('needsUpgradeTour_loginsecurity', '0', 'yes'),
('needsUpgradeTour_scan', '0', 'yes'),
('neverBlockBG', 'neverBlockVerified', 'yes'),
('notification_blogHighlights', '1', 'yes'),
('notification_productUpdates', '1', 'yes'),
('notification_promotions', '1', 'yes'),
('notification_scanStatus', '1', 'yes'),
('notification_securityAlerts', '1', 'yes'),
('notification_updatesNeeded', '1', 'yes'),
('onboardingAttempt1', 'skipped', 'yes'),
('onboardingAttempt2', '', 'no'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', '1', 'yes'),
('onboardingDelayedAt', '1687957895', 'yes'),
('other_blockBadPOST', '0', 'yes'),
('other_bypassLitespeedNoabort', '0', 'yes'),
('other_hideWPVersion', '0', 'yes'),
('other_pwStrengthOnUpdate', '1', 'yes'),
('other_scanComments', '1', 'yes'),
('other_scanOutside', '0', 'yes'),
('other_WFNet', '1', 'yes'),
('previousWflogsFileList', '["config-synced.php","config-transient.php","rules.php","config.php",".htaccess","GeoLite2-Country.mmdb","template.php","attack-data.php","ips.php","config-livewaf.php"]', 'yes'),
('scansEnabled_checkGSB', '1', 'yes'),
('scansEnabled_checkHowGetIPs', '1', 'yes'),
('scansEnabled_checkReadableConfig', '1', 'yes'),
('scansEnabled_comments', '1', 'yes'),
('scansEnabled_core', '1', 'yes'),
('scansEnabled_coreUnknown', '1', 'yes'),
('scansEnabled_diskSpace', '1', 'yes'),
('scansEnabled_fileContents', '1', 'yes'),
('scansEnabled_fileContentsGSB', '1', 'yes'),
('scansEnabled_geoipSupport', '1', 'yes'),
('scansEnabled_highSense', '0', 'yes'),
('scansEnabled_malware', '1', 'yes'),
('scansEnabled_oldVersions', '1', 'yes'),
('scansEnabled_options', '1', 'yes'),
('scansEnabled_passwds', '1', 'yes'),
('scansEnabled_plugins', '0', 'yes'),
('scansEnabled_posts', '1', 'yes'),
('scansEnabled_scanImages', '0', 'yes'),
('scansEnabled_suspectedFiles', '1', 'yes'),
('scansEnabled_suspiciousAdminUsers', '1', 'yes'),
('scansEnabled_suspiciousOptions', '1', 'yes'),
('scansEnabled_themes', '0', 'yes'),
('scansEnabled_wafStatus', '1', 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', '1', 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', '1', 'yes'),
('scanType', 'standard', 'yes'),
('scan_exclude', '', 'yes'),
('scan_force_ipv4_start', '0', 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', '1000', 'yes'),
('scan_max_resume_attempts', '2', 'yes'),
('schedMode', 'auto', 'yes'),
('schedStartHour', '4', 'yes'),
('scheduledScansEnabled', '1', 'yes'),
('serverDNS', '1687957837;10341;154.0.163.19', 'yes'),
('showAdminBarMenu', '1', 'yes'),
('spamvertizeCheck', '1', 'yes'),
('ssl_verify', '1', 'yes'),
('startScansRemotely', '0', 'yes'),
('supportContent', '[]', 'no') ;
INSERT INTO `wp_wfconfig` ( `name`, `val`, `autoload`) VALUES
('supportHash', '', 'no'),
('timeoffset_wf', '0', 'yes'),
('timeoffset_wf_updated', '1687957849', 'yes'),
('totalAlertsSent', '4', 'yes'),
('totalLoginHits', '8', 'yes'),
('totalLogins', '4', 'yes'),
('touppBypassNextCheck', '0', 'yes'),
('touppPromptNeeded', '1', 'yes'),
('vulnerabilities_plugin', 'a:10:{i:0;a:4:{s:4:"slug";s:7:"akismet";s:11:"fromVersion";s:3:"5.1";s:10:"vulnerable";b:0;s:9:"toVersion";s:3:"5.2";}i:1;a:4:{s:4:"slug";s:9:"wordfence";s:11:"fromVersion";s:5:"7.9.3";s:10:"vulnerable";b:0;s:9:"toVersion";s:6:"7.10.0";}i:2;a:4:{s:4:"slug";s:13:"wordpress-seo";s:11:"fromVersion";s:4:"20.9";s:10:"vulnerable";b:0;s:9:"toVersion";s:5:"20.10";}i:3;a:3:{s:4:"slug";s:13:"backup-backup";s:11:"fromVersion";s:5:"1.2.9";s:10:"vulnerable";b:0;}i:4;a:3:{s:4:"slug";s:14:"contact-form-7";s:11:"fromVersion";s:5:"5.7.7";s:10:"vulnerable";b:0;}i:5;a:3:{s:4:"slug";s:11:"hello-dolly";s:11:"fromVersion";s:5:"1.7.2";s:10:"vulnerable";b:0;}i:6;a:3:{s:4:"slug";s:11:"simple-tags";s:11:"fromVersion";s:5:"3.8.0";s:10:"vulnerable";b:0;}i:7;a:3:{s:4:"slug";s:12:"wpforms-lite";s:11:"fromVersion";s:7:"1.8.2.1";s:10:"vulnerable";b:0;}i:8;a:3:{s:4:"slug";s:13:"wp-migrate-db";s:11:"fromVersion";s:5:"2.6.7";s:10:"vulnerable";b:0;}i:9;a:3:{s:4:"slug";s:12:"wp-subscribe";s:11:"fromVersion";s:6:"1.2.16";s:10:"vulnerable";b:0;}}', 'yes'),
('wafAlertInterval', '600', 'yes'),
('wafAlertOnAttacks', '1', 'yes'),
('wafAlertThreshold', '100', 'yes'),
('wafAlertWhitelist', '', 'yes'),
('waf_status', 'learning-mode', 'yes'),
('whitelisted', '', 'yes'),
('whitelistedServices', '[]', 'yes'),
('whitelistHash', '', 'no'),
('whitelistPresets', '[]', 'no'),
('wordfenceI18n', '1', 'yes'),
('wordpressPluginVersions', 'a:10:{s:7:"akismet";s:3:"5.1";s:13:"backup-backup";s:5:"1.2.9";s:14:"contact-form-7";s:5:"5.7.7";s:5:"hello";s:5:"1.7.2";s:11:"simple-tags";s:5:"3.8.0";s:9:"wordfence";s:5:"7.9.3";s:12:"wpforms-lite";s:7:"1.8.2.1";s:13:"wp-migrate-db";s:5:"2.6.7";s:12:"wp-subscribe";s:6:"1.2.16";s:13:"wordpress-seo";s:4:"20.9";}', 'yes'),
('wordpressThemeVersions', 'a:5:{s:12:"blog-element";s:3:"1.1";s:13:"tech-blogging";s:5:"1.0.5";s:15:"twentytwentyone";s:3:"1.8";s:17:"twentytwentythree";s:3:"1.1";s:15:"twentytwentytwo";s:3:"1.4";}', 'yes'),
('wordpressVersion', '6.2.2', 'yes'),
('wp_home_url', 'https://redpages.solutions', 'yes'),
('wp_site_url', 'https://redpages.solutions', 'yes') ;

#
# End of data contents of table `wp_wfconfig`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfcrawlers`
#

DROP TABLE IF EXISTS `wp_wfcrawlers`;


#
# Table structure of table `wp_wfcrawlers`
#

CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  `PTR` varchar(255) DEFAULT '',
  PRIMARY KEY (`IP`,`patternSig`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfcrawlers`
#

#
# End of data contents of table `wp_wfcrawlers`
# --------------------------------------------------------



#
# Delete any existing table `wp_wffilechanges`
#

DROP TABLE IF EXISTS `wp_wffilechanges`;


#
# Table structure of table `wp_wffilechanges`
#

CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL,
  PRIMARY KEY (`filenameHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wffilechanges`
#

#
# End of data contents of table `wp_wffilechanges`
# --------------------------------------------------------



#
# Delete any existing table `wp_wffilemods`
#

DROP TABLE IF EXISTS `wp_wffilemods`;


#
# Table structure of table `wp_wffilemods`
#

CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `real_path` text NOT NULL,
  `knownFile` tinyint(3) unsigned NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) unsigned NOT NULL DEFAULT 0,
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?',
  PRIMARY KEY (`filenameMD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wffilemods`
#

#
# End of data contents of table `wp_wffilemods`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfhits`
#

DROP TABLE IF EXISTS `wp_wfhits`;


#
# Table structure of table `wp_wfhits`
#

CREATE TABLE `wp_wfhits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attackLogTime` double(17,6) unsigned NOT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT 0,
  `statusCode` int(11) NOT NULL DEFAULT 200,
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `newVisit` tinyint(3) unsigned NOT NULL,
  `URL` text DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `UA` text DEFAULT NULL,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text DEFAULT NULL,
  `actionData` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`IP`,`ctime`),
  KEY `attackLogTime` (`attackLogTime`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfhits`
#
INSERT INTO `wp_wfhits` ( `id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(2, '0.000000', '1687425276.265993', UNHEX('00000000000000000000FFFFC5646456'), 0, 302, 0, 1, 0, 'https://redpages.solutions/wp-login.php', 'https://redpages.solutions/wp-login.php?redirect_to=https%3A%2F%2Fasiwaju.africa%2Fredpages%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(3, '0.000000', '1687438644.147433', UNHEX('00000000000000000000FFFFC5646456'), 0, 302, 0, 1, 0, 'http://redpages.solutions/wp-login.php', 'http://redpages.solutions/wp-login.php?redirect_to=http%3A%2F%2Fasiwaju.africa%2Fredpages%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(4, '0.000000', '1687957856.996643', UNHEX('00000000000000000000FFFFA5492D4D'), 0, 302, 0, 1, 0, 'https://redpages.solutions/wp-login.php', 'https://redpages.solutions/wp-login.php?redirect_to=https%3A%2F%2Fasiwaju.africa%2Fredpages%2Fwp-admin%2F&reauth=1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/114.0', 'loginOK', NULL, NULL) ;

#
# End of data contents of table `wp_wfhits`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfhoover`
#

DROP TABLE IF EXISTS `wp_wfhoover`;


#
# Table structure of table `wp_wfhoover`
#

CREATE TABLE `wp_wfhoover` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text DEFAULT NULL,
  `host` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `hostKey` varbinary(124) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k2` (`hostKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfhoover`
#

#
# End of data contents of table `wp_wfhoover`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfissues`
#

DROP TABLE IF EXISTS `wp_wfissues`;


#
# Table structure of table `wp_wfissues`
#

CREATE TABLE `wp_wfissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfissues`
#

#
# End of data contents of table `wp_wfissues`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfknownfilelist`
#

DROP TABLE IF EXISTS `wp_wfknownfilelist`;


#
# Table structure of table `wp_wfknownfilelist`
#

CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `wordpress_path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfknownfilelist`
#

#
# End of data contents of table `wp_wfknownfilelist`
# --------------------------------------------------------



#
# Delete any existing table `wp_wflivetraffichuman`
#

DROP TABLE IF EXISTS `wp_wflivetraffichuman`;


#
# Table structure of table `wp_wflivetraffichuman`
#

CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`,`identifier`),
  KEY `expiration` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wflivetraffichuman`
#

#
# End of data contents of table `wp_wflivetraffichuman`
# --------------------------------------------------------



#
# Delete any existing table `wp_wflocs`
#

DROP TABLE IF EXISTS `wp_wflocs`;


#
# Table structure of table `wp_wflocs`
#

CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) unsigned NOT NULL,
  `failed` tinyint(3) unsigned NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT 0.0000000,
  `lon` float(10,7) DEFAULT 0.0000000,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wflocs`
#

#
# End of data contents of table `wp_wflocs`
# --------------------------------------------------------



#
# Delete any existing table `wp_wflogins`
#

DROP TABLE IF EXISTS `wp_wflogins`;


#
# Table structure of table `wp_wflogins`
#

CREATE TABLE `wp_wflogins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) unsigned NOT NULL,
  `fail` tinyint(3) unsigned NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) unsigned NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`IP`,`fail`),
  KEY `hitID` (`hitID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wflogins`
#
INSERT INTO `wp_wflogins` ( `id`, `hitID`, `ctime`, `fail`, `action`, `username`, `userID`, `IP`, `UA`) VALUES
(1, 1, '1687420848.698658', 0, 'loginOK', 'benjadmin', 1, UNHEX('00000000000000000000000000000001'), 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36'),
(2, 2, '1687425278.924131', 0, 'loginOK', 'benjadmin', 1, UNHEX('00000000000000000000FFFFC5646456'), 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36'),
(3, 3, '1687438645.917171', 0, 'loginOK', 'benjadmin', 1, UNHEX('00000000000000000000FFFFC5646456'), 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36'),
(4, 4, '1687957859.121481', 0, 'loginOK', 'benjadmin', 1, UNHEX('00000000000000000000FFFFA5492D4D'), 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/114.0') ;

#
# End of data contents of table `wp_wflogins`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfls_2fa_secrets`
#

DROP TABLE IF EXISTS `wp_wfls_2fa_secrets`;


#
# Table structure of table `wp_wfls_2fa_secrets`
#

CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) unsigned NOT NULL,
  `vtime` int(10) unsigned NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfls_2fa_secrets`
#

#
# End of data contents of table `wp_wfls_2fa_secrets`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfls_role_counts`
#

DROP TABLE IF EXISTS `wp_wfls_role_counts`;


#
# Table structure of table `wp_wfls_role_counts`
#

CREATE TABLE `wp_wfls_role_counts` (
  `serialized_roles` varbinary(255) NOT NULL,
  `two_factor_inactive` tinyint(1) NOT NULL,
  `user_count` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`serialized_roles`,`two_factor_inactive`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfls_role_counts`
#

#
# End of data contents of table `wp_wfls_role_counts`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfls_settings`
#

DROP TABLE IF EXISTS `wp_wfls_settings`;


#
# Table structure of table `wp_wfls_settings`
#

CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfls_settings`
#
INSERT INTO `wp_wfls_settings` ( `name`, `value`, `autoload`) VALUES
('2fa-user-grace-period', '10', 'yes'),
('allow-disabling-ntp', '1', 'yes'),
('allow-xml-rpc', '1', 'yes'),
('captcha-stats', '{"counts":[0,0,0,0,0,0,0,0,0,0,0],"avg":0}', 'yes'),
('delete-deactivation', '', 'yes'),
('disable-temporary-tables', '0', 'yes'),
('enable-auth-captcha', '', 'yes'),
('enable-login-history-columns', '1', 'yes'),
('enable-shortcode', '', 'yes'),
('enable-woocommerce-account-integration', '', 'yes'),
('enable-woocommerce-integration', '', 'yes'),
('global-notices', '[]', 'yes'),
('ip-source', '', 'yes'),
('ip-trusted-proxies', '', 'yes'),
('last-secret-refresh', '1687354106', 'yes'),
('ntp-failure-count', '3', 'yes'),
('ntp-offset', '0', 'yes'),
('recaptcha-threshold', '0.5', 'yes'),
('remember-device', '', 'yes'),
('remember-device-duration', '2592000', 'yes'),
('require-2fa-grace-period-enabled', '', 'yes'),
('require-2fa.administrator', '', 'yes'),
('schema-version', '2', 'yes'),
('shared-hash-secret', 'f689cd401acd306eacc032d79309b0da27c4712af521b9be07f548d121cd6faa', 'yes'),
('shared-symmetric-secret', '70db474313918e80d9e15808daf4db673d3ebbc418d55273fba291fc49a98245', 'yes'),
('stack-ui-columns', '1', 'yes'),
('use-ntp', '', 'yes'),
('user-count-query-state', '0', 'yes'),
('whitelisted', '', 'yes'),
('xmlrpc-enabled', '1', 'yes') ;

#
# End of data contents of table `wp_wfls_settings`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfnotifications`
#

DROP TABLE IF EXISTS `wp_wfnotifications`;


#
# Table structure of table `wp_wfnotifications`
#

CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1000,
  `ctime` int(10) unsigned NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfnotifications`
#
INSERT INTO `wp_wfnotifications` ( `id`, `new`, `category`, `priority`, `ctime`, `html`, `links`) VALUES
('site-AEAAAAA', 1, 'wfplugin_updates', 502, 1687957989, '<a href="https://redpages.solutions/wp-admin/update-core.php">An update is available for 3 plugins</a>', '[]') ;

#
# End of data contents of table `wp_wfnotifications`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfpendingissues`
#

DROP TABLE IF EXISTS `wp_wfpendingissues`;


#
# Table structure of table `wp_wfpendingissues`
#

CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(10) unsigned NOT NULL,
  `lastUpdated` int(10) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lastUpdated` (`lastUpdated`),
  KEY `status` (`status`),
  KEY `ignoreP` (`ignoreP`),
  KEY `ignoreC` (`ignoreC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfpendingissues`
#

#
# End of data contents of table `wp_wfpendingissues`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfreversecache`
#

DROP TABLE IF EXISTS `wp_wfreversecache`;


#
# Table structure of table `wp_wfreversecache`
#

CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfreversecache`
#

#
# End of data contents of table `wp_wfreversecache`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfsnipcache`
#

DROP TABLE IF EXISTS `wp_wfsnipcache`;


#
# Table structure of table `wp_wfsnipcache`
#

CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `expiration` (`expiration`),
  KEY `IP` (`IP`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfsnipcache`
#

#
# End of data contents of table `wp_wfsnipcache`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfstatus`
#

DROP TABLE IF EXISTS `wp_wfstatus`;


#
# Table structure of table `wp_wfstatus`
#

CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` double(17,6) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `k1` (`ctime`),
  KEY `k2` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfstatus`
#
INSERT INTO `wp_wfstatus` ( `id`, `ctime`, `level`, `type`, `msg`) VALUES
(1, '1687424340.438258', 2, 'error', 'Call to Wordfence API to resolve IPs failed: Wordfence API error: Your site did not send an API key when contacting the Wordfence servers.') ;

#
# End of data contents of table `wp_wfstatus`
# --------------------------------------------------------



#
# Delete any existing table `wp_wftrafficrates`
#

DROP TABLE IF EXISTS `wp_wftrafficrates`;


#
# Table structure of table `wp_wftrafficrates`
#

CREATE TABLE `wp_wftrafficrates` (
  `eMin` int(10) unsigned NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eMin`,`IP`,`hitType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wftrafficrates`
#

#
# End of data contents of table `wp_wftrafficrates`
# --------------------------------------------------------



#
# Delete any existing table `wp_wfwaffailures`
#

DROP TABLE IF EXISTS `wp_wfwaffailures`;


#
# Table structure of table `wp_wfwaffailures`
#

CREATE TABLE `wp_wfwaffailures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `throwable` text NOT NULL,
  `rule_id` int(10) unsigned DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_wfwaffailures`
#

#
# End of data contents of table `wp_wfwaffailures`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpforms_payment_meta`
#

DROP TABLE IF EXISTS `wp_wpforms_payment_meta`;


#
# Table structure of table `wp_wpforms_payment_meta`
#

CREATE TABLE `wp_wpforms_payment_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpforms_payment_meta`
#

#
# End of data contents of table `wp_wpforms_payment_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpforms_payments`
#

DROP TABLE IF EXISTS `wp_wpforms_payments`;


#
# Table structure of table `wp_wpforms_payments`
#

CREATE TABLE `wp_wpforms_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `discount_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `total_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(3) NOT NULL DEFAULT '',
  `entry_id` bigint(20) NOT NULL DEFAULT 0,
  `gateway` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `mode` varchar(4) NOT NULL DEFAULT '',
  `transaction_id` varchar(40) NOT NULL DEFAULT '',
  `customer_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_status` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpforms_payments`
#

#
# End of data contents of table `wp_wpforms_payments`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpforms_tasks_meta`
#

DROP TABLE IF EXISTS `wp_wpforms_tasks_meta`;


#
# Table structure of table `wp_wpforms_tasks_meta`
#

CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpforms_tasks_meta`
#
INSERT INTO `wp_wpforms_tasks_meta` ( `id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_forms_locator_scan', 'W10=', '2023-06-22 08:12:50'),
(2, 'wpforms_admin_addons_cache_update', 'W10=', '2023-06-22 08:13:17'),
(3, 'wpforms_admin_builder_templates_cache_update', 'W10=', '2023-06-22 08:13:17') ;

#
# End of data contents of table `wp_wpforms_tasks_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_indexable`
#

DROP TABLE IF EXISTS `wp_yoast_indexable`;


#
# Table structure of table `wp_yoast_indexable`
#

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext DEFAULT NULL,
  `permalink_hash` varchar(40) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) NOT NULL,
  `object_sub_type` varchar(32) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `breadcrumb_title` text DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext DEFAULT NULL,
  `primary_focus_keyword` varchar(191) DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text DEFAULT NULL,
  `twitter_image` longtext DEFAULT NULL,
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image_id` varchar(191) DEFAULT NULL,
  `twitter_image_source` text DEFAULT NULL,
  `open_graph_title` text DEFAULT NULL,
  `open_graph_description` longtext DEFAULT NULL,
  `open_graph_image` longtext DEFAULT NULL,
  `open_graph_image_id` varchar(191) DEFAULT NULL,
  `open_graph_image_source` text DEFAULT NULL,
  `open_graph_image_meta` mediumtext DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  `schema_page_type` varchar(64) DEFAULT NULL,
  `schema_article_type` varchar(64) DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  `inclusive_language_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_yoast_indexable`
#
INSERT INTO `wp_yoast_indexable` ( `id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`, `inclusive_language_score`) VALUES
(1, 'https://redpages.solutions/2023/06/21/unleashing-agility-and-scalability-a-business-case-for-migrating-from-oracle-database-to-mongodb/', '140:182333beb34d0cb00a8d09ec4dfafdb2', 63, 'post', 'post', 1, 0, NULL, NULL, 'Unleashing Agility and Scalability: A Business Case for Migrating from Oracle Database to MongoDB', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, 0, 0, 0, 0, 0, NULL, 'https://redpages.solutions/wp-content/uploads/2023/06/cropped-Screenshot-2023-06-21-at-10.30.52.png', NULL, '11', 'featured-image', NULL, NULL, 'https://redpages.solutions/wp-content/uploads/2023/06/cropped-Screenshot-2023-06-21-at-10.30.52.png', '11', 'featured-image', '{"width":512,"height":512,"filesize":49931,"url":"https:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/cropped-Screenshot-2023-06-21-at-10.30.52.png","path":"\\/home\\/redpahaj\\/public_html\\/blog.redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/cropped-Screenshot-2023-06-21-at-10.30.52.png","size":"full","id":11,"alt":"","pixels":262144,"type":"image\\/png"}', 0, NULL, NULL, '2023-06-21 11:55:40', '2023-06-28 13:10:57', 1, NULL, NULL, NULL, NULL, 0, 3, 2, '2023-06-21 13:47:47', '2023-06-21 10:38:16', 0),
(2, 'https://redpages.solutions/author/benjadmin/', '49:020ce8f58c5bebdad656f18380af9ec7', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 'https://secure.gravatar.com/avatar/8178fccca94aeffdded32b3016ebbbc8?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/8178fccca94aeffdded32b3016ebbbc8?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2023-06-21 11:55:40', '2023-06-28 13:10:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-22 09:19:28', '2023-06-21 08:14:31', NULL),
(3, 'https://redpages.solutions/2023/06/21/hello-world/', '55:839a3115f35e110489cb62e3aee5b2de', 1, 'post', 'post', 1, 0, NULL, NULL, 'Harnessing the Power of Universal Data Integration: Unleashing Business Potential', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'https://redpages.solutions/wp-content/uploads/2023/06/cropped-Screenshot-2023-06-21-at-10.30.52.png', NULL, '11', 'featured-image', NULL, NULL, 'https://redpages.solutions/wp-content/uploads/2023/06/cropped-Screenshot-2023-06-21-at-10.30.52.png', '11', 'featured-image', '{"width":512,"height":512,"filesize":49931,"url":"https:\\/\\/redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/cropped-Screenshot-2023-06-21-at-10.30.52.png","path":"\\/home\\/redpahaj\\/public_html\\/blog.redpages.solutions\\/wp-content\\/uploads\\/2023\\/06\\/cropped-Screenshot-2023-06-21-at-10.30.52.png","size":"full","id":11,"alt":"","pixels":262144,"type":"image\\/png"}', 0, NULL, NULL, '2023-06-21 11:55:40', '2023-06-28 13:10:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-21 10:39:08', '2023-06-21 08:14:31', 0),
(4, 'https://redpages.solutions/', '32:a4796eebefb5ad52d5bbc1ee4d245a1f', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2023-06-21 11:55:55', '2023-06-22 12:48:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-21 13:47:47', '2023-06-21 08:14:31', NULL),
(5, 'https://redpages.solutions/?page_id=3', '42:0d79ba7838e06e2397975dd442fe2da1', 3, 'post', 'page', 1, 0, NULL, NULL, 'Privacy Policy', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 12:56:37', '2023-06-28 13:10:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-21 08:14:31', '2023-06-21 08:14:31', 0),
(6, 'https://redpages.solutions/?page_id=5', '42:1eef0727122782a56103a0f2ef74fe37', 5, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-21 12:56:37', '2023-06-28 13:10:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-22 09:20:20', '2023-06-21 08:25:47', 0),
(7, 'https://redpages.solutions/?page_id=2', '42:d76b3f825d8facbecbeffc7226d21d20', 2, 'post', 'page', 1, 0, NULL, NULL, 'Sample Page', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 12:56:37', '2023-06-28 13:10:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-21 08:59:08', '2023-06-21 08:14:31', 0),
(8, 'https://redpages.solutions/category/uncategorized/', '55:dd1d5369bb6116d22a271b6f1e6c3207', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2023-06-21 12:56:37', '2023-06-28 13:10:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2023-06-21 13:47:47', '2023-06-21 08:14:31', NULL),
(9, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 12:56:37', '2023-06-22 12:57:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(10, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 12:56:37', '2023-06-22 12:57:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL),
(11, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 12:56:37', '2023-06-22 12:57:27', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL) ;

#
# End of data contents of table `wp_yoast_indexable`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_indexable_hierarchy`
#

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;


#
# Table structure of table `wp_yoast_indexable_hierarchy`
#

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_yoast_indexable_hierarchy`
#
INSERT INTO `wp_yoast_indexable_hierarchy` ( `indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1) ;

#
# End of data contents of table `wp_yoast_indexable_hierarchy`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_migrations`
#

DROP TABLE IF EXISTS `wp_yoast_migrations`;


#
# Table structure of table `wp_yoast_migrations`
#

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_yoast_migrations`
#
INSERT INTO `wp_yoast_migrations` ( `id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404'),
(24, '20230417083836') ;

#
# End of data contents of table `wp_yoast_migrations`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_primary_term`
#

DROP TABLE IF EXISTS `wp_yoast_primary_term`;


#
# Table structure of table `wp_yoast_primary_term`
#

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_yoast_primary_term`
#
INSERT INTO `wp_yoast_primary_term` ( `id`, `post_id`, `term_id`, `taxonomy`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 63, 1, 'category', '2023-06-21 13:41:56', '2023-06-28 13:10:57', 1) ;

#
# End of data contents of table `wp_yoast_primary_term`
# --------------------------------------------------------



#
# Delete any existing table `wp_yoast_seo_links`
#

DROP TABLE IF EXISTS `wp_yoast_seo_links`;


#
# Table structure of table `wp_yoast_seo_links`
#

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


#
# Data contents of table `wp_yoast_seo_links`
#

#
# End of data contents of table `wp_yoast_seo_links`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

