require_relative '../roman_numeral_converter'
RSpec.describe RomanNumeralConverter do
  before do
    @converter = described_class.new
  end

  context "arabic to roman" do
    it "converts 1 to I" do
      expect(@converter.as_roman(1)).to eq("I")
    end
    it "converts 2 to II" do
      expect(@converter.as_roman(1)).to eq("I")
    end
    it "converts 4 to IV" do
      expect(@converter.as_roman(4)).to eq("IV")
    end
    it "converts 5 to V" do
      expect(@converter.as_roman(5)).to eq("V")
    end
    it "converts 6 to VI" do
      expect(@converter.as_roman(6)).to eq("VI")
    end
    it "converts 9 to IX" do
      expect(@converter.as_roman(9)).to eq("IX")
    end
    it "converts 10 to X" do
      expect(@converter.as_roman(10)).to eq("X")
    end
    it "converts 13 to XIII" do
      expect(@converter.as_roman(13)).to eq("XIII")
    end
    it "converts 14 to XIV" do
      expect(@converter.as_roman(14)).to eq("XIV")
    end
    it "converts 15 to XV" do
      expect(@converter.as_roman(15)).to eq("XV")
    end
    it "converts 20 to XX" do
      expect(@converter.as_roman(20)).to eq("XX")
    end
    it "converts 24 to XIV" do
      expect(@converter.as_roman(24)).to eq("XXIV")
    end
    it "converts 68 to LXVIII" do
      expect(@converter.as_roman(68)).to eq("LXVIII")
    end
    it "converts 99 to XCIX" do
      expect(@converter.as_roman(99)).to eq("XCIX")
    end
    it "converts 2013 to MMXIII" do
      expect(@converter.as_roman(2013)).to eq("MMXIII")
    end
  end
end
