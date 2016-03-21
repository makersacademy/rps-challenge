feature 'entering names' do

  scenario 'starting a game vs computer' do
    visit '/'
    fill_in 'player' , with: 'player'
    click_button 'Go!'
    expect(page).to have_content "Welcome, player!"
  end

end
