module SearchFormLookups
  extend ActiveSupport::Concern

  included do
    before_action :set_lookups
  end

  def set_lookups
    @regions = Region.all.map { |region| [region.region, region.id] }
    @platforms = Platform.all.map { |platform| [platform.platform, platform.id] }
  end
end
