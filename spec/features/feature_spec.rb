#
#   feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Hi'
#   end
# end

feature 'sign in form' do
  scenario 'player signs in with name and is displayed' do
   visit('/')
   fill_in 'Player_1', with: 'Eithel'
   fill_in 'Player_2', with: 'Harry'
   click_button 'Submit'
   expect(page).to have_content 'Eithel vs Harry'
 end
end
