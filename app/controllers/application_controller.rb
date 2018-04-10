class ApplicationController < ActionController::Base
  before_action :set_default_meta_tags

  private

  def set_default_meta_tags
    page_meta.link(:icon, href: '/favicon.png')
  end
end
