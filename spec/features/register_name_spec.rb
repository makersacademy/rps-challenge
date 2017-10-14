feature 'Register names' do
  scenario 'submitting names' do
    visit '/register'
    fill_in('Player Name', with: 'Alexi')
    expect(page).to have_content "Alexi vs Computer"
  end
end 




# feature 'Enter names' do
#   scenario 'submitting names' do
#     sign_in_and_play
#     expect(page).to have_content('Tom vs. Alexi')
#   end
# end
