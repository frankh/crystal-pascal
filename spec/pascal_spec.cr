require "./spec_helper"

describe Pascal do
  it "next_row" do
    Pascal.next_row([1]).should eq([1, 1])
    Pascal.next_row([1, 1]).should eq([1, 2, 1])
    Pascal.next_row([1, 2, 1]).should eq([1, 3, 3, 1])
  end

  it "pascal" do
    Pascal.pascal(0).should eq([] of Array(Int32))
    Pascal.pascal(1).should eq([[1]])
    Pascal.pascal(2).should eq([[1], [1, 1]])
    Pascal.pascal(3).should eq([[1], [1, 1], [1, 2, 1]])
    Pascal.pascal(4).should eq([[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]])
  end

  it "pascal large" do
    Pascal.pascal(1000)
  end
end
