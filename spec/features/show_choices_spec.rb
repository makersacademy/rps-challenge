feature 'Choose a play' do
  scenario 'player is asked to choose between rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content "Make your choice:"
  end
end
