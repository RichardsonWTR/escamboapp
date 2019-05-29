//= require bootstrap_sb_admin_base_v2
//= require notifyjs
//= require bootbox

// Override data-confirm (javascript confirm box) of Rails with a custom confirm box
$.rails.allowAction = function(element){
    var message =  element.attr('data-confirm');
    if(!message) {return true;}

    var opts={
        title: 'Confirmação',
        message: message,
        buttons: {
            confirm:{
                label: 'Sim',
                className: 'btn-success'
            },
            cancel: {
                label: 'Não',
                className: 'btn-danger'
            }
        },
        callback: function(res){
            if(res){
                element.removeAttr('data-confirm');
                element.trigger('click.rails');
            }
        }
    };

    bootbox.confirm(opts);

    return false;
}