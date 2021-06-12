feature 'enter player name' do
  scenario 'player can enter name and submit form' do
    visit('/')
    fill_in :player_name, with: 'Ash'
    click_on 'Submit'
  end
end