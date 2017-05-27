feature 'main' do
  scenario 'starts up login web page' do
    visit ('/')
    expect(page).to have_content('It\'s Rock Paper Scissors!')
  end
end

