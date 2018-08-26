
$(document).ready(function(){
//  Check Radio-box
var counter = 1;
var counterb=1;
var counterc=1;
var counterd=1;
var total = 0;
var totalb=0;
var totalc=0;
var totald=0;
var average = 0;
var averageb=0;
var averagec=0;
var averaged=0;
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
        
        //alert(total + ', ' + counter+', ' + average + ', '+userRating);
        if(radio=="4_stars"||radio=="3_stars"||radio=="2_stars"||radio=="1_stars"||radio=="0_stars"){
        	total += parseFloat(userRating);
                counter = counter+1;
        average = total/counter;
        document.getElementById("lets").innerHTML =userRating;
        document.getElementById("see").innerHTML = average;
        document.getElementById("money").innerHTML = counter;
        }
         if(radio=="4_stars1"||radio=="3_stars1"||radio=="2_stars1"||radio=="1_stars1"||radio=="0_stars1"){
        	 totalb += parseFloat(userRating);
                 counterb = counterb+1;
        averageb = totalb/counterb;
        document.getElementById("take").innerHTML =userRating;
        document.getElementById("two").innerHTML = averageb;
        document.getElementById("times").innerHTML = counterb;
        }
         if(radio=="4_stars2"||radio=="3_stars2"||radio=="2_stars2"||radio=="1_stars2"||radio=="0_stars2"){
        	 totalc += parseFloat(userRating);
             counterc = counterc+1;
    averagec = totalc/counterc;
    document.getElementById("we").innerHTML =userRating;
    document.getElementById("are").innerHTML = averagec;
    document.getElementById("farmers").innerHTML = counterc;
    }
         if(radio=="4_stars3"||radio=="3_stars3"||radio=="2_stars3"||radio=="1_stars3"||radio=="0_stars3"){
        	 totald += parseFloat(userRating);
                 counterd = counterd+1;
        averaged = totald/counterd;
        document.getElementById("fin").innerHTML =userRating;
        document.getElementById("ish").innerHTML = averaged;
        document.getElementById("er").innerHTML = counterd;
        }
    });
});