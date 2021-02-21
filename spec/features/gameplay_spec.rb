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

  scenario 'Computer Chooses Scissors' do
    srand(4)
    click_button('Rock')
    expect(page).to have_content "Computer chose: Scissors"
  end
end

feature 'Game results' do
  before do
    sign_in_and_play
    srand(4)
  end

  scenario 'Player wins' do
    click_button('Rock')
    expect(page).to have_content "You won!"
  end

  scenario 'Player draws' do
    click_button('Scissors')
    expect(page).to have_content "You both drew the same hand!"
  end

  scenario 'Player loses' do
    click_button('Paper')
    expect(page).to have_content "You lost! :("
  end
end
