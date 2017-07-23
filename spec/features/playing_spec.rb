feature 'Playing' do
  before do
    sign_in
    click_button "Start game"
  end

  scenario 'view player names' do
    expect(page).to have_content("Sam vs. Computer")
  end
  
end
