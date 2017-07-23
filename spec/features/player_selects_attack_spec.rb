feature 'FEATURE: player can select an attack' do
  scenario 'selecting an attack' do
    single_sign_in_and_submit
    choose("weapon", option: "paper")
    click_button 'ATTACK ATTACK!!!'
    expect(page).to have_content "Spock fought gloriously with paper!"
  end
end
