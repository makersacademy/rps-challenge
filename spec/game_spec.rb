require 'game'

describe Game do

  let(:rock) { double('ROCK') }
  let(:paper) { double('PAPER') }
  let(:james) { double('James') }
  let(:game) { Game.new(james, rock, paper) }

  it 'initializes with player_choice and computer_choice' do
    expect(game).to have_attributes(:player_name => james, :player_choice => rock, :computer_choice => paper)
  end

  it 'returns a draw' do
    game2 = Game.new(james, rock, rock)
    expect(game2.determine_result).to eq "Draw!"
  end

  it 'returns a player win' do
    game2 = Game.new(james, 'ROCK', 'SCISSORS')
    expect(game2.determine_result).to eq "#{james} Wins!"
  end


  it 'returns a computer win' do
    game2 = Game.new(james, 'ROCK', 'PAPER')
    expect(game2.determine_result).to eq "Computer Wins!"
  end

end