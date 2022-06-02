package main
import (
	"gun"
)
func main() {

	ak47, _ := gun.getGun("ak47")
	musket, _ := gun.getGun("musket")
	ak47.showDetail()
	musket.showDetail()
}
