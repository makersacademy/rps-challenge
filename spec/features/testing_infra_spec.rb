feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Welcome to RPS!'
    end
  end

feature 'Sign in and play' do
  scenario 'Able to sign in and be directed to the game page' do
    sign_in_and_play
    expect(page).to have_content 'Lets play'
  end
end

feature "Choose 'rock' " do
  scenario 'Allows you to pick rock as a move' do
    sign_in_and_play
    page.should have_button('Rock')
  end

  # scenario 'takes you to a page and tells you if you have won or lost' do
  #   sign_in_and_play
  #   click_button("Rock")
  #   expect(page).to have_content "won!" 
  # end

end

feature "Choose 'paper' " do
  scenario 'Allows you to pick paper as a move' do
    sign_in_and_play
    page.should have_button('Paper')
  end
end

feature "Choose 'scissors' " do
  scenario 'Allows you to pick scissors as a move' do
    sign_in_and_play
    page.should have_button('Scissors')
  end
end

feature "has button to take you back to the game" do
  scenario "takes you to game page when after having chosen rock" do
    sign_in_and_play
    click_button("Rock")
    page.should have_button("Play Again")
  end

  scenario "takes you to game page when after having chosen paper" do
    sign_in_and_play
    click_button("Paper")
    page.should have_button("Play Again")
  end

  scenario "takes you to game page when after having chosen scissors" do
    sign_in_and_play
    click_button("Scissors")
    page.should have_button("Play Again")
  end
end

