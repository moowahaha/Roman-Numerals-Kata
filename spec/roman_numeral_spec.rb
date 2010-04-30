require "spec"
require File.join(File.dirname(__FILE__), '..', 'lib', 'roman_numeral')

describe RomanNumeral do
  it "should convert X to 10" do
    numeral = RomanNumeral.new('X')
    
    numeral.to_i.should == 10
  end
end