require 'player'

describe Player do

  subject(:p1) { described_class.new('Misa') }
  let(:choice) { ['ROCK','PAPER','SCISSORS'].sample }

  describe '#initialize' do
    it 'initializes with name' do
      sign_in_and_play
      expect(p1.name).to eq('Misa')
    end
  end

  describe '#choose' do
    it 'remembers players choice' do
      sign_in_and_play
      click_button(choice)
      expect(p1.choose(choice)).to eq(choice)
    end
  end
end
