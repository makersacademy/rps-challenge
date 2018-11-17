require 'rps'

describe RPS do

  subject(:subject) {described_class.new(:rock)}

  describe '#choice'do
    it { expect(subject).to respond_to :choice }
  end

  describe '#random'do
    it { expect(subject).to respond_to :random }
  end

  describe '#game'do
    it { expect(subject).to respond_to :game }
  end

  describe '#play'do
    it { expect(subject).to respond_to :play }
  end

  describe '#message'do
    it { expect(subject).to respond_to :message }
  end

end
