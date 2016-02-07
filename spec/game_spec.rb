require 'game'

describe Game do
    let(:player_one){double(:player_one, choice: {"Rock" => 1}, name: 'Emma')}
    let(:player_two){double(:player_two, choice: {"Paper" => 2}, name: 'Computer')}
    let(:player_three){double(:player_three, choice: {"Rock" => 1}, name: 'Bob')}
    let(:player_four){double(:player_four, choice: {"Spock" => 4}, name: 'Bob')}
    subject(:game){described_class.new(player_one, player_two)}
    subject(:game_two){described_class.new(player_one, player_four)}

  describe 'initialize' do

    it 'initializes with two players' do
      expect(game.player_one).to eq(player_one)
    end

  end

  describe 'fight' do

    it 'returns a winner based on the rules of RPS' do
      game.fight
      expect(game.winner).to eq(player_two)
    end

    it 'returns a winner based on the extended rules of RPSSL' do
      game_two.fight
      expect(game_two.winner).to eq(player_four)
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
      expect(game.result). to eq "Paper beats Rock, #{game.winner.name} has won!"
    end

    context 'both players pick the same choice' do
      let(:player_three){double(:player_three, choice: {"Rock" => 1}, name: 'Bob')}
      subject(:game){described_class.new(player_one, player_three)}

      it 'returns a string confirming the draw' do
        game.fight
        expect(game.result).to eq("It's a draw, you both chose Rock")
      end

    end



  end


end
