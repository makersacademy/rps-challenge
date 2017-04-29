feature 'Offers choice between one or two-player games' do
  scenario 'lets user select one-player game on the start screen' do
    visit('/')
    choose("mode", option: "single_player")
    click_button('Continue')
    expect(page).to have_content 'Single Player Mode'
  end
end

feature 'Lets players choose their names' do
  scenario 'single player\'s name can be entered in form and posted back to server' do
    visit('/')
    choose("mode", option: "single_player")
    click_button('Continue')
    fill_in('player_1', with: 'Will')
    click_button('Let\'s play!')
    expect(page).to have_content 'Will'
  end
end
