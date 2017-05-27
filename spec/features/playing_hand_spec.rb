feature 'playing hand' do
  scenario 'playing rock vs the computer' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'The Obsidian Man plays: Rock'
  end

  scenario 'playing scissors vs the computer' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'The Obsidian Man plays: Scissors'
  end

  scenario 'playing Paper vs the computer' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'The Obsidian Man plays: Paper'
  end

end

