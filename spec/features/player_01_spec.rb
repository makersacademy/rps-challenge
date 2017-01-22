require 'spec_helper'

feature "Player 01 can choose weapon via form" do
  scenario 'with dedicated field' do
    register
    expect(page).to have_field('player_01_weapon')
  end

  scenario 'and button' do
    register
    expect(page).to have_button('Choose')
  end

  scenario 'but they will return to the form if weapon is non-RPS' do
    register
    fill_in :player_01_weapon, with: 'sword'
    click_button 'Choose'
    expect(page).to have_button('Choose')
  end
end

feature "Then Player 01 can" do
  scenario 'get a confirmation Computer has also chosen its weapon' do
    register_and_choose_weapon
    expect(page).to have_content('Computer has chosen their weapon, too!')
  end

  scenario 'and click OK to get to the result page' do
    register_and_choose_weapon
    expect(page).to have_button('OK')
  end
end

feature "Finally, Player 01 can" do
  scenario 'see if they won' do
    srand 123
    register_weapon_result
    expect(page).to have_content('Stefan, you won!')
    expect(page).to have_content('Stefan chose rock. Computer chose scissors.')
  end

  scenario 'see if they lost' do
    srand 125
    register_weapon_result
    expect(page).to have_content('Sorry, Stefan, you lost!')
    expect(page).to have_content('Stefan chose rock. Computer chose paper.')
  end

  scenario 'see if there was a draw' do
    srand 129
    register_weapon_result
    expect(page).to have_content("It's a draw.")
    expect(page).to have_content('Stefan chose rock. Computer chose rock.')
  end

  scenario 'click Play to play again' do
    register_weapon_result
    expect(page).to have_button('Play')
  end
end

feature "Player 01 can play again and returns to the page where" do
  scenario 'it has weapon field' do
    replay
    expect(page).to have_field('player_01_weapon')
  end

  scenario 'and Choose button' do
    replay
    expect(page).to have_button('Choose')
  end
end
