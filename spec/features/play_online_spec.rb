feature 'Game is set up: ' do
  scenario 'Home page checks if player wants to play computer' do
    visit '/'
    expect(page).to have_content "Would you like to play against:"
  end
  scenario 'if player does not want to play computer, available games are shown' do
    visit '/'
    select('Human', from: 'Opponents')
    click_button('Next')
    expect(page).to have_content "The following games are available"
  end
end

feature 'if there are no exsting games' do
  scenario 'player can set up a new game' do
    visit '/available_games'
    fill_in('game', with: "New Game")
    click_button('Next')
    expect(page).to have_content "Enter Your Name."
  end
  scenario 'acknowledged if new name/game is initiated' do
    visit '/new_game'
    fill_in('name', with: 'Bob')
    click_button('Next')
    expect(page).to have_content "Bob you are now waiting for an opponent"
  end
end

feature 'if there are existing games to join' do
  scenario 'show existing games if there any' do
    visit '/'
    select('Human', from: 'Opponents')
    click_button('Next') 
    fill_in('game', with: "New Game")
    click_button('Next')
    fill_in('name', with: 'Bob')
    click_button('Next')
    expect(Game.existing_games_getter.size).to eq 1
  end
end

feature'After throwing a weapon' do
    
    scenario 'player can get a result with Paper' do
        visit '/choose'
        select('Paper', from: 'Weapons')
        click_button('Throw')
        expect(page).to have_content "And the result is:" 
    end
    scenario 'player can get a result with Rock' do
        visit '/choose'
        select('Rock', from: 'Weapons')
        click_button('Throw')
        expect(page).to have_content "And the result is:" 
    end
    scenario 'player can get a result with Scissors' do
        visit '/choose'
        select('Scissors', from: 'Weapons')
        click_button('Throw')
        expect(page).to have_content "And the result is:" 
    end
    scenario 'player can get a result with Spock' do
        visit '/choose'
        select('Spock', from: 'Weapons')
        click_button('Throw')
        expect(page).to have_content "And the result is:" 
    end
    scenario 'player can get a result with Lizard' do
        visit '/choose'
        select('Lizard', from: 'Weapons')
        click_button('Throw')
        expect(page).to have_content "And the result is:" 
    end

end