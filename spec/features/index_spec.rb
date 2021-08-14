feature 'Player form' do
  scenario 'expects player to submit name and then see the contest' do
    sign_in_and_play
    expect(page).to have_content "Dan vs computer"
  end
end

feature 'Move options' do
  scenario 'expects player to see list of options to choose from' do
    sign_in_and_play
    expect(page).to have_content "Choose either rock, paper or scissors!"
  end
end