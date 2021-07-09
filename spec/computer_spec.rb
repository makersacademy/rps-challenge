require 'computer'

describe Computer do

  it { is_expected.to respond_to :action }
  
  describe '#action' do
    it 'returns rock, paper or scissors' do
      expect(subject.action).to_not be_nil
    end
  end

  it 'has a name' do
    expect(subject.name).to eq 'Computer'
  end
end
