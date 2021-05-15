feature 'Enter name' do
  scenario 'Shows name in play screen' do
    sign_in_and_play
    expect(page).to have_content 'Charlie vs Computer'
  end
end