# frozen_string_literal: true

feature 'Entering players' do

  scenario 'accepts one name for normal play' do
    play_normal
    play_solo
    expect(page).to have_content(PLAYER_ONE)
  end

  scenario 'accepts one name for expanded play' do
    play_expanded
    play_solo
    expect(page).to have_content(PLAYER_ONE)
  end

  scenario 'accepts two names for normal play' do
    play_normal
    play_duo
    expect(page).to have_content(DUO_PLAYER)
  end

  scenario 'accepts two names for expanded play' do
    play_expanded
    play_duo
    expect(page).to have_content(DUO_PLAYER)
  end
end
