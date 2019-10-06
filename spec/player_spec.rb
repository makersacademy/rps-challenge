require 'player'

describe Player do

  subject(:pamela){ described_class.new("pamela")}

  it 'returns the player name' do
    expect(pamela.name).to eq "pamela"
  end

  # it 'plays the move that the player selects' do
  #   allow(pamela).to receive(:move).and_return("Paper")
  #   expect(pamela.move).to eq "Paper"
  # end

end