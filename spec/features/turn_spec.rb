require 'turn.rb'
describe Turn do
  subject(:turn) { described_class.new(options) } 
  let(:options) do { "player_name" => "Peter", "player_shape" => :rock,
    "opponents_shape" => :rock } end 
    describe '#player_name' do
      it "expects to return the player name" do
        expect(subject.player_name).to eq "Peter"
      end
      
      describe '#player_shape' do
        it "expects to return the player's shape" do
          expect(subject.player_shape).to eq :rock
        end
        
        describe '#opponents_shape' do
          it "expects to return the opponents shape" do
            expect(subject.opponents_shape).to eq :rock
          end
        end
      
      end
    end
  end

  # Here we're initialising the class Turn with some options.
  # Below we are defining our options within a hash.