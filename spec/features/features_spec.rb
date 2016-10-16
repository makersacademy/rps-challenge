
  feature 'Enter name' do
    scenario 'enter name of player' do
      visit('/')
      fill_in :player, with: "Peter"
      click_button 'Submit'
    expect(page).to have_content "Peter"
    end
  end

    feature 'Player can chose between rock, paper, scissors' do
      scenario 'Player choses scissor' do
        sign_in_and_play
        click_button("paper")
        expect(page).to have_content "Peter has chosen paper"
      end
    end

    feature 'Shows if player has won or lost or drawn against the computer' do
      scenario 'Player choses Paper and computer choses Paper' do
        sign_in_and_play
        click_button("paper")
        expect(page).to have_content "lose"
      end
    end


    feature 'Shows if player has won or lost or drawn against the computer' do
      scenario 'Player choses Paper and computer choses Paper' do
        sign_in_and_play
        click_button("scissors")
        expect(page).to have_content "draw"
      end
    end

    feature 'Shows if player has won or lost or drawn against the computer' do
      scenario 'Player choses Paper and computer choses Paper' do
        sign_in_and_play
        click_button("rock")
        expect(page).to have_content "win"
      end
    end

    feature 'Can play again' do
      scenario 'Replay' do
        sign_in_and_play
        click_button("rock")
        click_link("Play again")
        expect(page).to have_content "Sign up here"
      end
    end
