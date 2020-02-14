feature 'Creating a new bookmark' do
  scenario 'A user can create a new bookmark' do
    visit("/bookmarks/new")
    fill_in("url", with: "http://www.testbookmark.com")
    fill_in("title", with: "Test Bookmark")
    click_button "Submit" 

    expect(page).to have_content('Test Bookmark', "http://www.testbookmark.com")

    # expect(page).to have_content "http://www.testbookmark.com"
    # expect(page).to have_content "test book mark"
  end 


end

    