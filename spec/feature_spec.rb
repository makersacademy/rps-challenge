describe "Check for text on homepage", type: :feature do
    it "should show the game title" do
      visit "/"
      expect(page).to have_content "It's Time for Rock, Paper, Scissors!"
    end
end

feature "starting a game" do
    scenario "enter in players names" do
        sign_in_and_play
        expect(page).to have_content 'Player 1 vs Computer'
    end
end

feature "playing a game" do
    scenario "player should see 3 choices" do
        sign_in_and_play
        expect(page).to have_selector(:link_or_button, 'Rock')
        expect(page).to have_selector(:link_or_button, 'Paper')
        expect(page).to have_selector(:link_or_button, 'Scissors')
    end

    scenario 'player should be shown rock' do
        sign_in_and_play
        click_button 'Rock'     
        expect(page).to have_selector('h2', text: 'Player 1 chose Rock', exact_text: true)
    end

    scenario 'player should be shown paper' do
        sign_in_and_play
        click_button 'Paper' 
        expect(page).to have_selector('h2', text: 'Player 1 chose Paper', exact_text: true)    
    end

    scenario 'player should be shown scissors' do
        sign_in_and_play
        click_button 'Scissors'
        expect(page).to have_selector('h2', text: 'Player 1 chose Scissors', exact_text: true)    
    end

    scenario 'player should be shown computer move' do
        sign_in_and_play
        click_button 'Rock'
        expect(page.should satisfy {|page| page.has_selector?('h2', text: 'Computer chose Rock', exact_text: true) or page.has_selector?('h2', text: 'Computer chose Paper', exact_text: true) or page.has_selector?('h2', text: 'Computer chose Scissors', exact_text: true) }).to eq true
    end

    scenario 'page should display the score' do
        sign_in_and_play
        expect(page).to have_selector('h3', text: 'Player 1: 0 | Computer: 0', exact_text: true)
    end
end 