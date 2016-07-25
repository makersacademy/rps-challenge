# require './app.rb'
#
# feature 'chose rps' do
#   scenario 'user choses rock' do
#     visit ('/')
#     fill_in "players_name", with: "Pip"
#     click_button "Submit!"
#     click_link "Rock"
#     expect(page).to have_content "you lost"
#   end
# 
#   scenario 'user choses paper' do
#     visit ('/')
#     fill_in "players_name", with: "Pip"
#     click_button "Submit!"
#     click_link "Paper"
#     expect(page).to have_content "you lost"
#   end
#
#   scenario 'user choses scissors' do
#     visit ('/')
#     fill_in "players_name", with: "Pip"
#     click_button "Submit!"
#     click_link "scissors"
#     expect(page).to have_content "you lost"
#   end
# end
