feature '/tie' do 
  scenario 'game result is a tie' do
    visit '/'
    fill_in(:player_1_name, with: 'goku')
    click_button('Single Player')
    click_button('Rock')
    srand(1)
    srand(2)
    expect(page).to have_content "It's a tie"
  end
end
