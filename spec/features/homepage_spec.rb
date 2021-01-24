# frozen_string_literal: true

feature 'Homepage' do
  scenario 'shows instructions' do
    visit('/')
    expect(page).to have_content("Type in the players' names!")
  end

  scenario 'displays play button' do
    visit('/')
    expect(page).to have_button('Play')
  end
end
