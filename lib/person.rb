class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send((key.to_s + '='), value)
    end
  end
end
