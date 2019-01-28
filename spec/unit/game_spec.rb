RSpec.describe Game do
  subject(:game) { Game.new(player, computer) }
    let (:player) { double :player, choice: :scissors }
    let (:computer) { double :player, choice: :paper }

    it "lets player win  " do
      game.result
      expect(game.winner).to eq(@player)

    end
end

RSpec.describe Game do
  subject(:game) { Game.new(player, computer) }
    let (:player) { double :player, choice: :paper }
    let (:computer) { double :player, choice: :scissors }

    it "lets computer win  " do
      game.result
      expect(game.winner).to eq(@player)
    end
end
