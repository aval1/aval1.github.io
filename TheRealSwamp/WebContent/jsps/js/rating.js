$(document).ready(function(){
//  Check Radio-box
var counter = 1;
var counterb=1;
var total = 0;
var average = 0;
var averageb=0;
var radio = "";


/*$(".rating .stars").click(function(event) {
        var radio = event.target.value;
        alert(radio);
        
    });*/
$("input").change(function(event){
    radio = event.target.id;
    //alert(radio);
});

    $(".rating input:radio").attr("checked", false);
    $('.form option').click(function () {
        $(".rating").removeClass('checked');
        $(this).parent().addClass('checked');
    });

    $('input:radio').change(
    function(){
        var userRating = this.value;
        total += parseFloat(userRating);
        
        //alert(total + ', ' + counter+', ' + average + ', '+userRating);
        if(radio=="4_stars"||radio=="3_stars"||radio=="2_stars"||radio=="1_stars"||radio=="0_stars"){
                counter = counter+1;
        average = total/counter;
        document.getElementById("lets").innerHTML =userRating;
        document.getElementById("see").innerHTML = average;
        document.getElementById("money").innerHTML = counter;
        }
         if(radio=="4_stars1"||radio=="3_stars1"||radio=="2_stars1"||radio=="1_stars1"||radio=="0_stars1"){
                 counterb = counterb+1;
        averageb = total/counterb;
        document.getElementById("take").innerHTML =userRating;
        document.getElementById("two").innerHTML = averageb;
        document.getElementById("times").innerHTML = counterb;
        }
    });
});