feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content "Good day to you, Marketeer - lookin' good!"
  end

  # feature "Testing form passes information from '/' to '/entered'" do
  #   scenario "Can take form info and pass it on" do
  #     visit('/entered')
  #     session = Session.new
  #     session.stub(:name).with("Jennifer")
  #     # allow(session).to receive(:name).and_return("Jennifer")
  #     expect(page).to have_content("Oh hello, Jennifer!")
  #   end
  # end
end
