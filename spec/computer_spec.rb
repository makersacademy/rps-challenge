require "computer"

describe Computer do

  it 'displays the right name' do
    expect(subject.name).to eq 'Computer'
  end

  describe '#make_move' do
    it 'computer choses rock' do
      srand(2)
      expect(subject.move).to eq 'Rock'
  end
end

end
