describe Result_workey_outey do

  let (:turn) { double(:turn) }
=begin
  it '#takes and hash and when play_types match, returns draw' do
    allow(:generate).to receive(:turn).and_return({:player => 'ROCK', :computer => 'ROCK'})
    expect(subject.generate(turn)).to eq('draw')
  end
=end

end
