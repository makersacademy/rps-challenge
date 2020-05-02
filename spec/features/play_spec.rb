feature 'Play page' do
  scenario 'shows the available options' do
    visit '/play'

    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'can choose Rock as your weapon' do
    visit '/play'
    find_button(value: "Rock").click

    expect(page).to have_content "You have selected Rock!"
  end

  scenario 'can choose Paper as your weapon' do
    visit '/play'
    find_button(value: "Paper").click

    expect(page).to have_content "You have selected Paper!"
  end

  scenario 'can choose Scissors as your weapon' do
    visit '/play'
    find_button(value: "Scissors").click

    expect(page).to have_content "You have selected Scissors!"
  end
end
