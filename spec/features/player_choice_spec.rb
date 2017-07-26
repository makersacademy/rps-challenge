feature 'player chooses rock, paper or scissors' do
  scenario 'player chooses rock' do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "You chose rock"
  end
end
