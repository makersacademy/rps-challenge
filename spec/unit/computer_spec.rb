require_relative '../../lib/computer'

describe Computer do

  let(:weapon) { double :Weapon }
  subject(:opponent) { described_class.new(weapon) }

  it 'creates an instance of the Computer class' do
    expect(opponent).to be_instance_of(Computer)
  end

  context '#initialize' do
    it 'creates an instance variable from the input argument' do
      expect(opponent.opponents_weapon).to eq(weapon)
    end
  end

  context "#random_weapon" do
    it 'is called on a Computer instance' do
      expect(opponent).to respond_to(:random_weapon)
    end

    it 'returns a weapon based on random sampling' do
      allow(weapon).to receive(:weapon_generator).and_return(%w(rock paper scissors))
      allow(weapon).to receive(:weapon_choice).and_return("paper")
      choices = []
      100.times.map{choices << weapon.weapon_generator.sample}
      expect(choices.uniq).to include(weapon.weapon_choice)
    end
  end
end