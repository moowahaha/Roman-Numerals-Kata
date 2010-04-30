require "spec"
require File.join(File.dirname(__FILE__), '..', 'lib', 'roman_numeral')

describe RomanNumeral do
  it "should convert I to 1" do
    numeral = RomanNumeral.new('I')

    numeral.to_i.should == 1
  end

  it "should convert II to 2" do
    numeral = RomanNumeral.new('II')
    numeral.to_i.should == 2
  end

  it "should convert III to 3" do
    numeral = RomanNumeral.new('III')
    numeral.to_i.should == 3
  end

  it "should convert IV to 4" do
    numeral = RomanNumeral.new('IV')
    numeral.to_i.should == 4
  end

  it "should convert MMX to 2010" do
    numeral = RomanNumeral.new('MMX')
    numeral.to_i.should == 2010
  end

  it "should convert MCMXCVIII to 1998" do
    numeral = RomanNumeral.new('MCMXCVIII')
    numeral.to_i.should == 1998
  end

  it "should convert MCMXCIX to 1999" do
    numeral = RomanNumeral.new('MCMXCIX')
    numeral.to_i.should == 1999
  end

  it "should convert MCDXLIX to 1449" do
    numeral = RomanNumeral.new('MCDXLIX')
    numeral.to_i.should == 1449
  end

  it "should convert MDCLVI to 1656" do
    numeral = RomanNumeral.new('MDCLVI')
    numeral.to_i.should == 1656
  end
end