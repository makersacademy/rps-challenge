feature 'playing hand' do
  scenario 'playing rock vs the computer' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'The Obsidian Man: Rock'
  end

  scenario 'playing scissors vs the computer' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'The Obsidian Man: Scissors'
  end

  scenario 'playing Paper vs the computer' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'The Obsidian Man: Paper'
  end

end

