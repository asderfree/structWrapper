#ifndef FACTORY_H
#define FACTORY_H

#include <iostream>
#include <stdio.h>

class iGun
{
    public:
    std::string name;
    int power;
    public:
    virtual std::string getName();
    virtual int getPower();
    virtual void setName(std::string name);
    virtual void setPower(int power);
    virtual void show();
};


class ak47: public iGun
{
    public:
    ak47(std::string name, int power){
        this->name = name;
        this->power = power;
    }
    ~ak47(){
    }
};

class uzi: public iGun
{
    public:
    uzi(std::string name, int power)
    {
        this->name = name;
        this->power = power;
    }
    ~uzi(){
    }
};

class iFactory
{
    public:
    virtual iGun* createGun(std::string name, int power) = 0;
};

class AKFactory: public iFactory
{
    public:
    iGun* createGun(std::string name, int power);
};

class UZIFactory: public iFactory
{
    public:
    iGun* createGun(std::string name, int power);
};

#endif