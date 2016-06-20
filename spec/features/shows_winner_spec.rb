
feature 'Winner Shown' do
  before :each do
    srand(0)
  end
  scenario 'winner shown when single player selection made' do
    sign_in_and_play
    select "Rock", from: "single_select"
    click_button 'Select'
    expect(page).to have_content "SkyNet wins!!!"
  end
end