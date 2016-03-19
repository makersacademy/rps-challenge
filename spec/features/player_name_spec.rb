feature 'entering names' do

  scenario 'starting a game vs computer' do
    visit '/'
    fill_in 'player_1' , with: 'player_1'
    click_button 'Go!'
    expect(page).to have_content "Welcome, player_1!"
  end

end
