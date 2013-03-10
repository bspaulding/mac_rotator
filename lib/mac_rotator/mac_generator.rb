class MACRotator::MACGenerator
  def self.generate
    new.generate
  end

  def generate
    %x[openssl rand -hex 6].strip.scan(/(..)/).join(":")
  end
end
