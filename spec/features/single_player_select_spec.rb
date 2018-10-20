feature 'Selects and option' do
  scenario 'Asks player for the move that they want to play' do
    single_sign_in
    expect(page).to have_content "What move would you like to play Caitlin?"
  end

  scenario 'selects rock' do
    single_sign_in
    find_button('rock').click
    expect(page).to have_content "Caitlin's move was rock"
  end

  scenario 'selects paper' do
    single_sign_in
    find_button('paper').click
    expect(page).to have_content "Caitlin's move was paper"
  end

  scenario 'selects scissors' do
    single_sign_in
    find_button('scissors').click
    expect(page).to have_content "Caitlin's move was scissors"
  end
end
