import {Component} from 'angular2/core';
import {RouteConfig, ROUTER_DIRECTIVES} from 'angular2/router';

import {RegistracijaComponent} from 'app/registracija/registracija.component';
import {LoginComponent} from 'app/login/login.component';
import {MainPageComponent} from 'app/mainpage/mainpage.component';

@Component({
	selector: 'moja-aplikacija',
	templateUrl: 'app/router.html',
	directives: [ROUTER_DIRECTIVES]
	})

@RouteConfig([
  {path:'/', name: 'MainPage', component: MainPageComponent, useAsDefault: true},
  {path:'/registracija', name:'Registracija', component: RegistracijaComponent},
  {path:'/login', name:'Login', component: LoginComponent},
])

export class AppComponent { }