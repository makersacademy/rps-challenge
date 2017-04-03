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
  scenario 'has rock button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
  scenario 'has paper button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Paper')
  end
  scenario 'has scissors button' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
  scenario 'chose rock' do
    sign_in_and_play
    click_button 'Rock'
  end
  scenario 'chose paper' do
    sign_in_and_play
    click_button 'Paper'
  end
  scenario 'chose rock' do
    sign_in_and_play
    click_button 'Scissors'
  end
end

feature 'Displays human and computer choice' do
  scenario 'Human choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "You picked: Rock"
  end
  scenario 'Computer choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "The computer picked: "
  end
end
