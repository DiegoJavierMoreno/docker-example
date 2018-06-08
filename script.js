
var scripts = {
    ajax: function(options,params){
        var df = $.Deferred(),
            param = $.extend({
                onDone:{
                    hideLoader: true,
                },
                onFail: {
                    hideLoader: true,
                },
                showLoader:true,
            }, params || {}),
            
            opts = $.extend({
                beforeSend: function(){
                    if(param.showLoader)
                        $('body').append('<div class="loading loader"></div>');
                }
            },options || {}),
            tiempo = new Date().getTime(),
            msLoad = 350;
            
        opts.success = function(data){
            var tiempo2 = new Date().getTime(),
                dif = tiempo2 - tiempo;
            if(dif < msLoad){
                setTimeout(function(){
                    if(param.showLoader && param.onDone.hideLoader) $('.loading.loader').remove();
                    df.resolve(data);
                }, msLoad - dif);
            } else {
                if(param.showLoader && param.onDone.hideLoader) $('.loading.loader').remove();
                df.resolve(data);
            }            
        };
        opts.error = function(xhr, textStatus, errorThrown){
            var tiempo2 = new Date().getTime(),
                dif = tiempo2 - tiempo;
            if(dif < msLoad){
                setTimeout(function(){
                    if(param.showLoader && param.onDone.hideLoader) $('.loading.loader').remove();
                    df.reject(xhr, textStatus, errorThrown);
                }, msLoad - dif);
            } else {
                if(param.showLoader && param.onDone.hideLoader) $('.loading.loader').remove();
                df.reject(xhr, textStatus, errorThrown);
            }            
            
        };
        //nocache
        var _ncache = 'nocache='+Math.random()+':'+new Date().getTime();
        opts.url += (opts.url.indexOf('?')==-1)?'?'+_ncache:'&'+_ncache;
        $.ajax(opts);
        return df.promise();
    },
}