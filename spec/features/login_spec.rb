feature 'main' do
  scenario 'starts up login web page' do
    visit '/'
    expect(page).to have_content('It\'s Rock Paper Scissors!')
  end

  scenario 'lets a player enter their name in single mode' do
    visit '/'
    click_button 'Single Player'
    fill_in('player1', with: 'The Obsidian Man') 
    click_button('Submit')
    expect(page).to have_content 'The Obsidian Man(0) vs. the Computer(0)' 
  end
  
  scenario 'lets a player enter their name in multiplayer mode' do
    visit '/'
    click_button 'Multiplayer'
    fill_in('player1', with: 'The Obsidian Man') 
    fill_in('player2', with: 'Paperboy')
    click_button('Submit')
    expect(page).to have_content 'The Obsidian Man(0) vs. Paperboy(0)' 
  end

end
