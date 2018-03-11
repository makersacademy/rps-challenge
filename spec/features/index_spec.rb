feature 'Register name' do
  scenario 'registering one name' do
    sign_in_and_play
    expect(page).to have_content('Raefe vs. Computer')
  end
end
