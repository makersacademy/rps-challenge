feature 'register' do
  scenario 'player can enter name' do
    visit('/')
    expect(page).to have_content 'Ready to try your luck?'
  end

  scenario 'player can enter name' do
    visit('/')
    expect(page).to have_css("input")
  end

  scenario 'name is shown at start of game' do
    sign_in_and_play
    expect(page).to have_content "Yoda, it's your turn!"
  end

  scenario 'have a choice to enter another name or pick computer' do
    visit('/')
    expect(page.has_field?("opponent")).to be_truthy
  end

  scenario 'can enter a second name' do
    visit('/')
    choose "user"
    expect(page).to have_css "#second_name", :visible => false
  end
end
