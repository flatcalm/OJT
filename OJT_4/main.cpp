#include <iostream>
#include <string>
#include <regex>
#include <cmath>

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
protected:
    virtual void calculate() {
        setResult(getNum1() + (double) getNum2());
        return;
    }
};

class Subtract : public Operator{
// write
protected:
    virtual void calculate() {
        setResult(getNum1() - (double) getNum2());
        return;
    }
};

class Multiply : public Operator{
// write
protected:
    virtual void calculate() {
        setResult(getNum1() * (double) getNum2());
        return;
    }
};

class Divide : public Operator{
// write
protected:
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

        std::regex pattern("^-?\\d+[-+*/]-?\\d+?$");

        if (!std::regex_match(inputstr, pattern)) {
            if (inputstr.front() == '+') {
                std::cout << "양수는 허용하지 않습니다. 다시 입력해주세요." << std::endl << std::endl;
                continue;
            }
            else if (inputstr.front() != '+') {
                if (inputstr.find('+', inputstr.find('+') + 1) - inputstr.find('+') == 1) {
                    std::cout << "양수는 허용하지 않습니다. 다시 입력해주세요." << std::endl << std::endl;
                    continue;
                }
                else {
                    std::cout << "올바르지 않은 수식입니다. 다시 입력해주세요." << std::endl << std::endl;
                    continue;
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
                    std::cout << "올바르지 않은 수식입니다. 다시 입력해주세요." << std::endl << std::endl;
                    continue;
                }
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
            catch (invalid_argument&) {
                // cout << "num1 : " << num1 << ", num2 : " << num2 << endl << endl;
                cout << "올바르지 않은 수입니다. 정수를 입력해주세요." << endl << endl;
                continue;
            }
            catch (out_of_range&) {
                cout << "-2,147,483,648 ~ 2,147,483,647 사이의 수를 입력해주세요." << endl << endl;
                continue;
            }
        }

        double result;

        switch (sign) {
            case '+' :
                a.setNumber(num1, num2);
                result = a.getResult();
                break;
            case '-' :
                s.setNumber(num1, num2);
                result = s.getResult();
                break;
            case '*' :
                m.setNumber(num1, num2);
                result = m.getResult();
                break;
            case '/' :
                if (num2 == 0) {
                    cout << "0으로는 나눌 수 없습니다. 다시 입력해주세요." << endl << endl;
                    continue;
                }
                d.setNumber(num1, num2);
                result = d.getResult();
                break;
            default :
                cout << "올바르지 않은 수식입니다. 다시 입력해주세요." << endl << endl;
                continue;
        }

        cout << fixed;

        if (sign != '/') {
            cout.precision(0);
        }
        else {
            // 결과값 자릿수 계산
            double x = result;
            int count = 0;
            while (x) {
                x = result * pow(10, count);
                x = fmod(x, 1.0);
                count++;
            }

            if (count > 9) {
                cout.precision(9);
            }
            else {
                cout.precision(count - 1);
            }
        }
        cout << input_exp << " 계산 결과는 " << result << "입니다." << endl << endl;
    }
    return 0;
}
