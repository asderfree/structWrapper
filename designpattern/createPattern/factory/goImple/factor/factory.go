package gun

import "fmt"

/**
 * @Description: 工厂模式的go代码
 */
type iGun interface {
	setName(name string)
	setPower(power int)
	getName() string
	getPower() int
	showDetail()
}

type gun struct {
	name  string
	power int
}

func (g *gun) setName(name string) {
	g.name = name
}

func (g *gun) setPower(power int) {
	g.power = power
}

func (g *gun) getName() string {
	return g.name
}

func (g *gun) getPower() int {
	return g.power
}

func (g *gun) showDetail() {
	fmt.Printf("The name is: %s and the power is: %d\n", g.name, g.power)
}

type ak47 struct {
	gun
}

func newAK47() iGun {
	return &ak47{
		gun: gun{
			name:  "AK47",
			power: 4,
		},
	}
}

type musket struct {
	gun
}

func newMusket() iGun {
	return &musket{
		gun: gun{
			name:  "Musket",
			power: 1,
		},
	}
}

func getGun(gunType string) (iGun, error) {
	if gunType == "ak47" {
		return newAK47(), nil
	}
	if gunType == "musket" {
		return newMusket(), nil
	}
	return nil, fmt.Errorf("unregister gun type for input")
}

func FactoryDO() {
	ak47, _ := getGun("ak47")
	musket, _ := getGun("musket")
	ak47.showDetail()
	musket.showDetail()
}
