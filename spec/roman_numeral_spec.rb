require "spec"
require File.join(File.dirname(__FILE__), '..', 'lib', 'roman_numeral')

describe RomanNumeral do
  it "should convert I to 1" do
    numeral = RomanNumeral.new('I')
    
    numeral.to_i.should == 1
  end
end