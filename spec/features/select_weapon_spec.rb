feature 'Player can select a weapon' do
  scenario 'shows players weapon on screen' do
    visit('/')
    fill_in :player_name, with: 'Otis'
    click_button 'Submit'
    click_button 'paper'
    expect(page).to have_content 'Otis selected paper.'
  end
end

feature 'Computer selects a random weapon' do
  scenario 'shows computers weapon on screen' do
    visit('/')
    fill_in :player_name, with: 'Otis'
    click_button 'Submit'
    click_button 'paper'
    expect(page).to have_content 'Computer selected'
  end
end
