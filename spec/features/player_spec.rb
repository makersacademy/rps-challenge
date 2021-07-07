require '/Users/michaelnguyen/Makers/rps-challenge/app_player.rb'
RSpec.describe Player do
  
  describe '#name' do
    it 'returns the name' do
      expect(subject.name('Michael')).to eq 'Michael'
    end
  end

end 