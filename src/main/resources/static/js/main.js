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
