require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer_paper) }
  let(:player) { 'Joe' }
  let(:computer_paper) { double(:computer, weapon: :paper)}

  it "scissors beats paper" do
    game.player.set_weapon(:scissors)
    game.play
    expect(game.result).to eq :win
  end

  it "draws if player and computer make same choice" do
    game.player.set_weapon(:paper)
    game.play
    expect(game.result).to eq :draw
  end

  it "paper beats rock" do
    game.player.set_weapon(:rock)
    game.play
    expect(game.result).to eq :lose
  end

end
