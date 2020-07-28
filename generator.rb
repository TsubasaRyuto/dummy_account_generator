require 'bundler/setup'
require 'securerandom'
require 'gimei'

class Generator
  def initialize(email, type)
    @email = email
    @type = type
  end

  def do!
    name = Gimei.kanji
    new_email = genarate_email
    password = genarate_password

    { name: name, email: new_email, password: password, type: type }
  end

  private

  attr_accessor :email, :type

  def genarate_email
    splited_email = email.split('@')
    "#{splited_email[0]}+#{uuid}@#{splited_email[1]}"
  end

  def genarate_password
    SecureRandom.alphanumeric(10)
  end

  def uuid
    SecureRandom.uuid
  end
end
