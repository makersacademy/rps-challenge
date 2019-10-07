require 'user'

describe User do
  it 'has a name' do
    becka = User.new('Becka')
    expect(becka.name).to eq 'Becka'
  end
end
