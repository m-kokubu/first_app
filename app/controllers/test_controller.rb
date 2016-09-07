class TestController < ApplicationController
  def index
   @msg = "変数を使ったデータの受け渡し"
   render "test/index"
  end
end
