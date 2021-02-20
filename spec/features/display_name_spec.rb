feature 'player fills in form' do
  scenario 'receives player name through form' do
    visit '/'
    fill_in :player_name, with: 'Milly'
    click_button 'Submit'
    expect(page).to have_content "Milly, here is your name in lights!"
end
end
