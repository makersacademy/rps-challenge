feature "rules page:" do

  before do
    visit('/')
    click_button('rules')
  end

  scenario "user can choose to go back" do
    click_button('back')
  end

  scenario "has original rules pic" do
    expect(page.find('#original')['src']).to have_content 'rps.png'
  end

  scenario "has advanced rules pic" do
    expect(page.find('#advanced')['src']).to have_content 'rps-advanced.png'
  end

end
