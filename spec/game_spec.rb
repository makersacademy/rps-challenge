require 'game'

describe Game do

  subject(:game) {described_class.new(choice)}
  let(:choice) {double :choice}


  it 'should be initialized with the players choice' do
    expect(game.choice).to eq choice
  end

  context 'player choice is rock' do

    game = Game.new("rock")

    it 'should win if rock vs scissors' do

      allow(game).to receive(:random_choice).and_return 2
      expect(game.result).to eq "win"
    end

    it 'should lose if rock vs paper' do
      allow(game).to receive(:random_choice).and_return 1
      expect(game.result).to eq "lose"
    end

    it 'should draw if rock vs rock' do

      allow(game).to receive(:random_choice).and_return 0
      expect(game.result).to eq "draw"
    end

  end

  context 'player choice is paper' do

    game = Game.new("paper")

    it 'should win if paper vs rock' do
      allow(game).to receive(:random_choice).and_return 0
      expect(game.result).to eq "win"
    end

    it 'should lose if paper vs scissors' do
      allow(game).to receive(:random_choice).and_return 2
      expect(game.result).to eq "lose"
    end

    it 'should draw if paper vs paper' do
      allow(game).to receive(:random_choice).and_return 1
      expect(game.result).to eq "draw"
    end

  end

  context 'player choice is scissors' do

    game = Game.new("scissors")

    it 'should win if scissors vs paper' do
      allow(game).to receive(:random_choice).and_return 1
      expect(game.result).to eq "win"
    end

    it 'should lose if scissors vs rock' do
      allow(game).to receive(:random_choice).and_return 0
      expect(game.result).to eq "lose"
    end

    it 'should draw if scissors vs scissors' do
      allow(game).to receive(:random_choice).and_return 2
      expect(game.result).to eq "draw"
    end

  end

end
