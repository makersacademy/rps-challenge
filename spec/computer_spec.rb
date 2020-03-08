require 'computer'
describe Computer do
  it 'will respond to the method make_choice' do
    expect(subject.make_choice).to eq 'ROCK'
  end
end