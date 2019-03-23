require_relative '../../app.rb'

# the marketeer will be presented the choices (rock, paper and scissors)

feature 'Presented with choices' do
  scenario 'see Rock Paper Scissors buttons' do
    fill_in_name
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end

feature 'Make choice' do
  scenario 'player chooses rock' do
    fill_in_name
    click_button 'Rock'
    expect(page).to have_content "You chose rock"
  end

  scenario 'player chooses paper' do
    fill_in_name
    click_button 'Paper'
    expect(page).to have_content "You chose paper"
  end

  scenario 'player chooses scissors' do
    fill_in_name
    click_button 'Scissors'
    expect(page).to have_content "You chose scissors"
  end
end

feature 'Computer returns random weapon' do
  scenario 'computer returns rock' do
    fill_in_name
    srand(2)
    click_button 'Paper'
    expect(page).to have_content('Computer chose rock')
  end

  scenario 'computer returns paper' do
    fill_in_name
    srand(1)
    click_button 'Paper'
    expect(page).to have_content('Computer chose paper')
  end

  scenario 'computer returns scissors' do
    fill_in_name
    srand(4)
    click_button 'Paper'
    expect(page).to have_content('Computer chose scissors')
  end
end
