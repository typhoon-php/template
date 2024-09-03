<?php

declare(strict_types=1);

namespace Typhoon\Template;

/**
 * @api
 */
final class HelloWorld
{
    public static function message(): string
    {
        return 'Hello world!';
    }
}
