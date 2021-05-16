require 'play'

describe Play do

  subject(:play) { described_class.new(choices) }
  let(:choices) { { :name => "Dev", :choice => :scissors, :comp_choice => :rock } }

  describe 'name' do
    it 'saves a players name' do
      expect(play.name).to eq("Dev")
    end
  end

  describe 'choice' do
    it 'saves a players choice' do
      expect(play.choice).to eq(:scissors)
    end
  end

  describe 'comp_choice' do
    it 'saves the computers choice' do
      expect(play.comp_choice).to eq(:rock)
    end
  end

end
