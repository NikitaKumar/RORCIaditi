class SomeClass
  attr_reader :label
  attr_accessor :some_attr

  def initialize(label)
    @label = label
  end

  delegate :reverse, :to => :label

  def compare_with(item)
    if item == label
      return true
    else
      raise "Item does not match label"
    end
  rescue
    false
  end

private

  def uncovered
    "private method"
  end
end
