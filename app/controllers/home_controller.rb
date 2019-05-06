class HomeController < ApplicationController
  def index
    @value = Rails.cache.fetch(:home_test, expires_in: 15.seconds) do
      :foo
    end
  end
end
