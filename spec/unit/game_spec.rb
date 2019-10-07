require 'game'


describe Game do
    subject(:game) { Game.new(player, computer) }
    let (:player) { double :player, choice: :rock }
    let (:computer) { double :player, choice: :scissors }

    it "Player wins" do
      game.result
      expect(game.winner).to eq player
    end
  end

describe Game do
  subject(:game) { Game.new(player, computer) }
  let (:player) { double :player, choice: :paper }
  let (:computer) { double :player, choice: :scissors }

  it "computer wins" do
  game.result
  expect(game.winner).to eq @computer
end
end
