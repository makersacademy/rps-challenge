feature 'Home Page' do
  scenario 'greeting the user' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors Game'
  end

  scenario 'user enters name' do
    enter_name_and_play
    expect(page).to have_content 'Deanna'
  end
end
