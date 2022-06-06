#include <iostream>
#include "factory.h"

int main()
{
    iFactory *akFactory = new AKFactory();
    iFactory *uziFactory = new UZIFactory();
    iGun* gun1 = akFactory->createGun("1", 5);
    iGun* gun2 = uziFactory->createGun("2", 1);
    gun1->show();
    gun2->show();
    return 0;
}