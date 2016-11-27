# require 'player'
# require 'game'
#
# describe 'It declares a winner' do
#   context 'player chooses "rock" and computer chooses "scissors"' do
#     let(:game) { double(Game.new)}
#       before do
#         allow(game).to receive(:computers_choice).and_return('SCISSORS')
#         scenario 'computer makes a choice after player' do
#           sign_in_and_play
#           click_button 'ROCK!'
#           expect(page).to have_content "Mike chose ROCK! The computer chose SCISSORS! \n MIKE WINS!!"
#         end
#       end
#     end
#   end
#

  # scenario 'player chooses "rock" and computer chooses "paper"' do
  #   sign_in_and_play
  #   click_button 'ROCK!'
  #   expect(page).to have_content "Mike chose ROCK! The computer chose PAPER!"
  # end
