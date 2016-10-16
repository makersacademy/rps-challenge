require 'spec_helper'
# 
# feature 'Shows game results' do
#
#
#     scenario "When I submit 'Rock' I am told if I have won" do
#       sign_in_and_play
#       allow_any_instance_of(WEAPONS).to receive(:sample).and_return('Scissors')
#       choose "Rock"
#         click_button "Make your Choice"
#         expect(page).to have_content "Jigsaw chose Paper"
#     end
#   end


  #
  # feature 'Playing the game' do
  #   scenario "When I submit 'Rock' I am told if I have won" do
  #     allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
  #     visit '/'
  #     fill_in('name', with: 'Philip')
  #     select('rock', from: 'your_choice')
  #     click_button('Play')
  #     expect(page).to have_content "The result is .... You won"
  #   end
  # end
