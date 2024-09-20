//#Unsafe
//#LTLProperty: !<>(AP(counter == 10))
/*
Example properties:

	terminating [+] | nonterminating [ ] | correct [+]
		String fileContent = "[](i -> (!b -> <>[]a))\n"
		+ "b: tempIn >= 0 \n"
		+ "a: error = 1\n"
		+ "i: init = 1";
		
	terminating [ ] | nonterminating [+] | correct [+] | with Error 1
		String fileContent = "[](i -> (!b -> <>[]a))\n"
		+ "b: tempIn >= 0 \n"
		+ "a: error = 1\n"
		+ "i: init = 1";
		
		Stem: init := 0;assume true; tempIn := 0;assume true; error := 0;assume true; init := 1;assume true; call coolantControl();< assume true; assume true;assume true; havoc tempIn;assume !(tempIn >= 0) && init == 1; call temp := vinToCels(tempIn);< assume !(error == 1); assume tempIn < 0;assume true; error := 1;assume true; celsius := kelvin - 273;assume true; assume true;assume true; >return call temp := vinToCels(tempIn); 
		Loop: assume true; assume true;assume true; havoc tempIn;assume true; call temp := vinToCels(tempIn);< assume true; assume !(tempIn < 0);assume true; error := 0;assume !(error == 1); celsius := kelvin - 273;assume !(error == 1); assume true;assume true; >return call temp := vinToCels(tempIn); assume true; assume true;assume !(error == 1); havoc tempIn;assume !(error == 1); call temp := vinToCels(tempIn);< assume !(error == 1); assume tempIn < 0;assume true; error := 1;assume true; celsius := kelvin - 273;assume true; assume true;assume true; >return call temp := vinToCels(tempIn); 


*/

var error: int;
var tempIn:int;
var init: int;
var counter : int;

procedure ULTIMATE.start() returns()//initialization
modifies error, tempIn, init, counter;
{ init:= 0;
  tempIn := 0;
  error := 0;
  init:= 1;
  counter := 0;
  while (true){
  	call main();
  }
}

procedure main() returns()
modifies error, tempIn, counter;
{
  var temp: int;
  havoc tempIn;  //poll temperaturesensor
	call temp := vinToCels(tempIn);
	call func1();
	call func2();
}

procedure func1() returns()
modifies counter;
{
	counter := counter+1;
}

procedure func2() returns()
modifies counter;
{
	if(counter >= 10){
		counter := 0;
	}
}

procedure vinToCels(kelvin : int) returns(celsius: int)
modifies error;
{
	if(tempIn < 0){
		error := 1;
	// Error: 1
	}  else {          
		error := 0;
	}
	celsius := kelvin - 273;
}