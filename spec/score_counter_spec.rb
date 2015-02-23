require 'score_counter'


describe ScoreCounter do

  let(:game) { double :game }

  it 'should add 1 to the palyer count when the player wins' do
    score = ScoreCounter.new
    allow(game).to receive(:last_winner).and_return("player")
    expect {score.change_score}.to change{score.player_count}.by(1)

  end

  it 'should add 1 to the computer when the computer wins' do
  end

  it 'should add 1 to the draw count for a draw' do
  end



end