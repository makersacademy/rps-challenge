require 'computer'

describe Computer do

  it 'should have a default name - "Imaginary friend"' do
    expect(subject.name).to eq 'Imaginary friend'
  end

  describe '#select_random' do
    let(:attacks) { [:rock, :paper, :scissors] }

    it 'should select a ramdom attack from given array' do
      expect(attacks).to receive(:sample)
      subject.select_random(attacks)
    end

    it 'should select that random attack' do
      allow(attacks).to receive(:sample).and_return(:scissors)
      subject.select_random(attacks)
      expect(subject.attack).to eq :scissors
    end
  end
end
