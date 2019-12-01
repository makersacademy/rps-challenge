require 'score'

RSpec.describe Score do
  let(:score) { Score.new }
  it 'can give scores to two players' do
    score.one_to_player
    score.one_to_player
    score.one_to_opponent

    expect(score.player_one).to be 2
    expect(score.player_two).to be 1
  end

  it 'can give points to both players in a draw' do
    score.points_for_both
    score.points_for_both
    score.points_for_both
    
    expect(score.player_one).to be 3
    expect(score.player_two).to be 3
  end
end
