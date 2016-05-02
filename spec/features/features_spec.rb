feature 'Accepts player name' do

  scenario 'Enter name' do
    enter_player_name
    expect(page).to have_content('Macey Forever')
  end

end

feature 'Accepts a player choice' do

  scenario 'Has choices' do
    enter_player_name
    expect(page).to have_content('Rock')
    expect(page).to have_content('Scissors')
    expect(page).to have_content('Paper')
  end

  scenario 'Enters rock' do
    enter_player_name
    page.choose('rock')
    click_button("GODSPEED")
    expect(page).to have_content('rock')
  end

  scenario 'Enters paper' do
    enter_player_name
    page.choose('paper')
    click_button("GODSPEED")
    expect(page).to have_content('paper')
  end

  scenario 'Enters scissors' do
    enter_player_name
    click_button('scissors')
    click_button("GODSPEED")
    expect(page).to have_content('scissors')
  end

end
