feature 'testing player can pick Rock, Paper or Scissors' do
  scenario 'player can see Rock' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Rock']")
  end
  scenario 'player can see Paper' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Paper']")
  end
  scenario 'player can see Scissors' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Scissors']")
  end

  scenario 'player chooses Rock, sees confirmation' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end
  scenario 'player chooses Paper, sees confirmation' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Paper'
  end
  scenario 'player chooses Scissors, sees confirmation' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Scissors'
  end
end
