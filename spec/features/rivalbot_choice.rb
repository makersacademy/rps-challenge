feature 'See rivalbot choice' do
  scenario 'when player chooses rock, paper or scissors, rivalbot chooses too' do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content "Rivalbot chose rock!"
  end
end
