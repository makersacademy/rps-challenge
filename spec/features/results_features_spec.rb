feature 'display player choice' do
  scenario 'show\'s player\'s choice' do
    sign_in_and_play
    within('form') do
      choose('Rock')
      click_button 'Submit'
    end
    expect(page).to have_content("Rock")
  end

  scenario 'show\'s player\'s choice' do
    sign_in_and_play
    within('form') do
      choose('Paper')
      click_button 'Submit'
    end
    expect(page).to have_content("Paper")
  end

  scenario 'show\'s player\'s choice' do
    sign_in_and_play
    within('form') do
      choose('Scissors')
      click_button 'Submit'
    end
    expect(page).to have_content("Scissors")
  end
end

feature 'displays opponent\'s choice' do
  scenario 'show\'s opponent\'s choice' do
    sign_in_and_play
    within('form') do
      choose('Rock')
      click_button 'Submit'
    end
    expect(page).to have_content("Opponent's Choice")
  end
end
