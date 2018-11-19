# As a marketeer
# So that I can make my choices
# I would like to be presented with the choices (rock, paper or scissors)

feature 'Making choices' do
  scenario 'Player to be able to make a choice from a selection' do
    sign_in
    click_button "Paper"
    expect(page).to have_content "Paper"
  end

  scenario 'Player to be able to make a choice from a selection' do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Rock"
  end

  scenario 'Player to be able to make a choice from a selection' do
    sign_in
    click_button "Scissors"
    expect(page).to have_content "Scissors"
  end
end
