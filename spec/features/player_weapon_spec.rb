feature 'weapon' do
  scenario 'player can choose their weapon' do
    sign_in_and_play
    expect(page).to have_content "Benjamin, choose your weapon:"
    find("option[value='Rock']").click
  end
end
