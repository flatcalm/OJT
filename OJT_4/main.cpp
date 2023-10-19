#include <iostream>
#include <string>

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

// 자식 클래스 : 더하기
class Add : public Operator{
    // write
};

// 자식 클래스 : 빼기
class Subtract : public Operator{
    // write
};

// 자식 클래스 : 곱하기
class Multiply : public Operator{
    // write
};

// 자식 클래스 : 나누기
class Divide : public Operator{
    // write
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
    }
    return 0;
}
