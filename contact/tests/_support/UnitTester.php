<?php
/**
 * Contact plugin for Craft CMS 3.x
 *
 * Contact plugin
 *
 * @link      https://GAMESARA.com
 * @copyright Copyright (c) 2021 gamesara
 */

use Codeception\Actor;
use Codeception\Lib\Friend;

/**
 * Inherited Methods
 *
 * @method void wantToTest($text)
 * @method void wantTo($text)
 * @method void execute($callable)
 * @method void expectTo($prediction)
 * @method void expect($prediction)
 * @method void amGoingTo($argumentation)
 * @method void am($role)
 * @method void lookForwardTo($achieveValue)
 * @method void comment($description)
 * @method Friend haveFriend($name, $actorClass = null)
 *
 * @SuppressWarnings(PHPMD)
 *
 */
class UnitTester extends Actor
{
    use _generated\UnitTesterActions;

}
