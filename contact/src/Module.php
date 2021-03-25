<?php

namespace modules\Module;

// Identify any classes you need to use
use Craft;
use yii\base\Event;
use craft\web\View;
use craft\events\RegisterTemplateRootsEvent;

class Module extends \yii\base\Module
{
  public function init()
  {
    parent::init();

    // Register a new templates folder within a Module 
    Event::on(View::class, View::EVENT_REGISTER_CP_TEMPLATE_ROOTS, function(RegisterTemplateRootsEvent $e) {
      $e->roots['my-module'] = $this->getBasePath().DIRECTORY_SEPARATOR.'templates';
    });
  }
}