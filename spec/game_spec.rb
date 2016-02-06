require 'game'

describe Game do
    let(:player_one){double(:player_one, choice: {"Rock" => 1}, name: 'Emma')}
    let(:player_two){double(:player_two, choice: {"Paper" => 2}, name: 'Computer')}
    subject(:game){described_class.new(player_one, player_two)}

  describe 'initialize' do

    it 'initializes with two players' do
      expect(game.player_one).to eq(player_one)
    end

  end

  describe 'fight' do

    it 'returns a winner based on the rules of RPS' do
      game.fight
      expect(game.winner).to eq(player_one)
    end

    context 'both players pick the same choice' do
      let(:player_three){double(:player_three, choice: {"Rock" => 1}, name: 'Bob')}
      subject(:game){described_class.new(player_one, player_three)}

      it 'confirms a draw' do
        game.fight
        expect(game).to be_draw
      end


    end

  end

  describe 'result' do

    it 'returns a string confirming the winner' do
      game.fight
      expect(game.result). to eq "Rock beats Paper!, #{game.winner.name} has won!"
    end

    context 'both players pick the same choice' do
      let(:player_three){double(:player_three, choice: {"Rock" => 1}, name: 'Bob')}
      subject(:game){described_class.new(player_one, player_three)}

      it 'returns a string confirming the draw' do
        game.fight
        expect(game.result).to eq("It's a draw!")
      end

    end



  end


end
