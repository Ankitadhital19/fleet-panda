class ApplicationController < ActionController::Base
  def create
    ApiFetcherJob.set(wait: 5.minutes).perform_later("https://api.example.com/data")
  end
  allow_browser versions: :modern
end
