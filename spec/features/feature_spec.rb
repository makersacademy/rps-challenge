feature 'entering player name' do

  scenario 'enter the player name and see it on the play page' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    expect(page).to have_content 'Ainsley'
  end

end

feature 'choosing a weapon' do

  scenario 'see a choice of weapons on the play page' do
    visit('/')
    fill_in :player_name, with: 'Ainsley'
    click_button 'play'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

end
