class MACRotator::MACManager
  def set(new_mac)
    %x[sudo ifconfig en0 lladdr #{new_mac}]
    unless get == new_mac
      raise MACSetFailed.new("Tried to change MAC from #{get} to #{new_mac}, but it didn't change.")
    end
  end

  def get
    %x[sudo ifconfig en0 lladdr].split("\n").last.strip.split(' ').last
  end

  class MACSetFailed < StandardError; end
end
