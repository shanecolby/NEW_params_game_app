class Api::ExamplePagesController < ApplicationController
  def query
    @occupation = params["occupation"]
    render "query.json.jb"
  end

  def segment
    @vehicle = params[:vehicle]
    @sentence  = "You drive a #{@vehicle}"
    render "segment.json.jb"
  end
end
