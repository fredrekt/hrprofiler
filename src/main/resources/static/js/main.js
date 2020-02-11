function testButton() {
	alert("HI!");
}

function updateCustomer() {
	$.ajax({
		type: "post",
		url : $("#customerFrm").attr("action"),
	    data: $("#customerFrm").serialize(),
		success: function(result) {
			//logic after update
			if(result) {
				$("#message").text("Update is successful.");
			} else {
				$("#message").text("Update is not successful.");
			}
		}
	});
}
function hehe(){
	alert("Hello World hehe")
}


function showStepOne(){
	document.getElementById("step1-content").style.display = "inline";
	document.getElementById("step2-content").style.display = "none";
	document.getElementById("step3-content").style.display = "none";
	document.getElementById("stepfour-content").style.display = "none";
	}

function showStepTwo(){
	document.getElementById("step1-content").style.display = "none";
	document.getElementById("step2-content").style.display = "inline";
	document.getElementById("step3-content").style.display = "none";
	document.getElementById("stepfour-content").style.display = "none";
	}
function showStepThree(){
	document.getElementById("step1-content").style.display = "none";
	document.getElementById("step2-content").style.display = "none";
	document.getElementById("step3-content").style.display = "inline";
	document.getElementById("stepfour-content").style.display = "none";
	}
function showStepFour(){
	document.getElementById("step1-content").style.display = "none";
	document.getElementById("step2-content").style.display = "none";
	document.getElementById("step3-content").style.display = "none";
	document.getElementById("stepfour-content").style.display = "inline";
	}
function loadTxt(){
	alert('Employee Successfully Onboarded!')
	document.getElementById('acptbtn').innerHTML = 'Affirmative';
	}
function load(){
	document.getElementById('acptbtn').innerHTML = '<div class="spinner-border text-success" role="status"><span class="sr-only">Loading...</span></div>'
	setTimeout(loadTxt, 3000);
}
function printID(){
	window.print()
}
function freds(){
	alert("freds are")
}

function showLetterOptions(){
	var checkbox = document.getElementById('customSwitches');
	
	if(checkbox.checked == true){
		document.getElementById('txt-letter').innerHTML = 'For the employee to attach his/her resignation letter';
		document.getElementById('txt-label-letter').innerHTML = "Still need to make a letter?";
		document.getElementById('letter-area').style.display = "none";
		document.getElementById('upload-area').style.display = "inline";
	}
	else{
		document.getElementById('txt-letter').innerHTML = 'For the employee to write the letter addressing the company to retire';
		document.getElementById('txt-label-letter').innerHTML = "Already have a letter?";
		document.getElementById('letter-area').style.display = "inline";
		document.getElementById('upload-area').style.display = "none";
	}
}

function changeFunc() {
    var selectBox = document.getElementById("selectBox");
    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    console.log(selectedValue);
    
    if(selectedValue == "4"){
    	document.getElementById('add-reason').style.display = 'inline';
    }
    else{
    	document.getElementById('add-reason').style.display = 'none';
    }
    
}

function loadTxt2(){
	alert('Employee Successfully Offboarded!')
	document.getElementById('acptbtn').innerHTML = 'all done';
	}
function loadsm(){
	document.getElementById('acptbtn').innerHTML = '<div class="spinner-border spinner-border-sm text-light" role="status"><span class="sr-only">Loading...</span></div>'
	setTimeout(loadTxt2, 3000);
}

//For the steppers for EMPLOYEE OFFBOARDING

//STEPPER 1 - CONTENT - AND BREADCRUMBS
function nextStep1(){
	var element = document.getElementById("cmp1");
	var x = document.getElementById("cmp2");
	var step1 = document.getElementById('stepper1');
	var step2 = document.getElementById('stepper2');
	x.classList.remove("disabled");
	step1.style.display = 'none';
	step2.style.display = 'inline';
	x.classList.add("active")
	element.classList.add("completed");
}

//STEPPER 2 - CONTENT - AND BREADCRUMBS
function nextStep2(){
	var element = document.getElementById("cmp2");
	var x = document.getElementById("cmp3");
	var step1 = document.getElementById('stepper2');
	var step2 = document.getElementById('stepper3');
	x.classList.remove("disabled");
	step1.style.display = 'none';
	step2.style.display = 'inline';
	x.classList.add("active")
	element.classList.add("completed");
}



