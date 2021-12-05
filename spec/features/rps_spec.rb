feature "Rock Paper Scissors Game" do
  scenario "visiting the homepage" do
    visit '/'
    expect(page).to have_content 'RPS GAME'
    expect(page).to have_content 'Enter your name'
  end

  scenario "Submit your name" do
    enter_name  
    expect(page).to have_content 'Hi Paul Dirac! Make your choice:'
  end

  scenario "player can play a game" do
    enter_name
    page.choose('rock')
    click_button 'Play'
    expect(page).to have_content(/You (?:draw|win|lose)!/)
  end

  scenario "player can play again" do
    enter_name
    page.choose('rock')
    click_button 'Play'
    click_on 'Play again'
    expect(page).to have_content 'Hi Paul Dirac! Make your choice:'
  end

  scenario "user can start again with a new name" do
    enter_name
    page.choose('rock')
    click_button 'Play'
    click_on 'Enter a new name'
    expect(page).to have_content 'RPS GAME'
    expect(page).to have_content 'Enter your name'
  end
end
