#include "factory.h"

std::string iGun::getName()
{
    return this->name;
}

int iGun::getPower()
{
    return this->power;
}

void iGun::setName(std::string name) 
{
    this->name = name;
}

void iGun::setPower(int power)
{
    this->power = power;
}

void iGun::show()
{
    printf("The Name is: %s and the power is: %d\n", this->name.c_str(), this->power);
}

iGun* AKFactory::createGun(std::string name, int power)
{
    return new ak47(name, power);
}

iGun* UZIFactory::createGun(std::string name, int power)
{
    return new uzi(name, power);
}