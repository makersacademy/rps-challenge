require './app'

feature 'Register name before game' do
  scenario 'player enters name and it displays on screen' do
    fill_in_name
    expect(page).to have_content 'Make your selection, Amy'
  end
end
