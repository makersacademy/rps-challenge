feature 'result of game' do
  scenario 'user makes weapon choice' do
    sign_in_and_select_rock
    expect(page).to have_content "You chose rock!"
  end

  scenario 'computer makes a weapon choice' do
    sign_in_and_select_rock
    expect(page).to have_content 'The computer chose paper'
  end
end
