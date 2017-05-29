require 'Game'

describe Game do
  subject(:game) {described_class.new("Rock")}


  describe '#random_selection' do
    it "should be able to select an object at random" do
      srand(123)
      # computerplayer.stub(:object) { 'Computer is Rock' }
      # computerplayer = described_class.new
      # double(random_selection: :scissors)
      allow(Game::WEAPONS).to receive(:sample) {"Scissor"}
      expect(game.random_selection).to eq "Scissors"
      # expect(random_selection.object).to satisfy { |object| object == "Rock" || object == "Paper" || object == "Scissors"}
    end
  end

  describe '#beats?(other)' do
    it 'should return true if player beats computer' do
      game = double('game')
      allow(game).to receive(:random_selection) {"Paper"}
      expect(game.beats?(:scissors)).to eq true
    end
  end
end
