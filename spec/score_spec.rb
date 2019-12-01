require 'score'

RSpec.describe Score do
  let(:score) { Score.new }
  it 'can give scores to two players' do
    score.one_to_player
    score.one_to_player
    score.one_to_opponent

    expect(score.player).to be 2
    expect(score.opponent).to be 1
  end

  it 'can give points to both players in a draw' do
    score.points_for_both
    score.points_for_both
    score.points_for_both
    
    expect(score.player).to be 3
    expect(score.opponent).to be 3
  end

  it 'can reset the scores to 0' do
    score.one_to_player
    score.one_to_opponent
    score.points_for_both
    score.reset

    expect(score.player).to be 0
    expect(score.opponent).to be 0
  end
end
