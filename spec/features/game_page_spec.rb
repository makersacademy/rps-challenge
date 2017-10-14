feature 'Game screen' do
  scenario 'there is an option for rock' do
    ready_to_play
    expect(page).to have_button 'Rock'
  end
end