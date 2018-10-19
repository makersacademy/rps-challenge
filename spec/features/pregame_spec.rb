
feature 'User asked which game type they would like to play' do
  scenario 'Entering site' do
    visit('/')
    expect(page).to have_content 'Which game type would you like to play?'
    expect(page).to have_selector(:link_or_button, 'RPS')
    expect(page).to have_selector(:link_or_button, 'RPSLS')
  end
end

feature 'User asked how many players' do
  scenario 'After selecting RPS game type' do
    visit('/')
    click_link 'RPS'
    expect(page).to have_content 'How many players?'
    expect(page).to have_selector(:link_or_button, '1 Player')
    expect(page).to have_selector(:link_or_button, '2 Player')
  end

  scenario 'After selecting RPSLS game type' do
    visit('/')
    click_link 'RPSLS'
    expect(page).to have_content 'How many players?'
    expect(page).to have_selector(:link_or_button, '1 Player')
    expect(page).to have_selector(:link_or_button, '2 Player')
  end
end
