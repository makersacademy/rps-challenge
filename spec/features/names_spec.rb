feature 'Enter names' do
  scenario 'See name on screen when asking to choose R,P,S' do
    visit('/')
    fill_in :player_1_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens'
  end
end
