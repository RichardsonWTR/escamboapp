//= require bootstrap_sb_admin_base_v2
//= require notifyjs
//= require bootbox

// Override data-confirm (javascript confirm box) of Rails with a custom confirm box
$.rails.allowAction = function(element){
    var message =  element.attr('data-confirm');
    var title = element.attr('data-title');
    var answer_yes = element.attr('data-answer-yes');
    var answer_no = element.attr('data-answer-no');
    console.log(answer_yes, answer_no);
    if(!message) {return true;}

    var opts={
        title: title,
        message: message,
        buttons: {
            confirm:{
                label: answer_yes,
                className: 'btn-success'
            },
            cancel: {
                label: answer_no,
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