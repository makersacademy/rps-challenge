  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

feature 'Enter names' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_1_name, with: 'Jon'
    fill_in :player_2_name, with: 'Whisky'
    click_button 'Submit'
    expect(page).to have_content 'Jon vs. Whisky'
  end
end
