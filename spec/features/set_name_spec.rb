# feature 'set name' do
#   scenario 'user should be able to enter their name and see it displayed' do
#     player_sign_in("Luke")
#     expect(page).to have_content "Luke"
#   end

#   scenario 'single user should see oppenent as computer' do
#     player_sign_in("Luke")
#     expect(page).to have_content "Computer"
#   end

#   scenario 'second user should be able to enter their name and see it displayed' do
#     players_sign_in("Luke", "Kirsty")
#     expect(page).to have_content "Luke"
#     expect(page).to have_content "Kirsty"
#   end
# end