describe AI do

  it '#Gives random return of AI play' do
    srand(10)
    expect(subject.result).to eq('PAPER')
  end

end
