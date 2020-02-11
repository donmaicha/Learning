import UIKit

/* 変数 */
var vari = 32
vari = 55
// 変数(型指定)
var vari1:Int = 29
vari1 = 93

/* 定数 */
let const = 66
// const = 43 ←errorになるよ
// 定数(型指定)
let const1:Double = 90

/* 文字列 */
// 連結
var name = "H" + "F"
name += "u"
// 文字列の長さ
name.count
// 文字列リテラル
print("私の名前は\(name)です")

/* 配列 */
// 配列定義
var colors = ["red", "black", "white", "blue"]
// 要素の更新
colors[2] = "cyan"
// 要素の追加
colors.append("green")
// 配列の要素数
colors.count
// for each
for color in colors {
    print(color)
}

/* 辞書型 */
// 辞書型定義
var cars = ["wagon":100, "serena":200]
// 空辞書
var empty_list = Dictionary<String, Int>()
// ハッシュの要素にアクセスする場合は、keyを用いる
empty_list["wagon"] = cars["wagon"]
// 辞書の要素数
cars.count
// キー一覧
cars.keys
// 値一覧
cars.values
// 辞書型でもfor eachできる
for (car, count) in cars {
    print(car + ":" + String(count))
}
