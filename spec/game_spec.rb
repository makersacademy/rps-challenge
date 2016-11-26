require 'game'

describe Game do

  subject(:game) {described_class.new(player_1,player_2)}
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}


  describe '#initialization' do

    it 'should be initialized with 2 players' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end

    it 'should default to having computer as defualt' do

    end

  end

  context 'player1 choice is rock' do

    before do
      allow(player_1).to receive(:choice_index).and_return 0
    end

    it 'should win if rock vs scissors' do

      allow(player_2).to receive(:choice_index).and_return 2
      expect(game.result).to eq "win"
    end

    it 'should lose if rock vs paper' do
      allow(player_2).to receive(:choice_index).and_return 1
      expect(game.result).to eq "lose"
    end

    it 'should draw if rock vs rock' do

      allow(player_2).to receive(:choice_index).and_return 0
      expect(game.result).to eq "draw"
    end

  end

  context 'player choice is paper' do

    before do
      allow(player_1).to receive(:choice_index).and_return 1
    end

    it 'should win if paper vs rock' do
      allow(player_2).to receive(:choice_index).and_return 0
      expect(game.result).to eq "win"
    end

    it 'should lose if paper vs scissors' do
      allow(player_2).to receive(:choice_index).and_return 2
      expect(game.result).to eq "lose"
    end

    it 'should draw if paper vs paper' do
      allow(player_2).to receive(:choice_index).and_return 1
      expect(game.result).to eq "draw"
    end

  end

  context 'player choice is scissors' do

    before do
      allow(player_1).to receive(:choice_index).and_return 2
    end

    it 'should win if scissors vs paper' do
      allow(player_2).to receive(:choice_index).and_return 1
      expect(game.result).to eq "win"
    end

    it 'should lose if scissors vs rock' do
      allow(player_2).to receive(:choice_index).and_return 0
      expect(game.result).to eq "lose"
    end

    it 'should draw if scissors vs scissors' do
      allow(player_2).to receive(:choice_index).and_return 2
      expect(game.result).to eq "draw"
    end

  end

end
