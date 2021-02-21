feature 'Play the game' do
  scenario 'win the game' do
    complete_form
    click_button 'Start Game'
    expect(page).to have_content 'won' 
  end
  scenario 'lose the game' do
    complete_form
    click_button 'Start Game'
    expect(page).to have_content 'lost' 
  end
  scenario 'have to choose RP or S' do

  end

end 