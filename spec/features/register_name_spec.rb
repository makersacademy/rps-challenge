# US1; I would like to register my name before playing an online game
feature 'Registering name online' do
  scenario 'register name' do
    visit '/'
    fill_in :player_1_name, with: 'Arjun'
    click_button 'Submit'
    expect(page).to have_content 'Arjun'
  end
end
