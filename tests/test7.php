<?php

class my__global {
    public static function reinit() {
        $GLOBALS['GLOB'] = new my__global();
    }
}
// initialize global $GLOB
my__global::reinit();

class client {
    public function __call($method, $params) {
        echo $this->_url;
    }
}

function main($a) {
    $service = new client();

    list($aaaa) = $service->callSomeMagicMethod_1($xxxxxxx);
}
main(true);
