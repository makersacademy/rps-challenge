require 'game'

describe Game do
  subject(:normal_game) { described_class.new("normal", player, computer) }
  let(:player) { double("Player") }
  let(:computer) { double("Computer", :move => "paper") }

  it 'stores a player' do
    expect(normal_game.player).to eq(player)
  end

  context 'normal game' do
    context 'rock vs paper' do
      before { normal_game.move("rock") }
  
      it "stores a player's move" do
        expect(normal_game.player_move).to eq("rock")
      end
    
      it 'determines the winning move' do
        expect(normal_game.winning_move).to eq("paper")
      end
    end
  
    it 'can declare a draw' do
      normal_game.move("paper")
      expect(normal_game.winning_move).to eq("draw")
    end
  end

  context 'lizard spock game' do
    subject(:lizard_spock_game) { described_class.new("lizard_spock", player, computer) }
    let(:computer) { double("Computer", :move => "spock") }

    it 'determines the winning move' do
      lizard_spock_game.move("lizard")
      expect(lizard_spock_game.winning_move).to eq("lizard")
    end
  end
end
