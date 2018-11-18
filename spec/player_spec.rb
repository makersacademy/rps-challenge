require 'player'

describe Player do
  describe '#name' do
    it "has a name" do
      expect(subject.name).to eq('Rick')
    end
  end
  describe '#choice' do
    it "can store a weapon" do
      subject.choice('rock')
      expect(subject.weapon).to eq('rock')
    end
  end
end
