require 'game'

describe Game do
  let (:computer_choice) { double 'computer'}
  let (:game) { Game.new.result(:rock, computer_choice.play_computer) }

  it "displays computer as the winner" do
    allow(computer_choice).to receive(:play_computer) { :paper }
    expect(game).to eq (:lose)
  end

  it "displays player as the winner" do
    allow(computer_choice).to receive(:play_computer) { :scissors }
    expect(game).to eq (:win)
  end

  it "displays result as a draw" do
    allow(computer_choice).to receive(:play_computer) { :rock }
    expect(game).to eq (:draw)
  end
end