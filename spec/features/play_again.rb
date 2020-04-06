feature 'click play_again button after round' do 
  scenario 'click play after playing 1 round' do 
      sign_in
      click_button('Scissors')
      click_button('Play again')
      expect(page).to have_button 'Rock'
  end 
end 