feature 'Homepage greeting' do
  scenario 'can run app and display game name' do
    visit('/')
    expect(page).to have_content "Rock, Paper, Scissors"
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Sonny vs. Computer'
  end
end

feature 'RPS choice option' do
  scenario 'prompts a choice' do
    sign_in_and_play
    expect(page).to have_content "What will you pick?"
  end
  scenario 'allows user to pick rock' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
  scenario 'allows user to pick paper' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Paper')
  end
  scenario 'allows user to pick scissors' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end

feature 'Displays human and computer choice' do
  scenario 'Human choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "You picked: "
  end
  scenario 'Computer choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "The computer picked: "
  end
end
