require 'rps_game'
feature 'Player registers' do
  scenario 'player submit a name' do
    visit '/'
    fill_in :player_name, with: 'Sam'
    click_button 'Submit'
    expect(page).to have_content 'Sam'
  end

  scenario 'has radio buttons to select a move' do
    expect(page).to have_field 'move'
  end
end
