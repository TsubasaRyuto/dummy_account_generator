require 'fileutils'

class WriteAccount
  def initialize(data)
    @data = data
  end

  def do!
    return if data.empty?
    FileUtils.touch('accounts.txt') unless File.exist?('accounts.txt')

    File.open('accounts.txt', mode = 'a') do |f|
      f.puts("========== #{Time.now} ==========")
      data.each do |d|
        f.puts("名前: #{ d[:name] }, メールアドレス: #{ d[:email] }, パスワード: #{ d[:password] }, 環境: #{ d[:type] }")
      end
      f.puts('')
    end
  end

  private

  attr_accessor :data
end
