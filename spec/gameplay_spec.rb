require 'gameplay'

describe Gameplay do 
  subject { described_class.new(options) }
  let(:options) { {:player_name => 'Gwen', :player_choice => 'Rock', :opponent_choice => 'Paper'} }

  it 'knows and can return player_name' do 
    expect(subject.player_name).to eq 'Gwen'
  end

  it 'knows and can return player_choice' do 
    expect(subject.player_choice).to eq 'Rock'
  end

  it 'knows and can return opponent choice' do 
    expect(subject.opponent_choice).to eq 'Paper'
  end

  context 'ending the game' do 
    describe '#win?' do 
      it 'returns true when player_choice is rock and opponent choice is paper' do 
        expect(subject.win).to eq true
      end 

      it 'returns true when player_choice is rock and opponent choice is paper' do 
        expect(subject.win).to eq true
      end 

    end
  end 

end