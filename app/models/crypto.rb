class Crypto

  attr_accessor :value

  def encode(value)
    @value = value
    @value.reverse
  end
  alias_method :decode, :encode

end
