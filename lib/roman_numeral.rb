class RomanNumeral
  def initialize numeral
    @numeral = numeral
    @romans = [
            ["IV", 4],
            ['XC', 90],
            ['CM', 900],
            ['CD', 400],
            ['XL', 40],
            ['IX', 9],
            ["I", 1],
            ["V", 5],
            ["X", 10],
            ["L", 50],
            ["C", 100],
            ["D", 500],
            ["M", 1000],
    ]
  end

  def to_i
    helper(0, @numeral)
  end

  def helper(current, left)
    for prefix, value in @romans
      match = left.match(/^#{prefix}(.*)$/)
      if match
        #cur
        return helper(current + value + match[1].to_i, match[1])
      end
    end
    return current
  end
end
