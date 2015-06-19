require 'test_helper'

describe SolidStruct do
  it "allows named initialisation arguments" do
    Klass1 = SolidStruct.new(:param1, :param2)
    instance = Klass1.new(param1: "one", param2: "two")
    instance.param1.must_equal "one"
    instance.param2.must_equal "two"
  end

  it "allows positional initialisation arguments" do
    Klass2 = SolidStruct.new(:param1, :param2)
    instance = Klass2.new("one", "two")
    instance.param1.must_equal "one"
    instance.param2.must_equal "two"
  end

  it "allows named arguments in a different order" do
    Klass3 = SolidStruct.new(:param1, :param2)
    instance = Klass3.new(param2: "two", param1: "one")
    instance.param1.must_equal "one"
    instance.param2.must_equal "two"
  end

  it "builds an instance using a hash" do
    instance = SolidStruct.build(param1: "one", param2: "two")
    instance.param1.must_equal "one"
    instance.param2.must_equal "two"
  end

  it "throws an exception if building using a non-hash" do
    assert_raises ArgumentError do
      SolidStruct.build(["I'm an array, fool!"])
    end
  end
end
