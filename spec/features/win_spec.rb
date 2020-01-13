feature '/result' do
  scenario 'game is won' do 
    visit '/'
    fill_in(:player_1_name, with: 'goku')
    click_button('Single Player')
    click_button('Rock')
    # expect(page).to have_content ("goku wins!" || 'CPU wins!' || "It's a tie")

  end
end