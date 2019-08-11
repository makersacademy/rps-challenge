require './lib/computer.rb'

describe Computer do 
  it 'outputs either rock, paper or scissors' do
    expect(subject.choice).to be_kind_of(String)
  end
end
