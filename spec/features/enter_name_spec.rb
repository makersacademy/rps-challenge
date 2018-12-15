feature 'Enter player name' do
  scenario 'submits player name' do
    sign_in_and_play()

    expect(page).to have_content ('Boulder vs. CPU')
  end
end
