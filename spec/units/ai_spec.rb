describe AI do
  
  it '#weapon returns a random weapon' do
    expect(%w-R P S-).to include(described_class.new.weapon)
  end

end
