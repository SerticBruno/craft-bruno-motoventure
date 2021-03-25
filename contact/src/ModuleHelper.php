<?php

namespace modules\Module;

use Craft;

abstract class ModuleHelper
{
  public static function registerMyYiiModule()
  {
    // Check to see if the Module is registered
    if (!Craft::$app->hasModule('my-module')) {

      // Add it to the Craft::$app instance
      Craft::$app->setModule('my-module', Module::class);

      // Have Craft load this module right away 
      // This ensures it can be used for templates
      Craft::$app->getModule('my-module');
    }
  }
}