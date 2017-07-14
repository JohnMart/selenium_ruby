# helper methods for common functionality

module CommonHelpers
  # launch the provided URL.
  def open_url(url)
    @browser.goto url
  end
end
 
World(CommonHelpers)