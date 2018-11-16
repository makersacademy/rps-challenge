
feature 'Testing infastructure' do

  scenario 'can allow a player to enter their name' do
    sign_in_and_play
    expect(page).to have_content 'Steph'
  end
end
