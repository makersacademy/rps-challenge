feature 'Computer has random item' do
    scenario 'The screen displays random tool for computer' do
    visit('/choose_tool')
    click_button 'Submit'
    expect(page).to have_content @computer_tool
    end
end



