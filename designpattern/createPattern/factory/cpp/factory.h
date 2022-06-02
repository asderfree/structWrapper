#include <iostream>
#include <stdio.h>

class iGun
{
    private:
    std::string name;
    int power;
    public:
    virtual std::string getName();
    virtual int getPower();
    virtual void setName(std::string name);
    virtual void setPower(int power);
    virtual void show();
};