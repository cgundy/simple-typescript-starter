"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var express_1 = __importDefault(require("express"));
var app = (0, express_1.default)();
var PORT = 3001;
app.get('/', function (req, res) {
    var num = 12;
    res.json({ message: 'Welcome to Typescript Tutorial', number: num });
    // also try showing typeof num
});
app.listen(PORT, function () {
    console.log('server is running');
});
