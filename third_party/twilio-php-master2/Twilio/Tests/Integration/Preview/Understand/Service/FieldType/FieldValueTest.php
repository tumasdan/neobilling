<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Tests\Integration\Preview\Understand\Service\FieldType;

use Twilio\Exceptions\DeserializeException;
use Twilio\Exceptions\TwilioException;
use Twilio\Http\Response;
use Twilio\Tests\HolodeckTestCase;
use Twilio\Tests\Request;

class FieldValueTest extends HolodeckTestCase
{
    public function testFetchRequest()
    {
        $this->holodeck->mock(new Response(500, ''));

        try {
            $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                ->fieldValues("UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")->fetch();
        } catch (DeserializeException $e) {
        } catch (TwilioException $e) {
        }

        $this->assertRequest(new Request(
            'get',
            'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues/UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
        ));
    }

    public function testFetchResponse()
    {
        $this->holodeck->mock(new Response(
            200,
            '
            {
                "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues/UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "field_type_sid": "UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "language": "language",
                "service_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "value": "value",
                "date_updated": "2015-07-30T20:00:00Z",
                "date_created": "2015-07-30T20:00:00Z",
                "sid": "UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
            }
            '
        ));

        $actual = $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldValues("UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")->fetch();

        $this->assertNotNull($actual);
    }

    public function testReadRequest()
    {
        $this->holodeck->mock(new Response(500, ''));

        try {
            $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                ->fieldValues->read();
        } catch (DeserializeException $e) {
        } catch (TwilioException $e) {
        }

        $this->assertRequest(new Request(
            'get',
            'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues'
        ));
    }

    public function testReadEmptyResponse()
    {
        $this->holodeck->mock(new Response(
            200,
            '
            {
                "field_values": [],
                "meta": {
                    "first_page_url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues?PageSize=50&Page=0",
                    "page_size": 50,
                    "previous_page_url": null,
                    "key": "field_values",
                    "page": 0,
                    "next_page_url": null,
                    "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues?PageSize=50&Page=0"
                }
            }
            '
        ));

        $actual = $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldValues->read();

        $this->assertNotNull($actual);
    }

    public function testReadFullResponse()
    {
        $this->holodeck->mock(new Response(
            200,
            '
            {
                "field_values": [
                    {
                        "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                        "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues/UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                        "field_type_sid": "UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                        "language": "language",
                        "service_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                        "value": "value",
                        "date_updated": "2015-07-30T20:00:00Z",
                        "date_created": "2015-07-30T20:00:00Z",
                        "sid": "UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
                    }
                ],
                "meta": {
                    "first_page_url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues?PageSize=50&Page=0",
                    "page_size": 50,
                    "previous_page_url": null,
                    "key": "field_values",
                    "page": 0,
                    "next_page_url": null,
                    "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues?PageSize=50&Page=0"
                }
            }
            '
        ));

        $actual = $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldValues->read();

        $this->assertGreaterThan(0, count($actual));
    }

    public function testCreateRequest()
    {
        $this->holodeck->mock(new Response(500, ''));

        try {
            $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                ->fieldValues->create("language", "value");
        } catch (DeserializeException $e) {
        } catch (TwilioException $e) {
        }

        $values = array('Language' => "language", 'Value' => "value");

        $this->assertRequest(new Request(
            'post',
            'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues',
            null,
            $values
        ));
    }

    public function testCreateResponse()
    {
        $this->holodeck->mock(new Response(
            201,
            '
            {
                "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "url": "https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues/UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "field_type_sid": "UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "language": "language",
                "service_sid": "UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                "value": "value",
                "date_updated": "2015-07-30T20:00:00Z",
                "date_created": "2015-07-30T20:00:00Z",
                "sid": "UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
            }
            '
        ));

        $actual = $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldValues->create("language", "value");

        $this->assertNotNull($actual);
    }

    public function testDeleteRequest()
    {
        $this->holodeck->mock(new Response(500, ''));

        try {
            $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
                ->fieldValues("UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")->delete();
        } catch (DeserializeException $e) {
        } catch (TwilioException $e) {
        }

        $this->assertRequest(new Request(
            'delete',
            'https://preview.twilio.com/understand/Services/UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldTypes/UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/FieldValues/UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
        ));
    }

    public function testDeleteResponse()
    {
        $this->holodeck->mock(new Response(
            204,
            null
        ));

        $actual = $this->twilio->preview->understand->services("UAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldTypes("UBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
            ->fieldValues("UCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")->delete();

        $this->assertTrue($actual);
    }
}