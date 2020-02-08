feature 'making moves' do
  scenario 'player chooses move' do
    sign_in_and_play
    choose 'Rock'
    click_on 'Play'

    expect(page).to have_content('Liz played Rock')
  end
end