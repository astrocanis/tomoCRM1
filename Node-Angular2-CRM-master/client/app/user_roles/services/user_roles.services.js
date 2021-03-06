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
    var headers, UserRoleService;
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
            headers = new http_1.Headers();
            headers.append('Content-Type', 'application/json');
            UserRoleService = (function () {
                function UserRoleService(http) {
                    this.http = http;
                }
                UserRoleService.prototype.saveNewUserRole = function (jwt, form_body) {
                    var authHeader = new http_1.Headers();
                    authHeader.append('Authorization', jwt);
                    return this.http.post('/api/user_roles/add', JSON.stringify(form_body), { headers: authHeader })
                        .map((function (response) { return response.json(); }));
                };
                UserRoleService.prototype.deleteUserRole = function (jwt, user_id, role_id) {
                    var authHeader = new http_1.Headers();
                    authHeader.append('Authorization', jwt);
                    return this.http.get('/api/user_roles/delete/' + user_id + '/' + role_id, { headers: authHeader })
                        .map((function (response) { return response.json(); }));
                };
                UserRoleService.prototype.getUserRoles = function (jwt) {
                    var authHeader = new http_1.Headers();
                    authHeader.append('Authorization', jwt);
                    return this.http.get('/api/user_roles/', { headers: authHeader })
                        .map((function (response) { return response.json().data; }));
                };
                UserRoleService.prototype.getUsersAndRoles = function (jwt) {
                    var authHeader = new http_1.Headers();
                    authHeader.append('Authorization', jwt);
                    return this.http.get('/api/user_roles/add', { headers: authHeader })
                        .map((function (response) { return response.json().data; }));
                };
                UserRoleService.prototype.reactivateUserRole = function (jwt, user_id, role_id) {
                    var authHeader = new http_1.Headers();
                    authHeader.append('Authorization', jwt);
                    return this.http.get('/api/user_roles/reactivate/' + user_id + '/' + role_id, { headers: authHeader })
                        .map((function (response) { return response.json(); }));
                };
                UserRoleService = __decorate([
                    core_1.Injectable(), 
                    __metadata('design:paramtypes', [(typeof (_a = typeof http_1.Http !== 'undefined' && http_1.Http) === 'function' && _a) || Object])
                ], UserRoleService);
                return UserRoleService;
                var _a;
            }());
            exports_1("UserRoleService", UserRoleService);
        }
    }
});
//# sourceMappingURL=user_roles.services.js.map