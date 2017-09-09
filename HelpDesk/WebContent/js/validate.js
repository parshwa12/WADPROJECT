function validateForm() {
	var returnValue = true;
	var fname = document.reg.fname;
	var lname = document.reg.lname;
	var email = document.reg.email;
	var pass = document.reg.password;

	if (fn_val(fname)) {
		if (ln_val(lname)) {
			if (email_val(email)) {
				if (pass_val(pass, 7, 12)) {
					return true;
				}
			}
		}
	}
	return false;
}

function fn_val(fname) {
	var letter = /^[A-Za-z]+$/; //regular expression
	if (fname.value.match(letter)) {
		return true;
	} else {
		alert("First name must be alphabet");
		fname.focus;
		return false;
	}
}

function ln_val(lname) {
	var letter = /^[A-Za-z]+$/; //regular expression
	if (lname.value.match(letter)) {
		return true;
	} else {
		alert("Last name must be alphabet");
		lname.focus;
		return false;
	}
}

function email_val(email) {
	var letter = /^(\w+[\.\-]?\w+)*@(\w+[\.\-]?\w+)*\.(\w{2,3})+$/;
	if (email.value.match(letter)) {
		return true;
	} else {
		alert("Enter valid email id");
		email.focus();
		return false;
	}
}
function pass_val(pass, my, mx) {
	var pass_len = pass.value.length;
	if (pass_len >= my && pass_len <= mx) {
		return true;
	} else {
		alert("password must be between 7 to 12");
		pass.focus();
		return false;
	}

}
