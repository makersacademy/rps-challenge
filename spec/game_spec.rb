require 'game'

describe Game do
  subject(:oscar) { Game.new('Oscar') }

  describe '#name' do
    it 'returns the name' do
      expect(oscar.name).to eq 'Oscar'
    end
  end

  # describe '#option' do
  #   it 'returns the option' do
  #     expect(oscar.option).to eq :Rock
  #   end
  # end

  # describe '#computer_option' do
  #   it 'returns the computer option' do
  #     expect(oscar.computer_option).to eq :Rock
  #   end
  # end

end

  # describe '#win?' do
  #   it 'return true if player selected Rock and computer select Scissor'
  #     expect(subject.win?).to eq true
  # end
