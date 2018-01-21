feature 'Play page' do
  scenario 'It has three options' do
    sign_in_and_play
    expect(page).to have_content('Rock', 'Paper', 'Scissors')
  end
end
