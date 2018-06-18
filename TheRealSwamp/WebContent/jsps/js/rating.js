$(document).ready(function(){
//  Check Radio-box
var counter = 1;
var total = 0;
var average = 0;

    $(".rating input:radio").attr("checked", false);
    $('.form option').click(function () {
        $(".rating").removeClass('checked');
        $(this).parent().addClass('checked');
    });

    $('input:radio').change(
    function(){
        var userRating = this.value;
        total += parseFloat(userRating);
        counter = counter+1;
        average = total/counter;
        
        alert(total + ', ' + counter+', ' + average + ', '+userRating);
        document.getElementById("lets").innerHTML ="Your Score: "+userRating;
        document.getElementById("see").innerHTML = "|Average: "+average;
        document.getElementById("money").innerHTML = "|# of Votes: "+counter;
    });
});