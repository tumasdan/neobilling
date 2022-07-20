<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\IpMessaging\V2\Service\Channel;

use Twilio\InstanceContext;
use Twilio\Options;
use Twilio\Serialize;
use Twilio\Values;
use Twilio\Version;

class MessageContext extends InstanceContext
{
    /**
     * Initialize the MessageContext
     *
     * @param \Twilio\Version $version Version that contains the resource
     * @param string $serviceSid The service_sid
     * @param string $channelSid The channel_sid
     * @param string $sid The sid
     * @return \Twilio\Rest\IpMessaging\V2\Service\Channel\MessageContext
     */
    public function __construct(Version $version, $serviceSid, $channelSid, $sid)
    {
        parent::__construct($version);

        // Path Solution
        $this->solution = array('serviceSid' => $serviceSid, 'channelSid' => $channelSid, 'sid' => $sid);

        $this->uri = '/Services/' . rawurlencode($serviceSid) . '/Channels/' . rawurlencode($channelSid) . '/Messages/' . rawurlencode($sid) . '';
    }

    /**
     * Fetch a MessageInstance
     *
     * @return MessageInstance Fetched MessageInstance
     */
    public function fetch()
    {
        $params = Values::of(array());

        $payload = $this->version->fetch(
            'GET',
            $this->uri,
            $params
        );

        return new MessageInstance(
            $this->version,
            $payload,
            $this->solution['serviceSid'],
            $this->solution['channelSid'],
            $this->solution['sid']
        );
    }

    /**
     * Deletes the MessageInstance
     *
     * @return boolean True if delete succeeds, false otherwise
     */
    public function delete()
    {
        return $this->version->delete('delete', $this->uri);
    }

    /**
     * Update the MessageInstance
     *
     * @param array|Options $options Optional Arguments
     * @return MessageInstance Updated MessageInstance
     */
    public function update($options = array())
    {
        $options = new Values($options);

        $data = Values::of(array(
            'Body' => $options['body'],
            'Attributes' => $options['attributes'],
            'DateCreated' => Serialize::iso8601DateTime($options['dateCreated']),
            'DateUpdated' => Serialize::iso8601DateTime($options['dateUpdated']),
            'LastUpdatedBy' => $options['lastUpdatedBy'],
        ));

        $payload = $this->version->update(
            'POST',
            $this->uri,
            array(),
            $data
        );

        return new MessageInstance(
            $this->version,
            $payload,
            $this->solution['serviceSid'],
            $this->solution['channelSid'],
            $this->solution['sid']
        );
    }

    /**
     * Provide a friendly representation
     *
     * @return string Machine friendly representation
     */
    public function __toString()
    {
        $context = array();
        foreach ($this->solution as $key => $value) {
            $context[] = "$key=$value";
        }
        return '[Twilio.IpMessaging.V2.MessageContext ' . implode(' ', $context) . ']';
    }
}