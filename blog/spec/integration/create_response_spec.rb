require 'rails_helper.rb'

feature "Create new response" do
    scenario "User successfully adds a response" do
        visit buddy_url(@buddy)
        expect(page).to have_content("Add a comment")
        expect(page).to have_field("responder")
        expect(page).to have_field("body")
        fill_in "responder", with: "Sahithi"
        fill_in "body", with: "Hello!"
        click_button "sub"
        expect(page).to have_content("Sahithi")
        expect(page).to have_content("Meduri")
        
    end
end
