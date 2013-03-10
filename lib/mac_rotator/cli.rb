class MACRotator::CLI
  def self.run
    new.run
  end

  def run
    while true
      puts "Current MAC Address: #{rotator.current_address}\nPress any key to rotate the address. Use CTRL-C when you're done, and I'll reset it to your original mac address."
      gets
      rotator.rotate
    end
  rescue Exception
    rotator.reset
    raise
  end

  private

  def rotator
    @rotator ||= MACRotator::Rotator.new
  end
end

