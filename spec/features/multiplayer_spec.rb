# feature 'Multiplayer' do
#   scenario 'select multiplayer from index' do
#     visit '/'
#     fill_in "player_name", with: "Kevin"
#     click_button "Multiplayer"
#     expect(page).to have_content("Click OK when your partner has logged in")
#     expect(page).not_to have_content("Kevin")
#   end
# end