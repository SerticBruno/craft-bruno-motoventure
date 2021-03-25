<?php
/**
 * Contact plugin for Craft CMS 3.x
 *
 * Contact plugin
 *
 * @link      https://GAMESARA.com
 * @copyright Copyright (c) 2021 gamesara
 */

namespace gamesara\contacttests\unit;

use Codeception\Test\Unit;
use UnitTester;
use Craft;
use gamesara\contact\Contact;

/**
 * ExampleUnitTest
 *
 *
 * @author    gamesara
 * @package   Contact
 * @since     1.0.0
 */
class ExampleUnitTest extends Unit
{
    // Properties
    // =========================================================================

    /**
     * @var UnitTester
     */
    protected $tester;

    // Public methods
    // =========================================================================

    // Tests
    // =========================================================================

    /**
     *
     */
    public function testPluginInstance()
    {
        $this->assertInstanceOf(
            Contact::class,
            Contact::$plugin
        );
    }

    /**
     *
     */
    public function testCraftEdition()
    {
        Craft::$app->setEdition(Craft::Pro);

        $this->assertSame(
            Craft::Pro,
            Craft::$app->getEdition()
        );
    }
}
