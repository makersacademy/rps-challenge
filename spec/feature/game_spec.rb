# require 'spec_helper'
# require_relative 'webhelpers'
#
# feature 'user should see available choices' do
#   scenario 'user should see rock choice' do
#     sign_in_and_play
#     expect(page).to have_content("Rock")
#   end
#
#   scenario 'user can select the "Rock" option' do
#     sign_in_and_play
#     click_link('Rock')
#     expect(page.current_path).to eq('/result')
#     # expect(page).to have_content("You selected rock")
#   end
# end
#
# feature "opponent's choice" do
#   scenario 'user can select their choice then see their opponents' do
#     sign_in_and_play
#     click_link("Rock")
#     expect(page.current_path).to eq('/result')
#
#     # expect(page.current_path).to eq('/result')
#     # expect(page).to have_content ("PLAYER is the winner!")
#   end
#
# end
