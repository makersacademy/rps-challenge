require 'player'

describe Player do

  subject {described_class.new(name: 'James')}

  describe '#initialize' do
    it 'should create a player with given name' do
      expect(subject.name).to eq 'James'
    end
  end

  # def '#hand' do
  #   expect(subject).to receive(:rand).and_return(0.3)
  #
  # end

end
