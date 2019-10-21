feature 'Choice page' do
    scenario 'checking that choice page has the avaliable buttons' do
      visit '/play'
      expect(page).to have_content 'Enter your choice :()'
    end

    scenario 'checking if buttons are displayed' do
        visit '/play'
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end
  end