require 'human_player'

describe HumanPlayer do
  subject(:human_player) { described_class.new("James Jameson") }
  describe '#initialize' do
    it 'sets its arg to @name' do
      expect(human_player).to have_attributes(name: "James Jameson")
    end
    it 'sets @choice to nil' do
      expect(human_player).to have_attributes(choice: nil)
    end
  end
  describe '#set_choice' do
    it 'sets @choice to arg as lowercase symbol' do
      human_player.set_choice "rock"
      expect(human_player.choice).to eq :rock
    end
  end

  describe '#print_choice' do
    it 'returns @choice as capitalized symbol' do
      human_player.set_choice "rock"
      expect(human_player.print_choice).to eq "Rock"
    end
  end

  describe '#sym_name' do
    it 'returns downcased underscored symbol of name' do
      expect(human_player.sym_name).to eq :james_jameson
    end
  end

end
