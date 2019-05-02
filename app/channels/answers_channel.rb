# frozen_string_literal: true

class AnswersChannel < ApplicationCable::Channel
  def follow(params)
    stop_all_streams
    stream_from "questions/#{params['id']}"
  end
end
