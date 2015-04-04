require 'computer'

Describe Computer do
  it 'automatically has the name computer' do
    expect(subject.name).to eq 'computer'
  end
end