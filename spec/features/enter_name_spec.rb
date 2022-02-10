# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Registering name to play the game" do
  scenario 'submit player name' do
    visit '/'
    fill_in :player_name, with: "Bob"
    click_button 'Register'
    expect(page).to have_content 'Bob you have registered to play'
  end
end
