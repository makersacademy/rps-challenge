require 'player'

describe Player do
  subject(:player) { described_class.new("Courtney") }
  let(:rps) { double :rps}

    context ".player_name" do

      it 'test that player name is returned when called ' do
        expect(player.player_name).to eq "Courtney"
      end
    end 

    context "players choice is returned" do

      it 'test users choice of rock ' do
        player.choice("Rock")
        expect(player.users_choice).to eq "Rock"
      end

      it 'test users choice of scissors' do
        player.choice("Scissors")
        expect(player.users_choice).to eq "Scissors"
      end

      it 'test users choice of paper' do
        player.choice("Paper")
        expect(player.users_choice).to eq "Paper"
      end
    end

end
