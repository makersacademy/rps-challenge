require './lib/game'

describe Game do
  subject(:game) { Game.new(player,choice) }
  let(:player) { double('player', :option => "rock") }
  let(:choice) { double('choice', :choice => "rock") }
  # let(:player2) { double('player2', :choice => "scissors", :option => "paper") }
  # let(:player3) { double('player3', :choice => "paper", :option =>"rock") }
  # let(:player4) { double('player4', :choice => "rock", :option =>"scissors") }

#DO TEST FOR BASIC OUTPUT FROM GAME.OPTION
describe '#player1' do
  xit 'starts with a stored player choice' do
    expect(game.choice).to eq("rock")
  end
  xit 'generates an option' do
    game = Game.new(player1,choice)
    expect(game.option).to eq("rock")
  end
#when auto_option and choice equal
  xit 'returns the result as a tie' do
  end
end
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
