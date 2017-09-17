feature 'computer weapon' do
  scenario 'a computer can pick a random weapon' do
    choose_rock
    expect(page).to have_content("The computer chose the weapon")
  end
end
