require 'game'

describe Game do 

  let(:player_rock) {double :player_rock }
  let(:player_paper) { double :player_paper }

  # let (:playerClass){double :Player, new: player }
  subject { Game.new(player_rock, player_paper) }
  

  it 'returns result after game is played' do
    allow(player_rock).to receive(:choice) { :rock }
    allow(player_paper).to receive(:choice) { :paper }
    expect(subject.result).to eq("Computer Wins")
  end

end