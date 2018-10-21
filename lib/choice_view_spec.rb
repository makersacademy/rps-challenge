require 'choice_view'

describe ChoiceView do
  let(:rock) { double :choice, name: 'rock', img: './img/rock.png' } 
  subject { described_class.new(rock) }

  describe '#display' do
    it "display's the choice's" do
      
    end
  end
end
