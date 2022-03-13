require 'rock_paper_scissors'

describe RPS do
  
  subject(:game) { RPS.new }
  let(:mocked_game) { RPS.new(chris, coding) }
  let(:chris) { double(:chris, name: "Chris", move: 'Paper') }
  let(:coding) { double(:coding, name: "Coding", move: 'Rock') }
  
  it 'should initialise with a choice winner of nil' do
    expect(game.winner_or_draw).to be_nil
  end

  it 'should be able to calculate the winner of the game' do
    expect { mocked_game.check_winner_or_draw }.to change { mocked_game.winner_or_draw }.from(nil).to("#{chris.name} wins!")
  end


end
