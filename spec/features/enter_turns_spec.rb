feature 'player can enter turns' do
  before do
    enter_name_and_play
  end

  scenario 'player can select an option and submit it' do
    choose(option: 'rock')
    click_button('Submit')
    expect(page).to have_content('You chose: rock')
  end

  scenario 'game choose rock' do
    choose(option: 'rock')
    click_button('Submit')
    expect(page).to have_content('CPU chose: rock')
  end
end
