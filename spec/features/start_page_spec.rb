feature 'user chooses set up for the game' do
  before(:each) do 
    visit('/')
  end

  scenario 'home page welcomes you to the game' do 
    expect(page).to have_content "Let's play Rock Paper Scissors!"
  end
  
  feature 'user chooses player mode' do
    scenario 'user can choose one player mode' do
      expect(page).to have_selector(:link_or_button, 'one player')
    end

    scenario 'user can choose two player mode' do
      expect(page).to have_selector(:link_or_button, 'two player')
    end
  end

  feature 'user completes set up for one player' do
    scenario 'home page has a Player 1 box' do
      click_button('one player')
      expect(page.has_field?('player1')).to be_truthy
    end

    scenario 'user will see their name on screen after clicking on the start button' do
      click_button('one player')
      sign_in
      expect(page).to have_content 'Patos'
    end
  end
end
