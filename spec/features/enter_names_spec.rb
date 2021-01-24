# frozen_string_literal: true

feature 'Entering players' do
  scenario 'accepts one name for normal play' do
    play_normal
    play_solo
    expect(page).to have_content('normal_solo')
  end

  scenario 'accepts one name for expanded play' do
    play_expanded
    play_solo
    expect(page).to have_content('expanded_solo')
  end

  scenario 'accepts two names for normal play' do
    play_normal
    play_duo
    expect(page).to have_content('normal_duo')
  end

  scenario 'accepts two names for expanded play' do
    play_expanded
    play_duo
    expect(page).to have_content('expanded_duo')
  end
end
