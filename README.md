# Dummy Account Generator

## 作成理由
サービスの各環境でテスト時に複数アカウントを作成することがある。
ただし、メールアドレスは一意なデータなので、同じものを設定することはできない。
G-Maileのエイリアスメールアドレス作成で複数メールアドレスを作成することができるが、
ここで問題となったのが、どのメールアドレスがどの環境で使ったものなのかがわからなくなる。

メールアドレス一意に保ちつつ、どの環境（staging / develop)で使ったものなのかを把握できるようにしたい
と考え作成に至る。

どうせなら、パスワードと名前も一緒発行するようにした。

## 実行方法
```
ruby execute.rb 'エイリアス元となるメールアドレス' '環境名' アカウント数
```

### 例
```
ruby execute.rb 'test@example.com' 'staging' 5
```

### 生成されるデータ例
```
{:name=>"村山 逸樹", :email=>"test+0fd40b92-e51b-4269-828a-71db3abfc354@example.com", :password=>"5AUFhsA9cs", :type=>"staging"}
{:name=>"谷口 亮佑", :email=>"test+5e6e695c-2412-4aa0-a0c5-d44aacd90603@example.com", :password=>"eEjIXLHcx4", :type=>"staging"}
{:name=>"渋谷 絢羽", :email=>"test+2bc78ffe-4c63-4f8a-918a-f0bf715354d9@example.com", :password=>"6ocRmJzquW", :type=>"staging"}
{:name=>"菅 寿晴", :email=>"test+a35bb397-f906-4da1-aff9-c4518286311b@example.com", :password=>"zqvt0MNhAh", :type=>"staging"}
{:name=>"林 李耶", :email=>"test+8116ab43-fb12-4747-98af-990694f2d8b9@example.com", :password=>"ICCE5D8jMQ", :type=>"staging"}
```
