require 'game'

describe Game do

  it "human should win with paper v rock" do
    # Game.any_instance.stub(:random_choice).and_return('r')
    new_game = Game.new('paper', 'rock')
    expect(new_game.decider).to eq("YOU HAVE WON!")
  end

  # let(:game) { Game.new() }

  # subject(:pc) {Computer.new("r")} #stub
  #
  # describe 'game class' do
  #   it 'it returns an instance of the computer class with rock(r) choice' do
  #     expect(pc.computer_move).to eq("r")
  #   end
  # end

end
