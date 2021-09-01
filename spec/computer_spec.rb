require 'computer'

describe Computer do
  it 'game produces random option' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    expect(subject.random).to eq 'Paper'
  end
end
