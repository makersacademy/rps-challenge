require 'play'

describe Play do

  subject(:play) { Play.new(player, computer) }
  let(:computer) { double :computer }
  let(:player) { double :player }

  describe '#compare' do
    describe 'when the choices are different' do
      it 'rock beats scissors' do 
        allow(play).to receive(:player).and_return(player)
        allow(player).to receive(:player_choice).and_return('rock')
        allow(play).to receive(:computer).and_return(computer)
        allow(computer).to receive(:computer_choice).and_return('scissors')
        expect(play.compare).to eq "Computer choice is: scissors, you win! :)"
      end

      it 'rock beats paper' do 
        allow(play).to receive(:player).and_return(player)
        allow(player).to receive(:player_choice).and_return('rock')
        allow(play).to receive(:computer).and_return(computer)
        allow(computer).to receive(:computer_choice).and_return('paper')
        expect(play.compare).to eq "Computer choice is: paper, computer wins :("
      end

      it 'scissors beats rock' do 
        allow(play).to receive(:player).and_return(player)
        allow(player).to receive(:player_choice).and_return('scissors')
        allow(play).to receive(:computer).and_return(computer)
        allow(computer).to receive(:computer_choice).and_return('rock')
        expect(play.compare).to eq "Computer choice is: rock, computer wins :("
      end
    end

    describe 'when the choices are the same' do
      it 'draw' do
        allow(play).to receive(:player).and_return(player)
        allow(player).to receive(:player_choice).and_return('rock')
        allow(play).to receive(:computer).and_return(computer)
        allow(computer).to receive(:computer_choice).and_return('rock')
        expect(play.compare).to eq "It's a tie!"
      end
    end
  end

end
