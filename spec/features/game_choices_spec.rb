feature 'game choices' do
  scenario 'rock' do
    visit('/')
    fill_in(:player_1_name, with: 'Evita')
    click_button('Continue')
    choose('your_choice', option: 'Rock')
    click_button('Play')
    expect(page).to have_content('You have played')
  end
end