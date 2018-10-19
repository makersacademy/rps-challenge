# require 'game'
#
# describe Game do
#
#   describe '#initialize' do
#     let(:player_1) { double :player_1, hand: :rock }
#     let(:player_2) { double :player_2, hand: :paper }
#     subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#
#     it 'with two players' do
#       expect(subject.players).to eq [player_1, player_2]
#     end
#   end
#
#   describe '#winner' do
#
#     context 'player_1 has rock and player_2 has paper' do
#       let(:player_1) { double :player_1, hand: :rock }
#       let(:player_2) { double :player_2, hand: :paper }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_2 wins' do
#         expect(subject.winner).to eq player_2
#       end
#     end
#
#     context 'player_1 has rock and player_2 has scissors' do
#       let(:player_1) { double :player_1, hand: :rock }
#       let(:player_2) { double :player_2, hand: :scissors }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_1 wins' do
#         expect(subject.winner).to eq player_1
#       end
#     end
#
#     context 'player_1 has paper and player_2 has scissors' do
#       let(:player_1) { double :player_1, hand: :paper }
#       let(:player_2) { double :player_2, hand: :scissors }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_2 wins' do
#         expect(subject.winner).to eq player_2
#       end
#     end
#
#     context 'player_1 has paper and player_2 has lizzard' do
#       let(:player_1) { double :player_1, hand: :paper }
#       let(:player_2) { double :player_2, hand: :lizzard }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_2 wins' do
#         expect(subject.winner).to eq player_2
#       end
#     end
#
#     context 'player_1 has paper and player_2 has Spock' do
#       let(:player_1) { double :player_1, hand: :paper }
#       let(:player_2) { double :player_2, hand: :Spock }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_2 wins' do
#         expect(subject.winner).to eq player_1
#       end
#     end
#
#     context 'player_1 has rock and player_2 has lizzard' do
#       let(:player_1) { double :player_1, hand: :rock }
#       let(:player_2) { double :player_2, hand: :lizzard }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_2 wins' do
#         expect(subject.winner).to eq player_1
#       end
#     end
#
#     context 'player_1 has rock and player_2 has Spock' do
#       let(:player_1) { double :player_1, hand: :rock }
#       let(:player_2) { double :player_2, hand: :Spock }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_2 wins' do
#         expect(subject.winner).to eq player_2
#       end
#     end
#
#     context 'player_1 has scissors and player_2 has lizzard' do
#       let(:player_1) { double :player_1, hand: :scissors }
#       let(:player_2) { double :player_2, hand: :lizzard }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_2 wins' do
#         expect(subject.winner).to eq player_1
#       end
#     end
#
#     context 'player_1 has scissors and player_2 has Spock' do
#       let(:player_1) { double :player_1, hand: :scissors }
#       let(:player_2) { double :player_2, hand: :Spock }
#       subject {described_class.new(players: [player_1, player_2], hands: [:rock, :paper, :scissors])}
#       it 'player_2 wins' do
#         expect(subject.winner).to eq player_2
#       end
#     end
#
#   end
# end
