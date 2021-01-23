feature 'playing a game' do
  scenario 'see shape options' do
    sign_in_and_submit
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
