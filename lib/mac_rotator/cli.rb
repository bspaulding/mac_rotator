class MACRotator::CLI
  def self.run
    new.run
  end

  def run
    while true
      puts "Current MAC Address: #{rotator.current_address}\nPress any key to rotate the address."
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

