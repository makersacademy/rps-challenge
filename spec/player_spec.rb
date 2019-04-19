require 'player'

describe Player do
  subject {Player.new('Pikachu')}
  describe '#name' do
    it "shows player's name" do
      expect(subject.name).to eq 'Pikachu'
    end
  end
end
