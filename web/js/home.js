var Easy=document.getElementById("easy-level");
var Medium=document.getElementById("medium-level");
var Hard=document.getElementById("hard-level");
var level="";

//redirect to the play.jsp 
document.getElementsByClassName("start-button")[0].addEventListener("click",function(){
    if(Easy.checked){
        level="Easy";
    }
    else if(Medium.checked){
        level="Medium";
    }
    else{
        level="Hard";
    }
    if(document.getElementById("name").value!==""){
        window.location.href=`Play?level=${level}&name=${document.getElementById("name").value}`;
    }
    else{
        window.alert("Please insert your name");
    }
});
