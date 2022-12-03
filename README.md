# robosys202
* ロボットシステム学の練習リポジトリ 
* install
```
$ git clone https://github.com/shokonosu/robosys202
$ cd robosys202
```
# plusコマンド
![test](https://github.com/ryuichiueda/robosys2022/actions/workflows/test.yml/badge.svg)
標準入力から読み込んだ数字を足す。
* [plus](https://github.com/shokonosu/robosys202/blob/main/plus)
* 使い方はseq 5 | ./plusとコマンドを打つ。
```
$ seq 5 | ./plus
15
```
# calculateコマンド
![Newtest](https://github.com/shokonosu/robosys202/actions/workflows/Newtest.yml/badge.svg)
* 優先順位による計算プログラムと6の階乗を求める
* [calculate](https://github.com/shokonosu/robosys202/blob/main/calculate)
* 使い方はchmod +x calculateを入力したうえで、./calculateとコマンドを打つ
```
$ ./calculate
56 1.0 720  #計算結果
```
## 必要なソフトウェア
* os
  * Ubuntu(Ubuntu18.04)

* Python
  * テスト済み:3.7～3.10

## 動作確認済みのテスト環境
* Ubuntu(Ubuntu18.04)

## LICENSE
* このソフトウェアパッケージは、3条項BSDライセンスのもと、再配布及び使用が許可されています。
* ©2022 Sho Konosu
