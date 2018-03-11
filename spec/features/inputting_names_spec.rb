
feature 'Inputting names' do
  scenario 'Insert player1 name and insert player2 name' do
    sign_in_and_play
    expect(page).to have_content('Choose your weapon, George')
  end
end
