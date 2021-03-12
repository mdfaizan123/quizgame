var questionOption=document.getElementById("question-option");
var timeRun=document.getElementById("time-run");  
var optionValue=document.getElementsByClassName("option-value"); 
var optionChecked=document.getElementsByClassName("option-checked");
var timercount;
var toggle=true;
var question=1;
//store all answer in answer constant variable
const answer = [
  {ans: 0},
  {ans: 0},
  {ans: 0},
  {ans: 0},
  {ans: 0}
];

document.getElementsByClassName("next-button")[0].addEventListener("click",clickNext); //when Next button click
// in this function save answer 
function clickNext(){
    if(question<6){
        toggle=true;
        for(var i=0;i<4;i++){
            if(optionChecked[i].checked){
                answer[question-1]=++i;
                question++;
                toggle=false;
                break;
            }
        }
        if(toggle){
            answer[question-1]=0;
            question++;
        }
    }
    if(question===6){
        callAjax("AddResult"); //call ajax when all 5 question are run 
    }
    else{
        update(question);  // call update quesstion
    }
}
// update quesstion
function update(index){
    for(var i=0;i<4;i++){
        optionChecked[i].checked=false;
    }
    questionOption.innerText=`Q${index}) ${allQuestion[index-1].question}`;
    for(var i=0;i<4;i++){
        optionValue[i].innerText=allQuestion[index-1].option[i];
    }
    timeRun.innerHTML=30;
    timercount=setTimeout("Timer()",1000);
}
//call ajax and set result in database using servlet(AddResult)
function callAjax(url){
    var request;
    if(window.XMLHttpRequest){  
      request=new XMLHttpRequest();
    }  
    else if(window.ActiveXObject){  
        request=new ActiveXObject("Microsoft.XMLHTTP");  
    } 

    request.open('POST', url, true);

    request.setRequestHeader("X-Answer", "42");
    request.onload = function () {
        if(this.status === 200){
            console.log(this.responseText);
            if(this.responseText=="yes"){
                document.location.href="Result";  //redirect to result page if data insert successful in databse
            }
        }
        else{
             window.alert("Some error occured");
        }
    };
//    set parametere
    var formData = new FormData(); 
    for(var i=0;i<5;i++){
        formData.append("answer", answer[i]);
    }
    
    request.send(formData);
}
//timer for all qustion and question change after 30 sec
timercount=setTimeout("Timer()",1000);
function Timer(){
    clearTimeout(timercount);
    if(timeRun.innerHTML>0){
        timeRun.innerHTML=timeRun.innerHTML-1;
        timercount=setTimeout("Timer()",1000);
    }
    else{
       clickNext();
    }
}


