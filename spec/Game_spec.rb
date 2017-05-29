require 'Game'

describe Game do
  subject(:game) {described_class.new("Rock")}


  describe '#random_selection' do
    it "should be able to select an object at random" do
      srand(123)
      # computerplayer.stub(:object) { 'Computer is Rock' }
      # computerplayer = described_class.new
      # double(random_selection: :scissors)
      allow(Game::WEAPONS).to receive(:sample) {:Scissors}
      expect(game.random_selection).to eq :Scissors
      # expect(random_selection.object).to satisfy { |object| object == "Rock" || object == "Paper" || object == "Scissors"}
    end
  end

  describe '#winner' do
    it 'should return winner if player does beat computer' do
      # game = double('game')
      # allow(game).to receive(:random_selection) {"Paper"}
      allow(Game::WEAPONS).to receive(:sample) {:Scissors}
      game.random_selection
      p game.match
      expect(game.winner).to eq :winner
    end

  it 'should return draw if player has the same as the computer' do
    # game = double('game')
    # allow(game).to receive(:random_selection) {"Paper"}
    allow(Game::WEAPONS).to receive(:sample) {:Rock}
    game.random_selection
    p game.match
    expect(game.winner).to eq :draw
  end

  it 'should return loser if player does not beat computer' do
    # game = double('game')
    # allow(game).to receive(:random_selection) {"Paper"}
    allow(Game::WEAPONS).to receive(:sample) {:Paper}
    game.random_selection
    p game.match
    expect(game.winner).to eq :loser
  end
end
end
