feature '/' do 
  scenario 'loads home page' do 
    visit '/'
    expect(page)
    .to have_content 'Welcome to Rock, Paper, Scissors! Enter your name:'
  end
end
