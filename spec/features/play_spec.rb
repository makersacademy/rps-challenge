feature 'play RPS' do
  scenario 'player selects rock' do
    # for time being computer selection is fixed at paper
    enter_name_submit
    click_button 'Rock'
    expect(page).to have_content "Unlucky Adam, you lost!"
  end

  scenario 'player selects paper' do
    enter_name_submit
    click_button 'Paper'
    expect(page).to have_content "It's a draw"
  end

  scenario 'player selects Scissors' do
    enter_name_submit
    click_button 'Scissors'
    expect(page).to have_content "Well done Adam you win!"
  end
end
