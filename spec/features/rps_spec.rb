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

  scenario "player can win a game" do
    enter_name
    page.choose('rock')
    click_button 'Play'
    expect(page).to have_content(/It's a (?:draw|win|lose)/)
  end
end