# require 'game'

# describe RockPaperScissors do
# context 'Winning a game:' do
#     it 'Rock Vs Scissors' do
#       allow(player).to receive(:player_2_move).and_return(['Scissors'])
#       player.choose 'Rock'
#       expect(player.win_count).to eq 1
#     end
#     it 'Scissors Vs Paper' do
#       allow(player).to receive(:player_2_move).and_return(['Paper'])
#       player.choose 'Scissors'
#       expect(player.win_count).to eq 1
#     end
#     it 'Paper Vs Rock' do
#       allow(player).to receive(:player_2_move).and_return(['Rock'])
#       player.choose 'Paper'
#       expect(player.win_count).to eq 1
#     end
#   end
#   context 'Losing a game:' do
#     it 'Scissors Vs Rock' do
#       allow(player).to receive(:player_2_move).and_return(['Rock'])
#       player.choose 'Scissors'
#       expect(player.lose_count).to eq 1
#     end
#     it 'Rock Vs Paper' do
#       allow(player).to receive(:player_2_move).and_return(['Paper'])
#       player.choose 'Rock'
#       expect(player.lose_count).to eq 1
#     end
#     it 'Paper Vs Scissors' do
#       allow(player).to receive(:player_2_move).and_return(['Scissors'])
#       player.choose 'Paper'
#       expect(player.lose_count).to eq 1
#     end
#   end
#   context 'Drawing' do
#     it 'can draw' do
#       allow(player).to receive(:player_2_move).and_return(['Scissors'])
#       player.choose 'Scissors'
#       expect(player.win_count).to eq 0
#     end
#   end
# end