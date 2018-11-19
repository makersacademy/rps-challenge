feature 'random choice is assinged to the computer' do
  scenario "computer picks random" do
    fill_in_name
    click_button('Paper')
    expect(page).to have_content 'Computer: Rock'
   end
 end
