require_relative 'generator'
require_relative 'write_account'

email = ARGV[0]
type = ARGV[1] # 環境type
number = ARGV[2].to_i # 作成するアカウント数

return if number <= 0
accounts = []

number.times do |i|
  account = Generator.new(email, type).do!
  accounts << account
end

WriteAccount.new(accounts).do!
