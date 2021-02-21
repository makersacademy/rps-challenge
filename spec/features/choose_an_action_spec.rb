require './app.rb'

feature 'getting prompted to chose action' do
  scenario 'it asks for player move' do
    sign_in_and_play
    expect(page).to have_content "Select your move"
  end
end

feature 'after submiting you choice' do
  scenario 'it shows the player move' do
    sign_in_and_play
    make_a_choice
    expect(page).to have_content "You chose rock"
  end

  scenario 'it shows the bot move' do
    sign_in_and_play
    make_a_choice
    expect(page).to have_content "The Bot chose rock"
  end
end
