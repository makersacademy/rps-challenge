feature 'Testing home page' do
  scenario 'display player name after submission' do
    sign_in_and_play
    expect(page).to have_content 'Jo'
  end

end
