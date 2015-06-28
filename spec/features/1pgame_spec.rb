require 'capybara/rspec'

feature 'Game' do

  context 'Setting up game' do

    scenario 'greets the user' do
      visit '/'
      expect(page).to have_content "Hello, please enter your name to start:"
    end

    scenario 'allows user to enter name' do
      visit '/'
      expect(page).to have_css("input")
    end

    scenario 'allows user to enter name' do
      visit '/'
      expect(page).to have_button("Submit")
    end

  end

  context 'Playing game' do

    before(:each) do
      visit '/welcome'
      fill_in 'name', with: 'Salman'
      click_button 'Submit'
    end

    scenario 'welcomes user and presents with weapon options' do
      expect(page).to have_content("Welcome, Salman!")
      expect(page).to have_content("Please select your weapon")
      expect(page).to have_select 'weapon', with_options: ['Rock','Paper','Scissors']
      expect(page).to have_button("Play!")
    end

    scenario 'runs game' do
      allow($game.computer).to receive(:random_weapon).and_return(:scissors)
      select 'Rock', :from => 'weapon'
      click_button 'Play!'
      expect(page).to have_content("You win!")
    end

  end

end
