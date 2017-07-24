feature 'Play Game' do

  scenario 'has drop-down list to choose weapon' do
    visit('/')
    fill_in :player_1_name, with: 'Starcy'
    click_button 'Submit'
    expect(page).to have_field 'Weapons'
  end
end
