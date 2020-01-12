feature '/single-player' do 
  scenario 'loads the game page' do 
    visit '/'
    fill_in(:player_1_name, with: 'goku')
    click_button 'Single Player'
    expect(page).to have_content 'goku vs. CPU'
  end
end
