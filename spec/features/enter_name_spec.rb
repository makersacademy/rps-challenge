feature 'entering name' do
  scenario 'enter and submit name' do
    sign_in_and_play
    expect(page).to have_content('Welcome John')
  end
end
