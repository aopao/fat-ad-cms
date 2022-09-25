<?php

namespace app\api\validate;;

use think\Validate;

class Catgory extends Validate
{
	/**
	 * #可用的现成的规则
	 * require  	| 必须 ['require','in'=>'a,b,c',...]
	 * require  	| 支持多规则验证 require|in:a,b,c|... 
	 * accepted 	| 接受 1 yes on 验证
	 * date	 		| 是否是一个有效日期
	 * alpha	 	| 只允许字母
	 * alphaNum 	| 只允许字母和数字
	 * alphaDash	| 只允许字母、数字和下划线 破折号
	 * chs			| 只允许汉字
	 * chsAlpha		| 只允许汉字、字母
	 * chsAlphaNum 	| 只允许汉字、字母和数字
	 * chsDash		| 只允许汉字、字母、数字和下划线_及破折号-
	 * activeUrl	| 是否为有效的网址
	 * ip			| 是否为IP地址
	 * url			| 是否为一个URL地址
	 * float		| 是否为float
	 * number		| 是否为数字
	 * integer		| 是否为整型
	 * email		| 是否为邮箱地址
	 * boolean		| 是否为布尔值
	 * array		| 是否为数组
	 * file			| 文件验证
	 * image		| 图片验证
	 * token		| token验证
	 */
	 
    /**
     * 描述字段
     */
    protected $field = [
    ];
	
	 
    /**
     * 验证规则
     */
    protected $rule = [
    ];
	
    /**
     * 提示消息
     */
    protected $message = [
    ];
	
    /**
     * 验证场景
     */
    protected $scene = [
        'add'  => [],
        'edit' => [],
    ];
    
}
