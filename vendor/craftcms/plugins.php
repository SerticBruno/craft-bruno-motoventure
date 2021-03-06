<?php

$vendorDir = dirname(__DIR__);
$rootDir = dirname(dirname(__DIR__));

return array (
  'craftcms/redactor' => 
  array (
    'class' => 'craft\\redactor\\Plugin',
    'basePath' => $vendorDir . '/craftcms/redactor/src',
    'handle' => 'redactor',
    'aliases' => 
    array (
      '@craft/redactor' => $vendorDir . '/craftcms/redactor/src',
    ),
    'name' => 'Redactor',
    'version' => '2.8.5',
    'description' => 'Edit rich text content in Craft CMS using Redactor by Imperavi.',
    'developer' => 'Pixel & Tonic',
    'developerUrl' => 'https://pixelandtonic.com/',
    'developerEmail' => 'support@craftcms.com',
    'documentationUrl' => 'https://github.com/craftcms/redactor/blob/v2/README.md',
  ),
  'gamesara/contact' => 
  array (
    'class' => 'gamesara\\contact\\Contact',
    'basePath' => $vendorDir . '/gamesara/contact/src',
    'handle' => 'contact',
    'aliases' => 
    array (
      '@gamesara/contact' => $vendorDir . '/gamesara/contact/src',
    ),
    'name' => 'Contact',
    'version' => '1.0.0',
    'description' => 'Contact plugin',
    'developer' => 'gamesara',
    'developerUrl' => 'https://GAMESARA.com',
    'documentationUrl' => 'https://github.com/SerticBruno/contact/blob/master/README.md',
    'changelogUrl' => 'https://raw.githubusercontent.com/SerticBruno/contact/master/CHANGELOG.md',
  ),
);
