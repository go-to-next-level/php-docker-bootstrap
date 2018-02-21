<?php
declare(strict_types=1);

namespace GoToNextLevel;

use PHPUnit\Framework\TestCase;

final class GiveAProperNameTest extends TestCase
{
    /** @test */
    public function please_rename_me_or_delete_me(): void
    {
        $myObject = new GiveAProperName();
        $this->assertTrue($myObject->giveMeAProperName());
    }
}