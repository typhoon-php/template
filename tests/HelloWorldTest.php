<?php

declare(strict_types=1);

namespace Typhoon\Template;

use PHPUnit\Framework\Attributes\CoversClass;
use PHPUnit\Framework\TestCase;

#[CoversClass(HelloWorld::class)]
final class HelloWorldTest extends TestCase
{
    public function test(): void
    {
        $message = HelloWorld::message();

        self::assertSame('Hello world!', $message);
    }
}
