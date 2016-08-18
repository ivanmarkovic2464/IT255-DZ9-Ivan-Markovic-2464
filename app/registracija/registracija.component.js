System.register(['angular2/common', 'angular2/http', 'rxjs/Rx', 'angular2/router', "angular2/core"], function(exports_1, context_1) {
    "use strict";
    var __moduleName = context_1 && context_1.id;
    var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
        var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
        if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
        else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
        return c > 3 && r && Object.defineProperty(target, key, r), r;
    };
    var __metadata = (this && this.__metadata) || function (k, v) {
        if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };
    var common_1, http_1, router_1, core_1;
    var RegistracijaComponent;
    return {
        setters:[
            function (common_1_1) {
                common_1 = common_1_1;
            },
            function (http_1_1) {
                http_1 = http_1_1;
            },
            function (_1) {},
            function (router_1_1) {
                router_1 = router_1_1;
            },
            function (core_1_1) {
                core_1 = core_1_1;
            }],
        execute: function() {
            RegistracijaComponent = (function () {
                function RegistracijaComponent(builder, http, router) {
                    this.http = http;
                    this.router = router;
                    this.registerForm = builder.group({
                        k_ime: ["", common_1.Validators.none],
                        lozinka: ["", common_1.Validators.none],
                        ime: ["", common_1.Validators.none],
                        prezime: ["", common_1.Validators.none],
                        email: ["", common_1.Validators.none]
                    });
                }
                RegistracijaComponent.prototype.onRegister = function () {
                    var _this = this;
                    var data = "k_ime=" + this.registerForm.value.k_ime + "&lozinka=" + this.registerForm.value.lozinka + "&ime=" + this.registerForm.value.ime + "&prezime=" + this.registerForm.value.prezime + "&email=" + this.registerForm.value.email;
                    var headers = new http_1.Headers();
                    headers.append('Content-Type', 'application/x-www-form-urlencoded');
                    this.http.post('http://localhost/IT255-DZ9-Ivan-Markovic-2464/php/register.php', data, { headers: headers })
                        .map(function (res) { return res; })
                        .subscribe(function (data) { return _this.postResponse = data; }, function (err) { return alert(JSON.stringify(err)); }, function () {
                        if (_this.postResponse.body == "ok") {
                            alert("Uspesna registracija");
                            _this.router.parent.navigate(['./mainpage']);
                        }
                        else {
                            alert("Neuspesna registracija");
                        }
                    });
                };
                RegistracijaComponent = __decorate([
                    core_1.Component({
                        selector: 'RegistracijaComponent',
                        templateUrl: 'app/registracija/registracija.html',
                        directives: [common_1.FORM_DIRECTIVES],
                        viewBindings: [common_1.FORM_BINDINGS]
                    }), 
                    __metadata('design:paramtypes', [common_1.FormBuilder, http_1.Http, router_1.Router])
                ], RegistracijaComponent);
                return RegistracijaComponent;
            }());
            exports_1("RegistracijaComponent", RegistracijaComponent);
        }
    }
});
//# sourceMappingURL=registracija.component.js.map