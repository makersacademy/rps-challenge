feature 'Game screen' do
  scenario 'there is an option for rock' do
    ready_to_play
    expect(page).to have_button 'Rock'
  end
  scenario 'there is an option for paper' do
    ready_to_play
    expect(page).to have_button 'Paper'
  end
  scenario 'there is an option for scissors' do
    ready_to_play
    expect(page).to have_button 'Scissors'
  end
end