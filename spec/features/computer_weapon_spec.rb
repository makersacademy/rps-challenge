feature 'computer weapon' do
  scenario 'a computer can pick a random weapon' do
    sign_in_and_play
    expect(page).to have_content("The computer chose the weapon")
  end
end
