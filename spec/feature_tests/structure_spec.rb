feature 'Testing infrastructure' do

  feature 'homepage' do
    scenario 'Can run app and check page content' do
      visit_home
      expect(page).to have_content 'Enter your name'
    end

    scenario 'Home page should have a field to enter name' do
      visit_home
      expect(page).to have_field('name')
    end

    scenario 'Home page should have a button to submit name' do
      visit_home
      expect(page).to have_button('Begin')
    end

  end

  before do
    visit_home
    srand(1006)
    sign_in
  end

  feature 'Battle page' do
    scenario 'Can enter name and see that name has been stored on the next page' do
      expect(page).to have_content 'Player - TEST'
    end

    scenario 'Can view the name of the computer player on the battle page' do
      expect(page).to have_content 'Computer - Donnie finga-slinga'
    end

    scenario 'Should have an option for rock, paper and scissors' do
      expect(page).to have_content("ROCK") and have_content("PAPER") and have_content("SCISSORS")
    end

    scenario 'Should have a button to submit choice' do
      expect(page).to have_button('GO')
    end

    scenario 'Should be able to see the score of each player' do
      expect(page).to have_content('TEST - Score - 0') and have_content('Donnie finga-slinga - Score - 0')
    end

  end

  feature 'Round over page' do
    feature 'Choosing paper' do

      before do
        choose_paper
      end

      scenario 'Should be able to select an option and see your choice on the next page' do
        expect(page).to have_content('You chose PAPER!')
      end

      scenario 'Should be able to see the choice that the computer player made' do
        expect(page).to have_content('Donnie finga-slinga chose ROCK!')
      end

      scenario 'Should be able to see the winner of the game' do
        expect(page).to have_content('The winner of this round is TEST')
      end

      scenario "Shoud have a button 'Ok'" do
        expect(page).to have_button('Ok')
      end

      scenario 'Should be able to see the score of each player' do
        expect(page).to have_content('TEST - Score - 1') and have_content('Donnie finga-slinga - Score - 0')
      end

    end

    feature 'Choosing rock' do
      scenario 'Should state the game is a draw if neither player wins' do
        choose_rock
        expect(page).to have_content('This round is a draw')
      end

    end

  end

end
