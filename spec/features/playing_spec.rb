require 'capybara/dsl'
require 'web_helpers'

feature 'Starting game' do
  scenario 'player starts playing' do
    sign_in_and_play
    expect(page).to have_content 'Start playing!'
  end
end

feature 'Being able to pick a choice' do
  scenario 'player can make a choice' do
    sign_in_and_play
    expect(page).to have_content 'Pick your choice'
    expect(page).to have_button('Rock')
  end
end

feature 'Making a choice' do
  scenario 'player makes a choice' do
    sign_in_and_play
    click_button 'Rock'
    expect(current_path_info).to be == "/game?choice=rock"
  end

  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "The result is .... You won"
  end

  scenario "When I submit 'Rock' I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "The result is .... You lost"
  end

  scenario "When I submit 'Rock' I am told if I have tied" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "The result is .... You tied"
  end
end