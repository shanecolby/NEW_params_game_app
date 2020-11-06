class Api::ExamplePagesController < ApplicationController
  def query
    @occupation = params["occupation"]
    render "query.json.jb"
  end
end
