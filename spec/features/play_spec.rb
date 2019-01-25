feature 'play RPS' do
  scenario 'player selects rock' do
    # for time being computer selection is fixed at paper
    enter_name_submit
    click_button 'Rock'
    expect(page).to have_content "Loose"
  end

  scenario 'player selects paper' do
    enter_name_submit
    click_button 'Paper'
    expect(page).to have_content "Draw"
  end

  scenario 'player selects Scissors' do
    enter_name_submit
    click_button 'Scissors'
    expect(page).to have_content "Win"
  end
end
