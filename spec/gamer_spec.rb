require 'gamer'

describe Gamer do

  subject(:bored_person) {Gamer.new('Marketer')}

  # before do
  #   allow(subject).to receive(:option).and_return :rock
  # end

  context '#player_name' do
    it 'returns player name' do
      expect(bored_person.name).to eq('Marketer')
    end
  end

  context '#option' do
    it 'returns chosen option' do
      expect(bored_person.option(:rock)).to eq :rock
    end
  end

end
