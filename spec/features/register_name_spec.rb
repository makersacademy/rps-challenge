require_relative './web_helpers'

feature 'Register names' do
  scenario 'submitting names' do
    sign_in
    expect(page).to have_content "Alexi vs Computer"
  end
end


# visit('/')
# fill_in :player_1_name, with: 'Tom'
# fill_in :player_2_name, with: 'Alexi'
# click_button 'Submit'


# visit('/')
# fill_in :player_1_name, with: 'Tom'
# fill_in :player_2_name, with: 'Alexi'
# click_button 'Submit'
# feature 'Enter names' do
#   scenario 'submitting names' do
#     sign_in_and_play
#     expect(page).to have_content('Tom vs. Alexi')
#   end
# end
