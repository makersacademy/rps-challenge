feature 'choose attack' do
  scenario 'chooses rock' do
    sign_in_with_name
    click_button 'Rock'
    expect(page).to have_content 'Emma chose Rock'
  end
  scenario 'chooses paper' do
    sign_in_with_name
    click_button 'Paper'
    expect(page).to have_content 'Emma chose Paper'
  end
  scenario 'chooses scissors' do
    sign_in_with_name
    click_button 'Scissors'
    expect(page).to have_content 'Emma chose Scissors'
  end
  scenario 'computer also chooses a random attack' do
    sign_in_with_name
    click_button 'Scissors'
    expect(page).to have_content "AI chose"
    expect(page).to have_content(/Rock|Paper|Scissors/)
  end
end
