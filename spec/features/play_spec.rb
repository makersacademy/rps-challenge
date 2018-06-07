feature 'testing player can pick Rock, Paper or Scissors' do
  scenario 'player can see Rock' do
    sign_in_and_play_computer
    expect(page).to have_selector("input[type=submit][value='Rock']")
  end
  scenario 'player can see Paper' do
    sign_in_and_play_computer
    expect(page).to have_selector("input[type=submit][value='Paper']")
  end
  scenario 'player can see Scissors' do
    sign_in_and_play_computer
    expect(page).to have_selector("input[type=submit][value='Scissors']")
  end

  scenario 'player chooses Rock, sees confirmation' do
    sign_in_and_play_computer
    click_button 'Rock'
    expect(page).to have_content 'Charlene chose Rock'
  end
  scenario 'player chooses Paper, sees confirmation' do
    sign_in_and_play_computer
    click_button 'Paper'
    expect(page).to have_content 'Charlene chose Paper'
  end
  scenario 'player chooses Scissors, sees confirmation' do
    sign_in_and_play_computer
    click_button 'Scissors'
    expect(page).to have_content 'Charlene chose Scissors'
  end
end
