class StreamController < ApplicationController
  include ActionController::Live
  def index
    begin
      response.headers['Content-Type'] = 'text/event-stream'
      5.times { |i|
        response.stream.write "data: { \"index\": #{i} }\n\n"
        sleep 0.3
      }

      response.stream.write "event: finished\n"
      response.stream.write "data: Thanks for joining us live!\n\n"
    rescue IOError
      # ...
    ensure
      response.stream.close
    end
  end
end
