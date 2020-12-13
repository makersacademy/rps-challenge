feature 'Register name' do
  scenario 'registering user name' do
  sign_in_and_play
    expect(page).to have_content 'Hi Jimbob!'
  end
end
