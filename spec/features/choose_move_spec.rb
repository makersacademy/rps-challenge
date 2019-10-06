feature 'player picks their move' do
  scenario 'Player picks rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Josh chose: Rock'
  end
  scenario 'Player picks Scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Josh chose: Scissors'
  end
  scenario 'Player picks Paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Josh chose: Paper'
  end
end
