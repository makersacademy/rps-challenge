feature 'Name entry form' do
    scenario 'player form - single player' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        click_button :submit
        expect(page).to have_content 'Gareth'
    end

    scenario 'player form - multiplayer' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        fill_in :player2, with: 'Not Gareth' 
        click_button :submit
        expect(page).to have_content 'Gareth'
        expect(page).to have_content 'Not Gareth'
    end

  end

feature 'game screen single player' do
    scenario 'player selects "rock"' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        click_button :submit
        click_button :p1_rock
        expect(page).to have_content 'Rock'
    end

    scenario 'player selects "paper"' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        click_button :submit
        click_button :p1_paper
        expect(page).to have_content 'Paper'
    end

    scenario 'player selects "scissors"' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        click_button :submit
        click_button :p1_scissors
        expect(page).to have_content 'Scissors'
    end
end

feature 'game screen 2 player' do
    scenario 'player1 selects "rock", player2 selects "paper"' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        fill_in :player2, with: 'Not Gareth'
        click_button :submit
        click_button :p1_rock
        click_button :p2_paper
        expect(page).to have_content 'Not Gareth wins!'
    end

    scenario 'player1 selects "paper", player2 selects "scissors"' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        fill_in :player2, with: 'Not Gareth'
        click_button :submit
        click_button :p1_paper
        click_button :p2_scissors
        expect(page).to have_content 'Not Gareth wins!'
    end

    scenario 'player1 selects "scissors", player2 selects "rock' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        fill_in :player2, with: 'Not Gareth'
        click_button :submit
        click_button :p1_scissors
        click_button :p2_rock
        expect(page).to have_content 'Not Gareth wins!'
    end
end