require './lib/player.rb'

describe 'Player' do
  subject(:user) {Player.new('Dave')}
  subject(:opponent) {Player.new('Fern')}
  # subject(:rock) { Player.new('rock') }
  # let(:paper) { double :paper }

  it "returns a name" do
    expect(user.name).to eq 'Dave'
  end

  it "returns user choice" do
    expect(user.choice).to eq "rock"
  end

  # it "returns opponent's choice" do
  #   expect(opponent).to receive(:random_choice)
  #   user.result(opponent)
  # end

  # it "returns a winner" do
  #   user.choice
  #   expect(user.result).to eq "rock!"
  # end
end