feature 'Result page' do
  scenario 'When player submits rock, rock shows on page' do
    submit_name
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end

  scenario 'When player submits Paper, Paper shows on page' do
    submit_name
    click_button 'Paper'
    expect(page).to have_content 'Paper'
  end

  scenario 'When player submits Scissors, Scissors shows on page' do
    submit_name
    click_button 'Scissors'
    expect(page).to have_content 'Scissors'
  end

  scenario 'Result page shows computers move' do
    submit_name
    click_button 'Scissors'
    expect(page).to have_content "Computer's move:"
  end

end
