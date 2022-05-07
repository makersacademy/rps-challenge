require '/Users/jimmylyons/Documents/Programming/Makers/Projects/week3/rps-challenge/app.rb'

feature 'Testing infrastructure' do
  scenario "Prints 'hello world' to web page" do
    visit '/'
    expect(page).to have_content 'Hello World'
  end
end
