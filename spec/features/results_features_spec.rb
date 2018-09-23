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
end

feature 'displays opponent\'s choice' do
  scenario 'show\'s opponent\'s choice' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    within('form') do
      choose('Rock')
      click_button 'Submit'
    end
    expect(page).to have_content("Scissors")
  end

  scenario 'show\'s opponent\'s choice' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    within('form') do
      choose('Rock')
      click_button 'Submit'
    end
    expect(page).to have_content("Rock")
  end
end

feature 'declare\'s result' do
  scenario "Page tells the player they've won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    within('form') do
      choose('Rock')
      click_button 'Submit'
    end
    expect(page).to have_content("Congratulations, you've won!")
  end

  scenario "Page tells the player they've lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    within('form') do
      choose('Scissors')
      click_button 'Submit'
    end
    expect(page).to have_content("You lose!")
  end

  scenario "Page tells the player it's a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    within('form') do
      choose('Rock')
      click_button 'Submit'
    end
    expect(page).to have_content("It's a draw")
  end
end
