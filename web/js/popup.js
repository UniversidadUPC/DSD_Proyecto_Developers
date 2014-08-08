/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function show() {
    // Show pop-up and disable background using #mask
    $("#pop").fadeIn('slow');
    $("#mask").fadeIn('slow');
    // Load content.
    $.post("contentPopup.html", function(data) {
        $("#contentPop").html(data);
    });

} 

$(document).ready(function() {
    $('.minibtn').click(function() {
    // Show pop-up and disable background using #mask
    $("#pop").fadeIn('slow');
    $("#mask").fadeIn('slow');
    // Load content.
    $.post("contentPopup.html", function(data) {
        $("#contentPop").html(data);
    });
    });
       
    // Hide pop-up and mask
    $("#mask").hide();
    $("#pop").hide();


    // Size pop-up
    var img_w = 280;
    var img_h = 200;

    // width and height in css.
    $("#pop").css('width', img_w + 'px');
    $("#pop").css('height', img_h + 'px');

    // Get values ​​from the browser window
    var w = $(this).width();
    var h = $(this).height();

    // Centers the popup  
    w = (w / 2) - (img_w / 2);
    h = (h / 2) - (img_h / 2);
    $("#pop").css("left", w + "px");
    $("#pop").css("top", h + "px");

    // Function to close the pop-up
    $("#close").click(function() {
        $("#pop").fadeOut('slow');
        $("#mask").fadeOut('slow');
    });
});

