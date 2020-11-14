feature 'RPS Game' do

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return("Scissors")
    enter_name
  end

  scenario 'User can select their turn' do
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario 'User wins' do
    click_button('Rock')
    expect(page).to have_content("You won!\nSymion: Rock | Computer: Scissors")
  end

  scenario 'User loses' do
    click_button('Paper')
    expect(page).to have_content("You lost!\nSymion: Paper | Computer: Scissors")
  end

  scenario 'User draws' do
    click_button('Scissors')
    expect(page).to have_content("It's a draw!\nSymion: Scissors | Computer: Scissors")
  end

end
