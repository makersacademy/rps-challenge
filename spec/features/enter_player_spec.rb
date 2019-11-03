feature 'entering player name' do
  scenario 'submit player name' do
    name_and_play
    expect(page).to have_content "Andy"
  end
end
