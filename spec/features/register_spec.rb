feature 'Register to play' do
  scenario 'a user registers their name and see it in lights' do
    visit '/'
    fill_in 'player_name', with: 'Luke'
    click_button 'Register'
    expect(page).to have_content 'Prepare to enter the arena, Luke!'
  end
end
