feature 'RPS One Player' do

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    one_player
  end

  scenario 'User wins' do
    click_button('Rock')
    expect(page).to have_content("Symion won!\nSymion: Rock | Computer: Scissors")
  end

  scenario 'User loses' do
    click_button('Paper')
    expect(page).to have_content("Computer won!\nSymion: Paper | Computer: Scissors")
  end

  scenario 'User draws' do
    click_button('Scissors')
    expect(page).to have_content("It's a draw!\nSymion: Scissors | Computer: Scissors")
  end

end
