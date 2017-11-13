feature 'Player chooses move' do
  scenario 'Paper button is clicked' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'Paper'
  end

  scenario 'Scissors button is clicked' do
    sign_in
    click_button 'Scissors'
    expect(page).to have_content 'Scissors'
  end

  scenario 'Rock button is clicked' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end
end
