feature 'start playing' do
  scenario 'Welcome the user' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Neha'
  end
end
