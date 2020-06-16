require './lib/rps'

describe Rock_Paper_Scissors do
  before :each do 
    srand(67809)
  end 

  it 'randomly chooses RPS' do
    rps = Rock_Paper_Scissors.new
    expect(rps.rps_rand).to eq('rock')
  end
  
  # it 'randomly chooses RPS' do
  #   rps = Rock_Paper_Scissors.new('paper')
  #   expect(rps.rps_rand).to eq('paper')
  # end  

  # it 'randomly chooses RPS' do
  #   rps = Rock_Paper_Scissors.new('scissors')
  #   expect(rps.rps_rand).to eq('scissors')
  # end  
end


