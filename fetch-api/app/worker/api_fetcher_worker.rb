# app/workers/api_fetcher_worker.rb (if Rails) or directly in your script
require 'sidekiq'
require 'httparty'

class ApiFetcherWorker
  include Sidekiq::Worker

  def perform(api_url)
    response = HTTParty.get(api_url)
    if response.success?
      process_data(response.parsed_response)
    else
      puts "Failed to fetch API data"
    end
  end

  private

  def process_data(data)
    # Process the data, e.g., save it to the database or perform other actions
    puts "Fetched data: #{data}"
  end
end
