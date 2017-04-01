feature 'initial sign in' do
  scenario 'user signs in with their name' do
    sign_in
    expect(page).to have_content 'Steph'
  end

  scenario 'user chooses rock' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Steph: Rock'
  end

  scenario 'user chooses paper' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'Steph: Paper'
  end

  scenario 'user chooses scissors' do
    sign_in
    click_button 'Scissors'
    expect(page).to have_content 'Steph: Scissors'
  end

end
