require 'enemies'

describe Enemies do

  let(:subject) { described_class.new(:stone, :paper)}

  describe '#initialize' do
    it 'has a pair weapon-nemesis' do
      expect(subject.pair).to eq({ :stone => :paper })
    end
  end
end
