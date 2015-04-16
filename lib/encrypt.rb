require './lib/encryptor'
require './lib/date'
require './lib/key'

class Encrypt
attr_reader :key, :date, :message

  def initialize
    @key = Key.new
    @date = Date.new
    @message = File.read("./lib/#{ARGV[0]}").chomp
  end

  def write_to_file
    encryption = Encryptor.new(@message, @key, @date)
    File.open("./lib/#{ARGV[1]}", "w") {|file| file.write(encryption.encrypt)}
    puts "Created #{ARGV[1]} with the key #{encryption.key.key} and date #{encryption.date.date}"
  end
end

war_message = Encrypt.new
war_message.write_to_file

