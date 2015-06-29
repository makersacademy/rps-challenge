require 'capybara/rspec'

feature 'Game' do

  context 'Setting up game' do

    scenario 'greets the user' do
      visit '/'
      expect(page).to have_content "Hello, please enter your name and select game type:"
    end

    scenario 'allows user to select game type' do
      visit '/'
      expect(page).to have_css("select")
    end

    scenario 'allows user to proceed to game' do
      visit '/'
      expect(page).to have_button("Start")
    end

  end

  context 'Playing game' do

    before(:each) do
      visit '/'
      fill_in 'name', with: 'Salman'
      select '1 player game', :from => 'gametype'
      click_button 'Start'
    end

    scenario 'welcomes user and presents with weapon options' do
      expect(page).to have_content("Welcome, Salman!")
      expect(page).to have_content("Please select your weapon")
      expect(page).to have_select 'weapon', with_options: ['Rock','Paper','Scissors']
      expect(page).to have_button("Submit")
    end

    scenario 'runs game' do
      allow($game.player_2).to receive(:random_weapon).and_return(:scissors)
      select 'Rock', :from => 'weapon'
      click_button 'Submit'
      expect(page).to have_content("You win!")
    end

  end

end
