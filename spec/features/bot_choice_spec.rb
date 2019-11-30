feature 'bot choice' do
  scenario 'bot chooses scissors' do
    srand(6)
    sign_in
    click_on('Rock')
    expect(page).to have_content('Botman plays: Scissors')
  end
end
