require 'player'

describe Player do
  subject { Player.new('Pikachu') }
  describe '#name' do
    it "shows player's name" do
      expect(subject.name).to eq 'Pikachu'
    end
  end

  describe '#make_decision' do
    it "chose one from the choices" do
      subject.make_decision('Rock')
      expect(subject.choice).to eq 'Rock'
    end
  end

end
