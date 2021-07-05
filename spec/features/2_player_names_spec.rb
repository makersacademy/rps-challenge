feature 'enter name in single player mode' do
  scenario 'submitting name' do
    multiplayer
    expect(page).to have_content 'Narwhal vs. Horse'
  end
end