require 'game'

describe Game do

  subject(:game) {described_class.new(player, computer)}
  let (:player) {double :player}
  let (:computer) {double :computer}

end
