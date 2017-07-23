feature 'FEATURE: player can select an attack' do
  scenario 'selecting an attack' do
    single_sign_in_and_submit
    choose("weapon", option: "paper")
    click_button 'Fight!'
    expect(page).to have_content "Spock attacked with paper!"
  end
end
