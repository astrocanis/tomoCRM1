System.register(['angular2/core', 'angular2/http', 'rxjs/Rx'], function(exports_1, context_1) {
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
    var core_1, http_1;
    var headers, UserService;
    return {
        setters:[
            function (core_1_1) {
                core_1 = core_1_1;
            },
            function (http_1_1) {
                http_1 = http_1_1;
            },
            function (_1) {}],
        execute: function() {
            headers = new http_1.Headers({
                'Content-Type': 'application/json'
            });
            UserService = (function () {
                function UserService(http) {
                    this.http = http;
                }
                UserService.prototype.saveNewUser = function (jwt, form_body) {
                    headers.append('Authorization', jwt);
                    return this.http.post('/api/users/add', JSON.stringify(form_body), { headers: headers })
                        .map((function (response) { return response.json(); }));
                };
                UserService.prototype.saveEditUser = function (jwt, id, form_body) {
                    headers.append('Authorization', jwt);
                    return this.http.post('/api/users/edit/' + id, JSON.stringify(form_body), { headers: headers })
                        .map((function (response) { return response.json(); }));
                };
                UserService.prototype.deleteUser = function (jwt, id) {
                    headers.append('Authorization', jwt);
                    return this.http.get('/api/users/delete/' + id, { headers: headers })
                        .map((function (response) { return response.json(); }));
                };
                UserService.prototype.getUsers = function (jwt) {
                    var authHeader = new http_1.Headers();
                    authHeader.append('Authorization', jwt);
                    return this.http.get('/api/users/', { headers: authHeader })
                        .map((function (response) { return response.json().data; }));
                };
                UserService.prototype.getEditUser = function (jwt, id) {
                    var authHeader = new http_1.Headers();
                    authHeader.append('Authorization', jwt);
                    return this.http.get('/api/users/edit/' + id, { headers: authHeader })
                        .map((function (response) { return response.json(); }));
                };
                UserService = __decorate([
                    core_1.Injectable(), 
                    __metadata('design:paramtypes', [(typeof (_a = typeof http_1.Http !== 'undefined' && http_1.Http) === 'function' && _a) || Object])
                ], UserService);
                return UserService;
                var _a;
            }());
            exports_1("UserService", UserService);
        }
    }
});
//# sourceMappingURL=users.services.js.map