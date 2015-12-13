require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:weapon) { :paper }

  it 'makes a choice of weapon at random' do
    Array.any_instance.stub(:sample).and_return(:paper)
    expect(computer.choose_weapon).to eq :paper
  end

  it 'remembers what weapon the computer has chosen to play' do
    Array.any_instance.stub(:sample).and_return(:paper)
    computer.choose_weapon
    expect(computer.weapon).to eq (:paper)
  end
end
