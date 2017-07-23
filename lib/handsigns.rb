module Handsigns
  def signs
    [:rock, :paper, :scissors]
  end

  def winning_sign(sign1, sign2)
    # puts "sign1: #{sign1}, sign2: #{sign2}"
    return nil if sign1 == sign2
    i1 = signs.index(sign1)
    i2 = signs.index(sign2)
    return (i1 - i2).abs == 1 ? signs[[i1, i2].max] : signs[[i1, i2].min]
  end
end
