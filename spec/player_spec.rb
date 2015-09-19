require 'player'

describe Player do

  it 'Should initialize with a hand of nil' do
    expect(subject.hand).to be nil
  end

  context '#chooses' do

    it { is_expected.to respond_to :hand }

    it 'should change players hand' do

    end

    it 'should raise error if choice is invalid' do

    end
  end
end
