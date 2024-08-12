# app/jobs/api_fetcher_job.rb
class ApiFetcherJob < ApplicationJob
  queue_as :api_requests

  def perform(api_endpoint)
    response = HTTParty.get(api_endpoint)
    if response.success?
      # Process the response here, for example, save to the database
      process_data(response.parsed_response)
    else
      # Handle error
      Rails.logger.error("API request failed: #{response.message}")
    end
  end

  private

  def process_data(data)
    # Implement your data processing logic here, e.g., save it to the database
    # Example: MyModel.create(data: data)
  end
end

