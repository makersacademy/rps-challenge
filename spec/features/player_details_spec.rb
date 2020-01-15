feature 'Player details' do
  scenario 'Player can enter their name, submit form and see it displayed' do
    sign_in_and_play
    expect(page).to have_content 'Fergus'
  end
end
