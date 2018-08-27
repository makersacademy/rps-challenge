feature 'Shows the winner' do
  scenario 'If rock' do
    enter_name_and_play
    click_button "LET ME AT 'EM!"
    click_button 'Rock'
    expect(page).to have_content "You played: Rock"
  end

  scenario 'If paper' do
    enter_name_and_play
    click_button "LET ME AT 'EM!"
    click_button 'Paper'
    expect(page).to have_content "You played: Paper"
  end

  scenario 'If scissors' do
    enter_name_and_play
    click_button "LET ME AT 'EM!"
    click_button 'Scissors'
    expect(page).to have_content "You played: Scissors"
  end

end
