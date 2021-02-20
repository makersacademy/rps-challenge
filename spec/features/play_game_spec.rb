feature 'Gameplay' do
  before do
    sign_in_and_play
  end

  scenario 'Player chooses Rock' do
    click_button('Rock')
    expect(page).to have_content "You chose: Rock"
  end

  scenario 'Player chooses Paper' do
    click_button('Paper')
    expect(page).to have_content "You chose: Paper"
  end

  scenario 'Player chooses Scissors' do
    click_button('Scissors')
    expect(page).to have_content "You chose: Scissors"
  end

end
