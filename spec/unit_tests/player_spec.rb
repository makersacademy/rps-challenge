describe Player do 
  let(:player) {described_class.new("Eli")}

it 'stores and returns player name' do
expect(player.player_name).to eq("Eli")
end

it 'stores and returns player choice' do
player.player_choice("Rock")
expect(player.print_choice).to eq("Rock")
end
  
end