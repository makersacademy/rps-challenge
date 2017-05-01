require './app.rb'

feature 'Opponent randomly selects a shape' do
  let (:opponent) { double (:computer) }
  scenario 'Opponent chooses rock' do
     allow_any_instance_of(Opponent).to receive(:randomise).and_return(:rock)
     visit '/'
     fill_in 'name', with: 'Ben'
     click_button 'Submit'
     click_button 'Rock'
     expect(page).to have_content "The other player chose Rock!"
   end

   scenario 'Opponent chooses paper' do
      allow_any_instance_of(Opponent).to receive(:randomise).and_return(:paper)
      visit '/'
      fill_in 'name', with: 'Ben'
      click_button 'Submit'
      click_button 'Rock'
      expect(page).to have_content "The other player chose Paper!"
    end

    scenario 'Opponent chooses scissors' do
       allow_any_instance_of(Opponent).to receive(:randomise).and_return(:scissors)
       visit '/'
       fill_in 'name', with: 'Ben'
       click_button 'Submit'
       click_button 'Rock'
       expect(page).to have_content "The other player chose Scissors!"
     end

     scenario 'Player wins' do
       allow_any_instance_of(Opponent).to receive(:randomise).and_return(:scissors)
       visit '/'
       fill_in 'name', with: 'Ben'
       click_button 'Submit'
       click_button 'Rock'
       expect(page).to have_content "You win!"
     end
  end
