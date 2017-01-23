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

feature "Player 02 can choose weapon via form" do
  scenario 'with dedicated field' do
    register_and_choose_weapon
    expect(page).to have_field('player_02_weapon')
  end

  scenario 'and button' do
    register
    expect(page).to have_button('Choose')
  end

  scenario 'but they will return to the form if weapon is non-RPS' do
    register_and_choose_weapon
    fill_in :player_02_weapon, with: 'pike'
    click_button 'Choose'
    expect(page).to have_button('Choose')
  end
end

feature "Finally, players can" do
  scenario 'see if they won' do
    register_all_choose_weapons_01
    expect(page).to have_content('Stefan, you won!')
    expect(page).to have_content('Stefan chose rock. Yoda chose scissors.')
  end

  scenario 'see if they lost' do
    register_all_choose_weapons_02
    expect(page).to have_content('Sorry, Stefan, you lost!')
    expect(page).to have_content('Stefan chose rock. Yoda chose paper.')
  end

  scenario 'see if there was a draw' do
    register_all_choose_weapons_03
    expect(page).to have_content("It's a draw.")
    expect(page).to have_content('Stefan chose rock. Yoda chose rock.')
  end

  scenario 'click Play to play again' do
    register_all_choose_weapons_01
    expect(page).to have_button('Play')
  end
end

feature "Players can play again and return to the page where" do
  scenario 'Player 01 has weapon field' do
    replay
    expect(page).to have_field('player_01_weapon')
  end

  scenario 'and Choose button' do
    replay
    expect(page).to have_button('Choose')
  end
end
