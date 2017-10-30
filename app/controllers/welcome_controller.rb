class WelcomeController < ApplicationController
  def welcome
    @regions = Region.all.map{ |region| [region.region, region.id]}
    @platforms = Platform.all.map{ |platform| [platform.platform, platform.id]}
  end
end
