require 'rock_paper_scissors'

describe RPS do
  
  subject(:game) { RPS.new }
  let(:mocked_game) { RPS.new(chris, coding) }
  let(:chris_loses) { RPS.new(chris, scissors) }
  let(:draw) { RPS.new(chris, paper) }
  let(:chris) { double(:chris, name: "Chris", move: 'Paper') }
  let(:coding) { double(:coding, name: "Coding", move: 'Rock') }
  let(:paper) { double(:coding, name: "Coding", move: 'Paper') }
  let(:scissors) { double(:coding, name: "Coding", move: 'Scissors') }
  
  it 'should initialise with a choice winner of nil' do
    expect(game.winner_or_draw).to be_nil
  end

  it 'should be able to calculate the winner of the game' do
    expect { mocked_game.check_winner_or_draw }.to change { mocked_game.winner_or_draw }.from(nil).to(:player1)
    expect { draw.check_winner_or_draw }.to change { draw.winner_or_draw }.from(nil).to(:draw)
    expect { chris_loses.check_winner_or_draw }.to change { chris_loses.winner_or_draw }.from(nil).to(:player2)
  end

end
