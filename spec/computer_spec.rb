require 'computer'

describe Computer do
  let(:obj) { double(:obj) }
  let(:computer) { described_class.new(:name) }
  # let(:options) { double(:options, sample: true) }
  # let(:game_class) { double(:options)}
  # let(:game_class) { double(:game_class, new: fake_game) }

  context '#receive_reward' do
    it 'wins increase by 1' do
      expect { computer.receive_reward }.to change { computer.wins }.by(1)
    end
  end

  context '#receive_reward' do
    it 'wins increase by 1' do
      expect(computer.receive_choice(obj)).to eq(obj)
    end
  end

  # context '#randomizer' do
  #   it 'Random value' do
  #     expect(computer.randomizer).to eq(true)
  #   end
  # end

end
