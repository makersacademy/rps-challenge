feature 'FEATURE: name input' do
  scenario 'displays the name of the player' do
    single_sign_in_and_submit
    expect(page).to have_content "Spock"
  end
end
