# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Enter name' do
  scenario 'Player can enter their name' do
    visit('/')
    fill_in('player_name', with: 'Bob')
    click_button('Submit')
    expect(page).to have_content 'Hello Bob'
  end
end