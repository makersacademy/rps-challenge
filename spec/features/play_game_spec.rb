require_relative 'web_helpers'

feature 'Play RPS' do
  scenario "Player picked rock" do
    register_and_play
    click_button 'ROCK'
    expect(page).to have_content "Raymond chose ROCK"
  end

  scenario "Computer picked paper" do
    register_and_play
    click_button 'ROCK'
    expect(page).to have_content "I'm sorry -- you lost"
    expect(page).to_not have_content "You win! Happy day!"
  end
end
