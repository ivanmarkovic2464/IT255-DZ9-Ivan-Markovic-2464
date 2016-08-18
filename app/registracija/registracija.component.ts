import { Directive } from 'angular2/core';
import { FormBuilder, Validators, ControlGroup, Control, FORM_DIRECTIVES, FORM_BINDINGS} from 'angular2/common'
import {Http, HTTP_PROVIDERS, Headers} from 'angular2/http';
import 'rxjs/Rx';
import {Router, ROUTER_PROVIDERS} from 'angular2/router'
import{Component} from "angular2/core";

@Component({
  selector: 'RegistracijaComponent',
  templateUrl: 'app/registracija/registracija.html',
  directives: [FORM_DIRECTIVES],
  viewBindings: [FORM_BINDINGS]
})

export class RegistracijaComponent{

  registerForm: ControlGroup;
  http: Http;
  router: Router;
  postResponse: String;
  constructor(builder: FormBuilder, http: Http,  router: Router) {
	this.http = http;
	this.router = router;
    this.registerForm = builder.group({
     k_ime: ["", Validators.none],
     lozinka: ["", Validators.none],
     ime: ["", Validators.none],
     prezime: ["", Validators.none],
	 email: ["", Validators.none]
   });
  }

  onRegister(): void {
	var data = "k_ime="+this.registerForm.value.k_ime+"&lozinka="+this.registerForm.value.lozinka+"&ime="+this.registerForm.value.ime+"&prezime="+this.registerForm.value.prezime+"&email="+this.registerForm.value.email;
	var headers = new Headers();
	headers.append('Content-Type', 'application/x-www-form-urlencoded');
	this.http.post('http://localhost/IT255-DZ9-Ivan-Markovic-2464/php/register.php',data, {headers:headers})
    .map(res => res)
    .subscribe( data => this.postResponse = data, 
	 err => alert(JSON.stringify(err)),
	 () => {
	 if(this.postResponse.body == "ok"){
	 alert("Uspesna registracija");
	    this.router.parent.navigate(['./mainpage']);
	 }else{
		alert("Neuspesna registracija");
	 }
	 }
	);

  }
}