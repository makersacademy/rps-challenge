# require 'player'

# describe Player do
# let(:p1) { Player.new('John') }

#   describe '#initialize' do 
#     it 'should know its name' do
#       expect(p1.name).to eq('John')
#       end
#     it 'should have default hitpoints' do
#       expect(p1.hitpoints).to eq 60
#     end
#   end

#   describe '#receive_damage' do
#     it 'should decreases opponent\'s score by 10' do
#       expect { p1.receive_damage }.to change { p1.hitpoints }.by -10
#     end
#   end
# end