import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {
    number1;
    number2;
    result;
    operator;
    resultData = [];

    handleChange(event) {
        const name = event.target.name;
        if (name === 'firstNumber') {
            this.number1 = event.target.value;
        } if (name === 'secondNumber') {
            this.number2 = event.target.value;
        }
    }

    add() {
        this.operator = '+';
        this.result = parseInt(this.number1) + parseInt(this.number2);
        this.resultData.push(this.result);
    }

    sub() {
        this.operator = '-';
        this.result = parseInt(this.number1) - parseInt(this.number2);
        this.resultData.push(this.result);
    }

    mul() {
        this.operator = '*';
        this.result = parseInt(this.number1) * parseInt(this.number2);
        this.resultData.push(this.result);
    }

    div() {
        this.operator = '/';
        this.result = parseInt(this.number1) / parseInt(this.number2);
        this.resultData.push(this.result);
    }
}