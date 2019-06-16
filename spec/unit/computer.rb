describe Computer do

  it '#Gives random return of Computer play' do
    srand(10)
    expect(subject.result).to eq('PAPER')
  end

end
