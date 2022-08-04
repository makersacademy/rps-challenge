require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RockPaperScissors

feature 'allows player to play a round of RockPaperScissors' do
  scenario 'the player can choose from three buttons' do
    sign_in
    expect(page).to have_xpath('/html/body/form[1]/input[1]')
    expect(page).to have_xpath('/html/body/form[2]/input[1]')
    expect(page).to have_xpath('/html/body/div/form/input[1]')
  end

  scenario 'a player can return to the play screen to have another go' do
    sign_in
    click_on(id='rock')
    expect(page).to have_button('Have another go?')
  end


  scenario 'clicking a button takes the player to the winner page' do
    sign_in
    click_on(id='rock')
    expect(current_path).to eq '/battle'
  end

  scenario 'rock beats scissors' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:scissors)
    sign_in
    click_on(id='rock')
    expect(page).to have_content "You chose wisely."
  end

  scenario 'paper beats rock' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    sign_in
    click_on(id='rock')
    expect(page).to have_content "You did not choose wisely."
  end

  scenario 'scissors beats paper' do
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:paper)
    sign_in
    click_on(id='scissors')
    expect(page).to have_content "You chose wisely."
  end
end
