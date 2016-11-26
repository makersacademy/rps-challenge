require 'spec_helper.rb'
require_relative 'web_helper.rb'

describe "Entering Names" do

  context "When players enter their names" do
         before do
           sign_in
         end

    it "They are redirected to the '/game' page" do
      expect(page.current_path).to eq('/game')
    end
  end
end
