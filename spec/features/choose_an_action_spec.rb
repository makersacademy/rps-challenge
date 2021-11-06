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
    srand(4)
    sign_in_and_play
    make_a_choice
    expect(page).to have_content "The Bot chose scissors"
  end

  scenario 'it shows Player winning' do
    srand(4)
    sign_in_and_play
    make_a_choice
    expect(page).to have_content "Rock smashes scissors, you win!"
  end

  scenario 'it shows Player drawing' do
    srand(2)
    sign_in_and_play
    make_a_choice
    expect(page).to have_content "You tied!"
  end

  scenario 'it shows Player losing' do
    srand(1)
    sign_in_and_play
    make_a_choice
    expect(page).to have_content "Paper covers rock, you lose!"
  end
end
