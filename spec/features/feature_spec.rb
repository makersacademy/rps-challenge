feature 'testing features' do

  scenario 'user should be able to enter their name before starting a game' do
    visit('/')
    fill_in 'name', with: 'Max'
    click_button 'Start game'
    expect(page).to have_content 'Max'
  end

end
