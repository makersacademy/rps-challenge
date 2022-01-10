feature 'player selects move and the results are shown' do
  scenario 'player chooses and sees the winner on the results page' do
    visit('/')
    fill_in 'name', with: 'Pingu'
    click_on 'Play'
    click_on 'Rock'
    expect(page).to have_content 'Result:'
  end
end