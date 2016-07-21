<?php

class my__global {
    public $config;

    public function __construct($config) {
        $this->config = $config;
    }

    /**
     * @param $name string the config parameter to get
     * @param $subproperty string Some config parameters are more like
     *     namespaces with multiple subconfigurations. If specified, then it
     *     will grab the subproperty.
     * @return mixed configuration
     */
    public function config($name, $subproperty=null) {
        $return = $this->config[$name];
        return is_null($subproperty) ? $return : $return[$subproperty];
    }
    public static function reinit(my__config $config) {
        $GLOBALS['GLOB'] = new my__global($config);
    }
}
class my_cache_impl {
    private $_found = false;

    public function resultNotFound() {
        return !$this->_found;
    }
}
class my__config implements ArrayAccess {
    public function __construct() {
        $this->_cache = new my_cache_impl();  // Can't use $GLOB->apc because application globals rely on my__config.
    }

    public function offsetSet($offset, $value) {
        throw new LogicException("Config array set disallowed (offset=$offset)");
    }

    public function offsetExists($offset) {
        return false;
    }

    public function offsetUnset($offset) {
        throw new LogicException("Config array unset disallowed (offset=$offset)");
    }

    public function offsetGet($offset) {
        if (!array_key_exists($offset, $this->_configs)) {
            // check if stored in shared memory cache
            $cacheKey = $this->cacheKey($offset);
            $value = false;
            debug_zval_dump($value);
            return false;
        }
    }

    public function cacheKey($name) {
        return '_'.$name;
    }
}
// initialize $GLOB
my__global::reinit(new my__config());


if (!in_array($_SERVER['PHP_SELF'], $GLOB->config('x'))) {
}
class client {
    const HEADERS_OPTION = 'extra_headers';

    public function __call($method, $params) {
        $reply = $this->_url;
        return $ret;
    }
}
function get_client() {
    static $client;
    $client = new client();
    return $client;
}

function main($a) {
    $service  = get_client();

    printf("Calling\n");
    flush();
    list($aaaa, $bbbbbb, $numfound) = $service->callSomeMagicMethod_1($xxxxxxx);
}
main(true);
