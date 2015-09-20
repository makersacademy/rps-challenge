require 'computer'

describe Computer do 

  it { is_expected.to respond_to(:generate_turn) }

  it 'should generate a random turn and store it' do 
    subject.generate_turn
    expect(subject.options.include?(subject.choice)).to eq(true)
  end
  
end