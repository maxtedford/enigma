require_relative 'decryptor'

class Cracker
attr_reader :hard_key

  def initialize(encrypted_message=File.read("./lib/#{ARGV[0]}").chomp, date=Date.new("#{ARGV[2]}"))
    @encrypted_message = encrypted_message
    @date = date
    @cracked = false
    @hard_key = 0
  end

  def crack
    until @cracked
      hard_key = @hard_key.to_s.rjust(5, "0")
      @key = Key.new(hard_key)
      @secret_war_message = Decryptor.new(@encrypted_message, @key, @date).decrypt
      @cracked = true if @secret_war_message[-7..-1] == "..end.."
      @hard_key += 1
    end
    @secret_war_message
  end

  def write_to_file
    cracked = Cracker.new(@encrypted_message, @date)
    File.open("./lib/#{ARGV[1]}", "w") {|file| file.write(cracked.crack)}
    puts "Created #{ARGV[1]} with the key #{@hard_key} and the date #{ARGV[2]}"
  end
end

cracker = Cracker.new
cracker.crack
cracker.write_to_file

# cracker = Cracker.new("7 t..543wd8x,c35ecz.,vpvf4zcw2z83uzcwyr0zc9vxvv 2vp", Date.new("150415"))
# return cracker.crack
