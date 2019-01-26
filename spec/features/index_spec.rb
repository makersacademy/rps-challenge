require './app'

RSpec.describe Rps do

  feature 'Testing UI registration form' do
    scenario 'User can enter a name' do
      visit('/')
      name = 'name'
      fill_in 'your_name', with: name
      click_button 'Register'
      expect(page).to have_content(name)
    end
  end

  feature 'Testing selector' do
    scenario 'User can select rock paper or scissors' do
      visit('/')
      name = 'name'
      fill_in 'your_name', with: name
      click_button 'Register'
      select('Rock', from: 'rock_paper_scissors')
      click_button 'Play'
      expect(page).to have_content('Rock')
    end
  end

  feature 'Testing name appearance on the result page' do
    scenario 'User sees his name on the result page' do
      visit('/')
      name = 'name'
      fill_in 'your_name', with: name
      click_button 'Register'
      select('Rock', from: 'rock_paper_scissors')
      click_button 'Play'
      expect(page).to have_content(name)
    end
  end

  feature 'Testing randomly generated computer response' do
    scenario 'User sees what computer has selected' do
      visit('/')
      name = 'name'
      fill_in 'your_name', with: name
      click_button 'Register'
      select('Rock', from: 'rock_paper_scissors')
      click_button 'Play'
      expect(page).to have_content(@computer_selected)
    end
  end

  feature 'Testing win, draw or loose' do
    scenario 'User sees a draw' do
      visit('/')
      name = 'name'
      fill_in 'your_name', with: name
      click_button 'Register'
      select('Rock', from: 'rock_paper_scissors')
      allow_any_instance_of(Engine).to receive(:random).and_return("Rock")
      click_button 'Play'
      expect(page).to have_content("IT'S A DRAW!")
    end
    scenario 'User sees a win' do
      visit('/')
      name = 'name'
      fill_in 'your_name', with: name
      click_button 'Register'
      select('Rock', from: 'rock_paper_scissors')
      allow_any_instance_of(Engine).to receive(:random).and_return("Scissors")
      click_button 'Play'
      expect(page).to have_content("YOU WIN!")
    end
    scenario 'User sees a loose' do
      visit('/')
      name = 'name'
      fill_in 'your_name', with: name
      click_button 'Register'
      select('Rock', from: 'rock_paper_scissors')
      allow_any_instance_of(Engine).to receive(:random).and_return("Paper")
      click_button 'Play'
      expect(page).to have_content("YOU LOOSE")
    end
  end
end
