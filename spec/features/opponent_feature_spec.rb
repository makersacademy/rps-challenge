require './app.rb'

feature 'Opponent randomly selects a shape' do
  let (:opponent) { double (:computer) }
  scenario 'Opponent chooses rock' do
     allow(Opponent).to receive(:randomise).and_return(:rock)
     visit '/'
     fill_in 'name', with: 'Ben'
     click_button 'Submit'
     click_button 'Rock'
     expect(page).to have_content "The other player chose Rock!"
   end
 end
