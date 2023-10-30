#include "calculator.h"
#include <iostream>
#include <string>
#include <regex>
#include <cmath>

using namespace std;

Calculator::Calculator(){}
Calculator::~Calculator(){}

double Calculator::calculate()
{

    string input_exp = input_string.toString().toStdString();
    int num1, num2;
    char sign;

    stringstream stream(input_exp);
    stream >> num1;
    stream >> sign;
    stream >> num2;

    // 공백 제거
    string inputstr = input_exp;
    inputstr.erase(remove(inputstr.begin(), inputstr.end(), ' '), inputstr.end());

    // 입력값 검증
    std::regex pattern("^-?\\d+[-+*/]-?\\d+?$");

    if (!std::regex_match(inputstr, pattern)) {
        if (inputstr.front() == '+') { // +로 시작하는 지
            return 0;
        }
        else if (inputstr.front() != '+') {
            if (inputstr.find('+', inputstr.find('+') + 1) - inputstr.find('+') == 1) { // + 연산자 뒤에 +가 존재할 때
                return 0;
            }
            else { // 수식이 올바르지 않을 때
                return 0;
            }
        }
    }

    int index = -1;

    if (inputstr.find('*') != string::npos) {
        index = inputstr.find('*');
        sign = '*';
    }
    else if (input_exp.find('/') != string::npos) {
        index = inputstr.find('/');
        sign = '/';
    }
    else if (inputstr.find('+') != string::npos) {
        index = inputstr.find('+');
        sign = '+';
    }
    // 음수일 때 추가 처리
    else if (inputstr.find('-') != string::npos) {
        if (inputstr.front() == '-') {
            if (inputstr.find('-', inputstr.find('-') + 1) != string::npos) {
                index = inputstr.find('-', inputstr.find('-') + 1);
            }
            else {
                return 0;
            }
        }
        else {
            index = inputstr.find('-');
        }
        sign = '-';
    }
    else {
        return 0;
    }

    if (index != -1) {
        try {
            string n1 = inputstr;
            n1.resize(index);
            num1 = stoi(n1);
            num2 = stoi(inputstr.substr(index + 1));
        }
        catch (invalid_argument&) { // 입력값이 정수가 아닐 때
            return 0;
        }
        catch (out_of_range&) { // 입력값이 int 범위 초과일 때
            return 0;
        }
    }

    switch (sign) {
        case '+' :
            setNumber(num1, num2);
            return add();
        case '-' :
            setNumber(num1, num2);
        return subtract();
        case '*' :
            setNumber(num1, num2);
            return multiply();
        case '/' :
            if (num2 == 0) { // 0으로 나누려고 할 때
                return 0;
            }
            setNumber(num1, num2);
            return divide();
        default : // 수식이 +, -, *, / 아닐 때
            return 0;
    }

}

double Calculator::add() {
    return getNum1() + (double) getNum2();
}

double Calculator::subtract() {
    return getNum1() - (double) getNum2();
}

double Calculator::multiply() {
    return getNum1() * (double) getNum2();
}

double Calculator::divide() {
    return getNum1() / (double) getNum2();
}
