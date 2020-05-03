feature 'Play page' do
  scenario 'shows the available options' do
    visit '/'
    fill_in :name, with: 'Marius'
    find_button(value: "Register").click

    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'can choose Rock as your weapon' do
    visit '/'
    fill_in :name, with: 'Marius'
    find_button(value: "Register").click
    find_button(value: "Rock").click

    expect(page).to have_content "Marius selected Rock!"
  end

  scenario 'can choose Paper as your weapon' do
    visit '/'
    fill_in :name, with: 'Marius'
    find_button(value: "Register").click
    find_button(value: "Paper").click

    expect(page).to have_content "Marius selected Paper!"
  end

  scenario 'can choose Scissors as your weapon' do
    visit '/'
    fill_in :name, with: 'Marius'
    find_button(value: "Register").click
    find_button(value: "Scissors").click

    expect(page).to have_content "Marius selected Scissors!"
  end

  scenario 'computer_player can choose a random option' do
    allow_any_instance_of(ComputerPlayer).to receive(:weapon) {'Paper'}
    visit '/'
    fill_in :name, with: 'Marius'
    find_button(value: "Register").click
    find_button(value: "Rock").click

    expect(page).to have_content "Computer selected Paper!"
  end
end
