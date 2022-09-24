<?php

return [
    [
        'name' => 'isshow_apidoc',
        'title' => '开启接口文档',
        'type' => 'radio',
        'content' => [
            1 => '开启',
            0 => '生产环境建议关闭',
        ],
        'value' => '1',
        'rule' => 'required',
        'msg' => '',
        'tip' => '',
        'ok' => '',
        'extend' => '',
    ],
    [
        'name' => '__tips__',
        'title' => '温馨提示',
        'type' => '',
        'content' => [],
        'value' => '开启后，才可以访问API接口文档。',
        'rule' => '',
        'msg' => '',
        'tip' => '',
        'ok' => '',
        'extend' => 'alert-info-light',
    ],
];
