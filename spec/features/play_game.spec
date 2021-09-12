feature 'Randomer' do
    scenario 'page confirms Players choice' do
        fill_in :player_name, with: 'David'
        click_button 'OK'
        expect(page).to have_content 'Charlotte attacked Mittens'
    end

    # scenario 'be attacked by Player 2' do
    #   sign_in_and_play
    #   click_link 'Attack'
    #   click_button 'OK'
    #   click_link 'Attack'
    #   expect(page).to have_content 'Mittens attacked Charlotte'
    # end

    # scenario 'reduce Player 2 HP by 10' do
    #   sign_in_and_play
    #   click_link 'Attack'
    #   click_button 'OK'
    #   expect(page).not_to have_content 'Mittens: 60HP'
    #   expect(page).to have_content 'Mittens: 50HP'
    # end