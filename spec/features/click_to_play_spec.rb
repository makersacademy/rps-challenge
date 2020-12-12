feature 'Register name' do
  scenario 'registering user name' do
    sign_in_and_play
    click_link('play')
    expect(page).to have_content 'Here we go Jimbob!'
  end
end
