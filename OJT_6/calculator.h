#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <QObject>
#include <QVariant>

class Calculator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double result READ getResult WRITE setResult NOTIFY resultChanged)
    Q_PROPERTY(QVariant input_string READ getInput_string WRITE setInput_string NOTIFY input_stringChanged)

private:
    int num1;
    int num2;
    double result;
    QVariant input_string;

protected:
    void setResult(double result) { this->result = result; emit resultChanged(); }
    int getNum1() { return num1; }
    int getNum2() { return num2; }

public:
    explicit Calculator();
    virtual ~Calculator();

    void setNumber(const int num1, const int num2) { this->num1 = num1; this->num2 = num2; }
    double getResult() { return result; }

    void setInput_string(const QVariant input_string) { this->input_string = input_string; emit input_stringChanged(); }
    QVariant getInput_string() { return input_string; }

    double add();
    double subtract();
    double multiply();
    double divide();
    Q_INVOKABLE double calculate();

signals:
    void input_stringChanged();
    void resultChanged();

};

#endif // CALCULATOR_H
