require 'game'

describe Game do
  let(:abdur)        { double("Player", name: 'abdur', weapon: "Rock") }
  let(:computer)     { double("Player", name: 'computer', weapon: "Paper") }

  let(:subject)      { described_class.new(abdur, computer)}
  
  it { expect(Game).to respond_to(:new).with(2).arguments }
  
  it 'stores the player objects' do
    expect(subject.players).to include(abdur)
    expect(subject.players).to include(computer)
  end

  describe '#winner' do
    it 'descides the winner' do
      expect(subject.winner).to eq('computer wins!')
    end

  end
end