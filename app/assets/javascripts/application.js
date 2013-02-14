// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require fancybox
//= require jquery_ujs
//= require_tree .

//TODO: Work on IE8 Bugs with this js and console error

//var console = console;
var root_dom = $('body');

$(document).ready(function() {
    console.log('Dom loaded!');
    //Clear all caches

    var env = $('body').data('envariment');
    var br = $('body').data('loader');
    var api = $('body').data('api');

    if(env == 'development'){
        localStorage.clear();
        console.log('Cache has been cleaned!');
        console.log('Develop mode loaded!');
    }else{
        console.log('Production mode loaded!');
        //localStorage.clear();
    }

    console.log('You are using ' + br + '!');
    console.log('API Session key:' + api + '!');
    console.log('Looking for a job ? Contact us at support@voroninstudio.eu or voronin.nick@gmail.com even or office@voroninstudio.eu!');


    // Insert data on resize action
    var resizeTimer;
    $(window).resize(function() {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(function() {
            var body_size = $('body').width();
            var body_height = $('body').height();
            console.log('Current document width: ' + body_size + ' and height is: ' + body_height + '!');
        }, 200);
    });

    function ClrStr(){
        setTimeout('localStorage.clear()', 6000);
    }








});
