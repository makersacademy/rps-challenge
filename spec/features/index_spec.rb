feature 'Player form' do
  scenario ' expects player to fill in their names and submit' do
    sign_in_and_play
    expect(page).to have_content "Dan vs computer"
  end
end