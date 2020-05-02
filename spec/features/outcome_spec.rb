feature 'Outcome of game' do
  scenario 'Shows a button called Rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'You chose: Rock'
  end
end
