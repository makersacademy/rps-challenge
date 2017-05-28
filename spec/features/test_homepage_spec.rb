feature 'test homepage functionality' do
  scenario 'user is welcomed' do
    visit '/'
    expect(page).to have_content("Rock, Paper, Scissors!")
  end

  scenario 'user can enter their name' do
    visit '/'
    fill_in :player_name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content("Please choose Rock, Paper or Scissors below")
  end
end
