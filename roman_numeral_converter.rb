class RomanNumeralConverter
  ROMAN_DIGITS = [
    ["M", 1000],
    ["D", 500],
    ["C", 100],
    ["XC", 90],
    ["L", 50],
    ["XL", 40],
    ["X", 10],
    ["IX", 9],
    ["V", 5],
    ["IV", 4],
    ["I", 1]
  ]
  def as_roman(number)
    result = ""
    ROMAN_DIGITS.each do |glyph, limit|
      while number >= limit
        result << glyph
        number -= limit
      end
    end
    result
  end
end
