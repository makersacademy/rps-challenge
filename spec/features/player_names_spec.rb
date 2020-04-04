feature 'Names are displayed' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'players can enter names and they are displayed' do
    visit '/'
    fill_in 'name', with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end
end
