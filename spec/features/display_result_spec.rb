feature 'Outcome of the game' do
  scenario 'player 1 winning' do
    visit '/'
    loop do
      fill_in :player_1_name, with: 'Adam F'
      click_button 'Submit'
      fill_in :answer, with: 'Rock'
      click_button 'Submit'
      if page.has_text? "Adam F won!"
        break
      end
      click_button 'Home'
    end
    expect(page).to have_content ("Adam F won!")
  end

  scenario 'computer winning' do
    visit '/'
    loop do
      fill_in :player_1_name, with: 'Adam F'
      click_button 'Submit'
      fill_in :answer, with: 'Rock'
      click_button 'Submit'
      if page.has_text? "Computer won!"
        break
      end
      click_button 'Home'
    end
    expect(page).to have_content ("Computer won!")
  end

  scenario 'drawing' do
    visit '/'
    loop do
      fill_in :player_1_name, with: 'Adam F'
      click_button 'Submit'
      fill_in :answer, with: 'Rock'
      click_button 'Submit'
      if page.has_text? "It was a draw!"
        break
      end
      click_button 'Home'
    end
    expect(page).to have_content ("It was a draw!")
  end
end
