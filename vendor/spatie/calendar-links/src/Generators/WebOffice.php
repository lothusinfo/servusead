<?php

namespace Spatie\CalendarLinks\Generators;

use DateTimeZone;
use Spatie\CalendarLinks\Generator;
use Spatie\CalendarLinks\Link;

/**
 * @see https://github.com/InteractionDesignFoundation/add-event-to-calendar-docs/blob/master/services/outlook-web.md
 */
class WebOffice implements Generator
{
    protected const BASE_URL = 'https://outlook.office.com/calendar/deeplink/compose?path=/calendar/action/compose&rru=addevent';

    /** @var string {@see https://www.php.net/manual/en/function.date.php} */
    protected $dateFormat = 'Y-m-d';
    protected $dateTimeFormat = 'Y-m-d\TH:i:s\Z';

    /** {@inheritDoc} */
    public function generate(Link $link): string
    {
        $url = static::BASE_URL;

        $dateTimeFormat = $link->allDay ? $this->dateFormat : $this->dateTimeFormat;

        $utcStartDateTime = (clone $link->from)->setTimezone(new DateTimeZone('UTC'));
        $utcEndDateTime = (clone $link->to)->setTimezone(new DateTimeZone('UTC'));

        $url .= '&startdt='.$utcStartDateTime->format($dateTimeFormat);
        $url .= '&enddt='.$utcEndDateTime->format($dateTimeFormat);

        if ($link->allDay) {
            $url .= '&allday=true';
        }

        $url .= '&subject='.rawurlencode($link->title);

        if ($link->description) {
            $url .= '&body='.rawurlencode($link->description);
        }

        if ($link->address) {
            $url .= '&location='.rawurlencode($link->address);
        }

        return $url;
    }
}
