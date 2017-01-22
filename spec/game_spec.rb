require './lib/game'

describe Game do
  subject(:game) { described_class.new(options)}
  let(:options) {{"name"=> "Olwen","choice" => "rock", "option" => "rock"}}

  describe '#name' do
    it 'returns player name' do
      expect(game.name).to eq "Olwen"
    end
  end

  describe '#choice' do
      it 'returns player choice' do
        expect(game.choice).to eq "rock"
    end
  end
  describe '#option' do
    it 'returns opponent option' do
      expect(game.option).to eq "rock"
    end
  end

 describe '#player1' do
#when option and choice equal - both rock
  xit 'returns the result as a tie' do
   end
  end
  # let(:player2) { double('player2', :choice => "scissors", :option => "paper") }
  # let(:player3) { double('player3', :choice => "paper", :option =>"rock") }
  # let(:player4) { double('player4', :choice => "rock", :option =>"scissors") }

describe '#player2' do
#scissors beats paper -player 2 else lose
  xit 'returns scissors beats paper...{#} is the winner' do
   end
  end
describe '#player3' do
#paper beats rock - player 3 else lose
  xit 'returns paper beats rock.....{#} is the winner' do
   end
  end
describe '#player4' do
  #rock beats Scissors - player 1 else lose
  xit 'returns rock beats scissors... {#} is the winner' do
   end
  end
end
