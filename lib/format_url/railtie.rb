module FormatUrl
  class Railtie < Rails::Railtie
    initializer 'format_url.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end