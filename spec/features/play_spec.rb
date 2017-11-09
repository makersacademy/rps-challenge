feature 'Play Area' do

  scenario 'Shows player name' do
    sign_in_and_play
    expect(page).to have_content @name
  end

end
