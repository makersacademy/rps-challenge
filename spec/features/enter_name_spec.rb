feature 'user can enter their name' do
  scenario 'user enters their name on the home screen and it is displayed on the start page' do
    sign_in_and_play
    expect(page).to have_content("#{@player_name}")
  end
end
