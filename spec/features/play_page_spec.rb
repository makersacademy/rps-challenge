feature 'display name' do
  scenario 'shows player name' do
    log_in
    expect(page).to have_content 'Umberto'
  end
end

feature 'shows options' do
  scenario 'shows player options' do
    log_in
    expect(page).to have_content 'Rock Paper Scissor'
  end
end
