class Monster {
    var Name = "モンスター"
    var HP = 50
    
    func Atteck(enemy: Monster) {
        enemy.HP -= 1
        print("\(enemy.Name)に1ダメージ")
    }
    
    func Escape() {
        print("\(Name)は逃げ出した")
    }
}

class Doragon : Monster {
    override init() {
        super.init()
        self.Name = "ドラゴン"
        self.HP = 300
    }
    override func Atteck(enemy: Monster) {
        enemy.HP -= 30
        print("輝く息！\(enemy.Name)に30ダメージ")
    }
}

var mons1 = Monster()
mons1.Name = "スライム"
mons1.HP = 10
var mons2 = Doragon()
print(mons2.HP)
mons1.Atteck(enemy: mons2)
print(mons2.HP)
print(mons1.HP)
mons2.Atteck(enemy: mons1);
print(mons1.HP)
