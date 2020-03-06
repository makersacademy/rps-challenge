feature 'Name entry form' do
    scenario 'player form' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        click_button :submit
        expect(page).to have_content 'Gareth'
    end

    scenario 'player selects "rock"' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        click_button :submit
        click_button "Rock"
        expect(page).to have_content 'Rock'
    end

    scenario 'player selects "paper"' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        click_button :submit
        click_button "Paper"
        expect(page).to have_content 'Paper'
    end

    scenario 'player selects "scissors"' do
        visit('/')
        fill_in :player1, with: 'Gareth' 
        click_button :submit
        click_button "Scissors"
        expect(page).to have_content 'Scissors'
    end

  end