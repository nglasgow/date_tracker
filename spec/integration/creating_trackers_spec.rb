require 'spec_helper'

feature 'Creating Trackers' do
  before do
    visit '/'
    click_link 'New Tracker'
  end

  scenario "can create a tracker" do
    fill_in 'Date', :with => 'TextMate 2'
    fill_in 'Description', :with => "A text-editor for OS X"
    click_button 'Create Tracker'
    page.should have_content('Tracker has been created.')

    tracker = Tracker.find_by_date("TextMate 2")
    page.current_url.should == tracker_url(tracker)
    title = "TextMate 2 - Trackers - Date_Tracker"
    find("title").should have_content(title)
  end

  scenario " can not create a tracker without a name" do
    click_button 'Create Tracker'
    page.should have_content("Tracker has not been created.")
    page.should have_content("Date can't be blank")
  end
end
