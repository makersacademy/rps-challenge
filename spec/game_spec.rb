require './lib/game'
describe Game do
    let(:player) { double :player, wins: true }
    let(:playerClass) { double :Player, new: player }
    let(:ai) { double :ai, choose: :Paper, wins: true }


  it 'does not have winner on init' do
    aiClass = double :aiClass, new: ai
    game = Game.new(playerClass,aiClass)
    expect(game.has_winner?).to eq false
  end

  it 'can be won' do
    aiClass = double :aiClass, new: ai
    game = Game.new(playerClass,aiClass)
    game.play(:Rock)
    expect(game.has_winner?).to eq true
  end

  it 'can be a tie' do
    aiClass = double :aiClass, new: ai
    game = Game.new(playerClass,aiClass)
    game.play(:Paper)
    expect(game.has_winner?).to eq 'Tie'
  end

end
