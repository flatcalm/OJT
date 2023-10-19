#include <iostream>
#include <string>
#include <algorithm>
#include <locale>

using namespace std;

class Operator {
private:
    int num1;
    int num2;
    double result;

protected:
    void setResult(double result) { this->result = result; }
    int getNum1() { return num1; }
    int getNum2() { return num2; }
    virtual void calculate() = 0;

public:
    void setNumber(int num1, int num2) { this->num1 = num1; this->num2 = num2; }
    double getResult() { calculate(); return result; }
};

class Add : public Operator{
    // write
    public:
        virtual void calculate() {
            setResult(getNum1() + getNum2());
            return;
        }
};

class Subtract : public Operator{
    // write
    public:
        virtual void calculate() {
            setResult(getNum1() - getNum2());
            return;
        }
};

class Multiply : public Operator{
    // write
    public:
        virtual void calculate() {
            setResult(getNum1() * getNum2());
            return;
        }
};

class Divide : public Operator{
    // write
    public:
        virtual void calculate() {
            setResult(getNum1() / (double) getNum2());
            return;
        }
};

int main()
{
    Add a;
    Subtract s;
    Multiply m;
    Divide d;

    string input_exp;
    int num1, num2;
    char sign;

    while (1) {
        cout << "수식을 입력하세요. (break 입력 시 종료)" << endl;
        getline(cin, input_exp);

        // write
        // 공백 제거
        string inputstr = input_exp;
        inputstr.erase(remove(inputstr.begin(), inputstr.end(), ' '), inputstr.end());

        if (inputstr.empty()) {
            cout << "입력값이 없습니다. 다시 입력해주세요." << endl << endl;
            continue;
        }

        // 소문자로 일괄 변경
        for (int i = 0; i < inputstr.size(); i++) {
            inputstr[i] = tolower(inputstr[i]);
        }

        if (inputstr == "break") {
            cout << "break가 입력되어 프로그램을 종료합니다." << endl;
            exit(0);
        }

        // 맨 앞 글자가 +이면 제거
        if (inputstr[0] == '+') {
            inputstr.erase(0, 1);
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
            if (inputstr.find('--') == string::npos && inputstr.find('-', inputstr.find('-') + 1) != string::npos) {
                index = inputstr.find('-', inputstr.find('-') + 1);
            }
            else {
                index = inputstr.find('-');
            }
            sign = '-';
        }
        else {
            cout << "올바르지 않은 수식입니다. 다시 입력해주세요." << endl << endl;
            continue;
        }

        if (index != -1) {
            try {
                string n1 = inputstr;
                n1.resize(index);
                num1 = stoi(n1);
                num2 = stoi(inputstr.substr(index + 1));
            }
            catch(invalid_argument&) {
                // cout << "num1 : " << num1 << ", num2 : " << num2 << endl << endl;
                cout << "올바르지 않은 수입니다. 정수를 입력해주세요." << endl << endl;
                continue;
            }
        }

        switch (sign) {
                case '+' :
                    a.setNumber(num1, num2);
                    a.calculate();
                    cout << input_exp << " 계산 결과는 " << a.getResult() << "입니다." << endl << endl;
                    break;
                case '-' :
                    s.setNumber(num1, num2);
                    s.calculate();
                    cout << input_exp << " 계산 결과는 " << s.getResult() << "입니다." << endl << endl;
                    break;
                case '*' :
                    m.setNumber(num1, num2);
                    m.calculate();
                    cout << input_exp << " 계산 결과는 " << m.getResult() << "입니다." << endl << endl;
                    break;
                case '/' :
                    d.setNumber(num1, num2);
                    d.calculate();
                    cout.precision(4);
                    cout << input_exp << " 계산 결과는 " << d.getResult() << "입니다." << endl << endl;
                    break;
                default :
                    cout << "올바르지 않은 수식입니다. 다시 입력해주세요." << endl << endl;
                    continue;
        }
    }
    return 0;
}
