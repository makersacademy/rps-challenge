feature 'rock, paper, scissors buttons' do
  scenario 'user can select a rock' do
    visit('/')
    fill_in :player_1_name, with: 'Alicia'
    click_button 'Submit'
    expect(page).to have_button('Rock')
  end

  scenario 'user can select paper' do
    visit('/')
    fill_in :player_1_name, with: 'Alicia'
    click_button 'Submit'
    expect(page).to have_button('Paper')
  end
end
