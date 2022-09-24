define([], function () {
    require([], function () {
    $(document).on('click', "[data-toggle='areapicker']", function () {
        var iscustomer =$(this).data('iscustomer')?$(this).data('iscustomer'):false;
        var that = this;
        var callback = $(that).data('callback');
        var input_name = $(that).data("input-name") ? $(that).data("input-name") : "";
        var input_val = $(that).data("input-val") ? $(that).data("input-val") : "";
        var name = input_name ? $("#" + input_name).val() : '';
        var val = input_val ? $("#" + input_val).val() : '';
        var datasource = $(that).data("datasource") ? $(that).data("datasource") : "";
        var url = "/addons/areapicker/index?iscustomer="+iscustomer+"&ds="+datasource;
        url += val ? '&val=' + val : '';
        Fast.api.open(url, '区域选择', {
            callback: function (res) {
                input_name && $("#" + input_name).val(res.name);
                input_val && $("#" + input_val).val(res.val);
                try {
                    if (typeof callback === 'function') {
                        callback.call(that, res);
                    }
                } catch (e) {

                }
            }
        });
    });
});
require.config({
    paths: {
        'async': '../addons/example/js/async',
        'BMap': ['//api.map.baidu.com/api?v=2.0&ak='],
    },
    shim: {
        'BMap': {
            deps: ['jquery'],
            exports: 'BMap'
        }
    }
});

});