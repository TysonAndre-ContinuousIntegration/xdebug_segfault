<?php

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
