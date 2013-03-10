class MACRotator::Rotator
  def initialize
    macs << manager.get
    @original_mac = macs.last
  end

  def rotate
    macs << generator.generate
    manager.set macs.last
  end

  def reset
    manager.set @original_mac
  end

  def current_address
    macs.last
  end

  private

  def generator
    @mac_generator ||= MACRotator::MACGenerator.new
  end

  def manager
    @mac_manager ||= MACRotator::MACManager.new
  end

  def macs
    @macs ||= []
  end
end
