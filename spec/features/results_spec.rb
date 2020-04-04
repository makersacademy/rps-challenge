feature 'When player picks weapon' do
  scenario 'CPU weapon is displayed' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_content "Rock vs. Scissors"
  end

  scenario 'Can play again' do
    visit '/'
    click_button('Go!')
    click_button('Rock')
    expect(page).to have_button 'Play Again'
  end

end