# spec/features/home_page_spec.rb


feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Fancy a game of Rock, Paper, Scissors? Please input your name:'
  end
end
