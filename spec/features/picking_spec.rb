feature 'Shows the winner' do
  scenario 'If rock' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Submit'
    click_button 'I am ready!'
    click_button 'Rock'
    expect(page).to have_content "You played rock"
  end

  scenario 'If paper' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Submit'
    click_button 'I am ready!'
    click_button 'Paper'
    expect(page).to have_content "You played paper"
  end

  scenario 'If scissors' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Submit'
    click_button 'I am ready!'
    click_button 'Scissors'
    expect(page).to have_content "You played scissors"
  end

end
