require 'game'

describe Game do
    let(:player_one){double(:player_one, weapon: "Rock", weapon_value: 1, name: 'Emma')}
    let(:player_two){double(:player_two, weapon: "Paper", weapon_value: 2, name: 'Computer')}
    let(:player_three){double(:player_three, weapon: "Scissors", weapon_value: 3, name: 'Bob')}
    let(:player_four){double(:player_four, weapon: "Spock", weapon_value: 4, name: 'Bob')}
    let(:player_five){double(:player_five, weapon: "Lizard", weapon_value: 5, name: 'Bob')}

  describe 'initialize' do
    subject(:game){described_class.new(player_one, player_two)}

    it 'initializes with two players' do
      expect(game.player_one).to eq(player_one)
    end

  end

  describe '#fight' do
    subject(:game_one){described_class.new(player_one, player_three)}
    subject(:game_two){described_class.new(player_one, player_five)}
    subject(:game_three){described_class.new(player_two, player_one)}
    subject(:game_four){described_class.new(player_two, player_four)}
    subject(:game_five){described_class.new(player_three, player_two)}
    subject(:game_six){described_class.new(player_three, player_five)}
    subject(:game_seven){described_class.new(player_five, player_four)}
    subject(:game_eight){described_class.new(player_five, player_two)}
    subject(:game_nine){described_class.new(player_four, player_three)}
    subject(:game_ten){described_class.new(player_four, player_one)}

    it 'Rock beats Scissors' do
      game_one.fight
      expect(game_one.winner).to eq(player_one)
    end

    it 'Rock beats Lizard' do
      game_two.fight
      expect(game_two.winner).to eq(player_one)
    end

    it 'Paper beats Rock' do
      game_three.fight
      expect(game_three.winner).to eq(player_two)
    end

    it 'Paper beats Spock' do
      game_four.fight
      expect(game_four.winner).to eq(player_two)
    end

    it 'Scissors beats Paper' do
      game_five.fight
      expect(game_five.winner).to eq(player_three)
    end

    it 'Scissors beats Lizard' do
      game_six.fight
      expect(game_six.winner).to eq(player_three)
    end

    it 'Lizard beats Spock' do
      game_seven.fight
      expect(game_seven.winner).to eq(player_five)
    end

    it 'Lizard beats Paper' do
      game_eight.fight
      expect(game_eight.winner).to eq(player_five)
    end

    it 'Spock beats Scissors' do
      game_nine.fight
      expect(game_nine.winner).to eq(player_four)
    end

    it 'Spock beats Rock' do
      game_ten.fight
      expect(game_ten.winner).to eq(player_four)
    end

    context 'both players pick the same choice' do
      subject(:game){described_class.new(player_one, player_one)}

      it 'confirms a draw' do
        game.fight
        expect(game).to be_draw
      end

    end

  end

  describe 'result' do
    subject(:game){described_class.new(player_one, player_three)}

    it 'returns a symbol confirming the winner' do
      game.fight
      expect(game.result). to eq :win
    end

    context 'both players pick the same choice' do
      subject(:game){described_class.new(player_one, player_one)}

      it 'returns a symbol confirming the draw' do
        game.fight
        expect(game.result).to eq :draw
      end

    end



  end


end
