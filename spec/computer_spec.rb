require 'computer'

describe Computer do
  subject (:computer) { described_class.new }

  it 'selects a weapon' do
    allow(computer).to receive(:select_weapon).and_return(:paper)
    expect(computer.select_weapon).to eq :paper
  end

end
