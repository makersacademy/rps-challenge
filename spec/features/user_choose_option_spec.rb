feature 'Testing user game options' do
  scenario 'Asks user to choose an option' do
    sign_in_and_play
    expect(page).to have_content 'What option do you choose:'
  end
end
