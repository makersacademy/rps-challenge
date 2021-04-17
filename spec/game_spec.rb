require 'game'

describe Game do
  let(:abdur)        { double("Player", name: 'abdur') }
  let(:computer)     { double("Player", name: 'computer') }

  let(:subject)      { described_class.new(abdur, computer)}
  
  it { expect(Game).to respond_to(:new).with(2).arguments }
  
  it 'stores the player objects' do
    expect(subject.players).to include(abdur)
    expect(subject.players).to include(computer)
  end
end