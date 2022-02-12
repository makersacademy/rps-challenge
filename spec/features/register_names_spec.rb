feature 'Register names' do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario "Players' names are registered and displayed on the screen" do
    visit('/')
    fill_in('player_1_name', with: 'Jack')
    click_button('Submit')
    expect(page).to have_content 'New Challenger: Jack'
  end
end