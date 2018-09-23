require './app/rps_app'

describe 'Features' do

  feature 'Welcoming player to page' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page.status_code).to eq(200)
      expect(page).to have_content 'Welcome to Rock, Paper, Scissors, Lizard, Spock!'
    end
  end

  feature 'Choose opponent' do
    scenario 'Player chooses between human or computer opponent' do
      visit('/')
      expect(page.status_code).to eq(200)
      expect(page).to have_content 'Who would you like to play with?'
    end
  end

  context 'Computer opponent' do

    feature 'Player gets a human or computer opponent' do
      scenario 'Player has chosen to play with a computer opponent' do
        visit('/')
        click_button 'Computer opponent'
        expect(page.status_code).to eq(200)
        expect(page).to have_content 'You will play against the computer!'
      end
    end

    feature 'Enter name' do
      scenario 'Player submits their name' do
        sign_in_and_choose_computer
        expect(page.status_code).to eq(200)
        expect(page).to have_content 'Choose your weapon, Freya!'
      end
    end

    feature 'Get a choice of attacks' do
      scenario 'Player can chose between rock, paper or scissors' do
        sign_in_and_choose_computer
        expect(page.status_code).to eq(200)
        ['Rock', 'Paper', 'Scissors'].each do |weapon|
          expect(page).to have_selector("input[type=submit][value='#{weapon}']")
        end
      end
    end

    feature 'Choose an attack' do
      scenario "Player selects 'Rock'" do
        sign_in_and_choose_computer
        click_button('Rock')
        expect(page.status_code).to eq(200)
        expect(page).to have_content("Freya has chosen 'Rock'")
      end
    end

    # test for specific content? regex?
    feature 'Computer chooses an attack' do
      scenario 'Computer selects Scissors' do
        sign_in_and_choose_computer
        click_button('Rock')
        expect(page.status_code).to eq(200)
        expect(page).to have_content("Computer - Hal has chosen")
      end
    end

    feature 'A winner will be declared' do
      scenario "When I submit 'Rock' I am told if I have won" do
        allow_any_instance_of(Weapons).to receive(:random_select).and_return(:scissors)
        sign_in_and_choose_computer
        click_button 'Rock'
        expect(page.status_code).to eq(200)
        expect(page).to have_content "Freya is the winner"
      end
    end

  end

  context 'Human opponent' do

    feature 'Player gets a human or computer opponent' do
      scenario 'Player has chosen to play with a computer opponent' do
        visit('/')
        click_button 'Human opponent'
        expect(page.status_code).to eq(200)
        expect(page).to have_content 'You will play against each other!'
      end
    end

    feature 'Enter names' do
      scenario 'Player 1 submits their name' do
        sign_in_and_choose_human
        expect(page.status_code).to eq(200)
        expect(page).to have_content 'Choose your weapon, Freya!'
      end
      scenario 'Player 2 submits their name' do
        sign_in_and_choose_human
        click_button('Spock')
        expect(page.status_code).to eq(200)
        expect(page).to have_content 'Choose your weapon, Ayerf!'
      end
    end

    feature 'Choose an attack' do
      scenario "Player 2 selects 'Rock'" do
        sign_in_and_choose_human
        click_button('Spock')
        click_button('Rock')
        expect(page.status_code).to eq(200)
        expect(page).to have_content("Freya has chosen 'Spock'")
        expect(page).to have_content("Ayerf has chosen 'Rock'")
      end
    end

    feature 'A winner will be declared' do
      scenario "After player 2 has made a choice we are told who has won" do
        sign_in_and_choose_human
        click_button('Spock')
        click_button('Rock')
        expect(page.status_code).to eq(200)
        expect(page).to have_content "Freya is the winner"
      end
    end

  end

end
