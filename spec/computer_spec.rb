require 'computer'

describe Computer do
  let(:obj) {double(:obj)}
  let(:computer) {described_class.new(:name) }

  context '#receive_reward' do
    it 'wins increase by 1' do
      expect {computer.receive_reward}.to change{computer.wins}.by(1)
    end
  end

  context '#receive_reward' do
    it 'wins increase by 1' do
      expect(computer.receive_choice(obj)).to eq(obj)
    end
  end
end
