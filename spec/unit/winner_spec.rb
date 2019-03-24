require 'winner'

describe Winner do
  subject(:winner) {described_class}
  let(:p1) {double :player1, :name => 'p1', :user_choice => 'Rock'}
  let(:p2) {double :player2, :name => 'p2', :user_choice => 'Paper'}

  it '#declare_winner' do
    expect(winner.run(p1,p2)).to eq 'p2'
  end
end