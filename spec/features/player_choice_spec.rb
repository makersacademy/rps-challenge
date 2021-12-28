feature 'Player selects Rock | Paper | Scissors' do
  scenario 'Player selects Rock' do
    enter_name
    click_button('Rock')
    expect(page).to have_content 'Doby chose Rock'
  end

  scenario 'Player selects Paper' do
    enter_name
    click_button('Paper')
    expect(page).to have_content 'Doby chose Paper'
  end

  scenario 'Player selects Scissors' do
    enter_name
    click_button('Scissors')
    expect(page).to have_content 'Doby chose Scissors'
  end
end
