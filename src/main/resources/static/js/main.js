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
	var z = document.getElementById('bs-num2-b');
	var x = document.getElementById('add-active-class-3');
	var y = document.getElementById('add-active-class-1');
	var a = document.getElementById('bs-num1-b');
	
	z.innerHTML = ''
	z.classList.remove('bs-stepper-circle')
	z.classList.add("fas")
	z.classList.add("fa-check-circle")
	z.classList.add("fa-2x")
	z.classList.add("text-success")
	x.classList.add('active')
	y.classList.remove('active')
	
	a.innerHTML = ''
	a.classList.remove('bs-stepper-circle')
	a.classList.add("fas")
	a.classList.add("fa-check-circle")
	a.classList.add("fa-2x")
	a.classList.add("text-success")
	
	
	document.getElementById('stepb-1-content').style.display = 'none';
	document.getElementById('stepb-2-content').style.display = 'none';
	document.getElementById("step1-content").style.display = "inline";
	document.getElementById("step2-content").style.display = "none";
	document.getElementById("step3-content").style.display = "none";
	document.getElementById("stepfour-content").style.display = "none";
	}

function showStepTwo(){
	var z = document.getElementById('bs-num1');
	var x = document.getElementById('add-active-class-4');
	var y = document.getElementById('add-active-class-1');
	var a = document.getElementById('bs-num2-b');
	var b = document.getElementById('bs-num1-b');
	
	z.innerHTML = ''
	z.classList.remove('bs-stepper-circle')
	z.classList.add("fas")
	z.classList.add("fa-check-circle")
	z.classList.add("fa-2x")
	z.classList.add("text-success")
	x.classList.add('active')
	
	y.classList.remove('active')
	a.innerHTML = ''
	a.classList.remove('bs-stepper-circle')
	a.classList.add("fas")
	a.classList.add("fa-check-circle")
	a.classList.add("fa-2x")
	a.classList.add("text-success")
	b.innerHTML = ''
	b.classList.remove('bs-stepper-circle')
	b.classList.add("fas")
	b.classList.add("fa-check-circle")
	b.classList.add("fa-2x")
	b.classList.add("text-success")
	
	document.getElementById('stepb-1-content').style.display = 'none';
	document.getElementById('stepb-2-content').style.display = 'none';
	document.getElementById("step1-content").style.display = "none";
	document.getElementById("step2-content").style.display = "inline";
	document.getElementById("step3-content").style.display = "none";
	document.getElementById("stepfour-content").style.display = "none";
	}
function showStepThree(){
	var z = document.getElementById('bs-num2');
	var x = document.getElementById('add-active-class-5');
	var a = document.getElementById('bs-num2-b');
	var b = document.getElementById('bs-num1-b');
	var y = document.getElementById('bs-num1');
	
	
	z.innerHTML = ''
	z.classList.remove('bs-stepper-circle')
	z.classList.add("fas")
	z.classList.add("fa-check-circle")
	z.classList.add("fa-2x")
	z.classList.add("text-success")
	x.classList.add('active')
	
	a.innerHTML = ''
	a.classList.remove('bs-stepper-circle')
	a.classList.add("fas")
	a.classList.add("fa-check-circle")
	a.classList.add("fa-2x")
	a.classList.add("text-success")
	b.innerHTML = ''
	b.classList.remove('bs-stepper-circle')
	b.classList.add("fas")
	b.classList.add("fa-check-circle")
	b.classList.add("fa-2x")
	b.classList.add("text-success")
	y.innerHTML = ''
	y.classList.remove('bs-stepper-circle')
	y.classList.add("fas")
	y.classList.add("fa-check-circle")
	y.classList.add("fa-2x")
	y.classList.add("text-success")
	
	document.getElementById('stepb-1-content').style.display = 'none';
	document.getElementById('stepb-2-content').style.display = 'none';
	document.getElementById("step1-content").style.display = "none";
	document.getElementById("step2-content").style.display = "none";
	document.getElementById("step3-content").style.display = "inline";
	document.getElementById("stepfour-content").style.display = "none";
	}
function showStepFour(){
	var z = document.getElementById('bs-num3');
	var x = document.getElementById('add-active-class-6');
	var a = document.getElementById('bs-num1-b');
	var y = document.getElementById('add-active-class-1');
	var d = document.getElementById('bs-num2-b');
	var e = document.getElementById('bs-num1');
	var f = document.getElementById('bs-num2');
	
	z.innerHTML = ''
	z.classList.remove('bs-stepper-circle')
	z.classList.add("fas")
	z.classList.add("fa-check-circle")
	z.classList.add("fa-2x")
	z.classList.add("text-success")
	x.classList.add('active')
	
	a.innerHTML = ''
	a.classList.remove('bs-stepper-circle')
	a.classList.add("fas")
	a.classList.add("fa-check-circle")
	a.classList.add("fa-2x")
	a.classList.add("text-success")
	
	d.innerHTML = ''
	d.classList.remove('bs-stepper-circle')
	d.classList.add("fas")
	d.classList.add("fa-check-circle")
	d.classList.add("fa-2x")
	d.classList.add("text-success")
	
	e.innerHTML = ''
	e.classList.remove('bs-stepper-circle')
	e.classList.add("fas")
	e.classList.add("fa-check-circle")
	e.classList.add("fa-2x")
	e.classList.add("text-success")
	
	f.innerHTML = ''
	f.classList.remove('bs-stepper-circle')
	f.classList.add("fas")
	f.classList.add("fa-check-circle")
	f.classList.add("fa-2x")
	f.classList.add("text-success")
	
	 
	 
	y.classList.remove('active');
	y.classList.add('text-success');
	
	document.getElementById('stepb-1-content').style.display = 'none';
	document.getElementById('stepb-2-content').style.display = 'none';
	document.getElementById("step1-content").style.display = "none";
	document.getElementById("step2-content").style.display = "none";
	document.getElementById("step3-content").style.display = "none";
	document.getElementById("stepfour-content").style.display = "inline";
	}


//ADDED javascript to baet's feature -- for the stepper
function showStepOneB(){
	document.getElementById('stepb-2-content').style.display = 'none';
	document.getElementById("step1-content").style.display = "none";
	document.getElementById("step2-content").style.display = "none";
	document.getElementById("step3-content").style.display = "none";
	document.getElementById('stepb-1-content').style.display = 'inline';
} 
function showStepTwoB(){
	var y = document.getElementById('add-active-class-1')
	var x = document.getElementById('add-active-class-2');
	var z = document.getElementById('bs-num1-b');
	
	z.innerHTML = ''
	z.classList.remove('bs-stepper-circle')
	z.classList.add("fas")
	z.classList.add("fa-check-circle")
	z.classList.add("fa-2x")
	z.classList.add("text-success")
	 
	y.classList.remove('active');
	y.classList.add('text-success');
	x.classList.add("active");
	document.getElementById('stepb-1-content').style.display = 'none';
	document.getElementById('stepb-2-content').style.display = 'inline';
	document.getElementById("step1-content").style.display = "none";
	document.getElementById("step2-content").style.display = "none";
	document.getElementById("step3-content").style.display = "none";
}
//DONE ADDING for baet's feature -- for the stepper



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

//email container show === SMTP =====
function sendEmailID(){
	var x = document.getElementById('step1-content');
	var y = document.getElementById('smtp2-content');
	var z = document.getElementById('bs-num1');
	
	x.style.display = 'none';
	y.style.display = 'inline';
	z.innerHTML = "";
	z.classList.remove('bs-stepper-circle')
	z.classList.add("fas")
	z.classList.add("fa-check-circle")
	z.classList.add("fa-2x")
	z.classList.add("text-success")
	
}
function showSmtpThree(){
	var x = document.getElementById('smtp3-content');
	var y = document.getElementById('step3-content');
	var z = document.getElementById('step2-content');
	var a = document.getElementById('bankBtn');
	var b = document.getElementById('bs-num2');
	
	
	x.style.display = 'inline';
	y.style.display = 'none';
	z.style.display = 'none';
	
	a.classList.add("disabled");
	b.innerHTML = "";
	b.classList.remove('bs-stepper-circle')
	b.classList.add("fas")
	b.classList.add("fa-check-circle")
	b.classList.add("fa-2x")
	b.classList.add("text-success")
	
}



//Sidenav ====== REPORTS GENERATION =======
function sidenav2(){
	var x = document.getElementById('asd-2');
	var y = document.getElementById('asd-1');
	
	x.style.display = "inline";
	y.style.display = "none";
	
}










var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
type: 'bar',
data: {
labels: ["January", "February", 
	"March", "April", "May", "June", "July",
	"August", "September", "November","December"],
datasets: [{
label: 'Recruiting Report of New Hires',
data: [12, 3, 4 ,5, 6, 7, 8 , 9, 10, 11, 2],
backgroundColor: [
'rgba(255, 99, 132, 0.2)',
'rgba(54, 162, 235, 0.2)',
'rgba(255, 206, 86, 0.2)',
'rgba(75, 192, 192, 0.2)',
'rgba(153, 102, 255, 0.2)',
'rgba(255, 159, 64, 0.2)',
'rgba(255, 102, 125, 0.2)',
'rgba(255, 180, 155, 0.2)',
'rgba(255, 92, 125, 0.2)',
'rgba(255, 82, 230, 0.2)',
'rgba(255, 182, 225, 0.2)'
],
borderColor: [
'rgba(255,99,132,1)',
'rgba(54, 162, 235, 1)',
'rgba(255, 206, 86, 1)',
'rgba(75, 192, 192, 1)',
'rgba(153, 102, 255, 1)',
'rgba(255, 159, 64, 1)'
],
borderWidth: 1
}]
},
options: {
scales: {
yAxes: [{
ticks: {
beginAtZero: true
}
}]
}
}
});






