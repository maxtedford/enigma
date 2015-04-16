require './lib/decryptor'
require './lib/date'
require './lib/key'

# input_file = ARGV[0]
# output_file = ARGV[1]

class Decrypt
  attr_reader :key, :date, :decrypted_text

  def initialize
    @key = Key.new("#{ARGV[2]}")
    @date = Date.new("#{ARGV[3]}")
    @decrypted_text = File.read("./lib/#{ARGV[0]}").chomp
  end

  def write_to_file
    decryption = Decryptor.new(@decrypted_text, @key, @date)
    File.open("./lib/#{ARGV[1]}", "w") {|file| file.write(decryption.decrypt)}
    puts "Created #{ARGV[1]} with the key #{decryption.key.key} and date #{decryption.date.date}"
  end
end

war_message = Decrypt.new
war_message.write_to_file


# input_text = File.new(input_file)
# encrypted_message = Encryptor.new(input_text).encrypt
# output_file.write(encrypted_message)
