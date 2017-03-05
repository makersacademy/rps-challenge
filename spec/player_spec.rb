require 'player'

describe Player do

  subject = Player.new('Alex')
  context 'name' do
    it "should remembers player's name" do
      expect(subject.name).to eq('Alex')
    end

  context 'option' do
    it "should remember player's choice" do
      expect(subject.choose_option('rock')).to eq(subject.option)
    end
  end
  end
end
