class Crypto

  attr_accessor :value

  def encode(value)
    @value = value
    @value.reverse
  end
  alias_method :decode, :encode

  def to_json(options = {})
    { origin: @value, encoding: @value.reverse }
  end

end
