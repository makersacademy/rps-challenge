feature 'entering name' do

  scenario 'can submit name of player' do
    sign_in_and_play
    expect(page).to have_content "Sophia"
  end

end
