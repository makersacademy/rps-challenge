feature 'Shows the winner' do
  scenario 'If rock' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Go!'
    click_button "LET ME AT 'EM!"
    click_button 'Rock'
    expect(page).to have_content "You played rock"
  end

  scenario 'If paper' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Go!'
    click_button "LET ME AT 'EM!"
    click_button 'Paper'
    expect(page).to have_content "You played paper"
  end

  scenario 'If scissors' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Go!'
    click_button "LET ME AT 'EM!"
    click_button 'Scissors'
    expect(page).to have_content "You played scissors"
  end

end
