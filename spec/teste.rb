RSpec.feature "FeedWorkflows", type: :feature do
  scenario "Register new feed" do
    visit new_feed_path
    fill_in "Url", with: "http://example.org"
    expect do
      click_button "Register"
    end.to change{Feed.count}.by 1
  end
end