require_relative 'web_helpers'

feature 'Play RPS' do
  scenario "Player picked rock" do
    register_and_play
    click_button 'ROCK'
    expect(page).to have_content "Raymond chose ROCK"
  end

  scenario "Computer picked a weapon" do
    register_and_play
    click_button 'ROCK'
    expect(page).to have_content "Computer chose"
  end
end
