feature 'Computer has random item' do
  scenario 'The screen displays random tool for computer' do
    visit('/choose_tool')
    click_button 'Submit'
    values = ['Rock', 'Paper','Scissors']
    text = find("div#computer").text
    expect(values).to include text
  end
end
