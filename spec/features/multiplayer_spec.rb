feature '/multiplayer' do 
  scenario 'loads player names correctly' do 
    visit '/'
    fill_in(:player_1_name, with: 'goku')
    click_button 'Multiplayer'
    fill_in(:player_2_name, with: 'vegeta')
    click_button 'Continue'
    expect(page).to have_content 'goku vs. vegeta'
  end
end

