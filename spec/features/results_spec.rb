feature 'When player picks weapon' do
  
  scenario 'CPU weapon is displayed' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_content "Rock vs. Scissors"
  end

  scenario 'result is displayed' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_content "You loose!"
  end

  scenario 'score is displayed' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_content "Score 1:0"
  end

  scenario 'Button to play again' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_button 'Play Again'
  end

  scenario 'Can play again' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    click_button('Play Again')
    expect(page).to have_content "Pick your Weapon"
  end

end
