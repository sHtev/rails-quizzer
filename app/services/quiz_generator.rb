# frozen_string_literal: true

require 'faraday'
require 'json'

OPENTDB_API_URI = "https://opentdb.com/api.php"

class QuizGenerator
  class << self
    def generate_trivia_questions(**selection_params)
      resp = Faraday.get(OPENTDB_API_URI, selection_params)
      q_result = JSON.parse(resp.body)

      q_result["results"].each do |question|
        p question
        # Question.new()
      end
      q_result
    end
  end
end
