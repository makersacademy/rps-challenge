feature 'Enter player name' do
  scenario 'submits player name' do
    sign_in_and_play()

    expect(page).to have_content 'Gon vs. CPU'
  end
end
