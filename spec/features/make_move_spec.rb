feature 'Make move' do
  scenario 'can make a move' do
    enter_names_and_submit
    within('#choiceform') do
      find('#rock').click
      find_button('submit').click
    end
    expect(page).to have_content 'John Doe picked Rock'
  end
end
