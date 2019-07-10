feature 'Enter names' do
  scenario 'Can run app and players enter names see on screen' do
    visit('/')
    fill_in :player_1_name, with: 'Tim'
    fill_in :player_2_name, with: 'Leo'
    click_button 'Submit'
    expect(page).to have_content "Tim vs. Leo"
  end
end
