# Be sure to restart your server when you modify this file.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile += %w(home/home_booker.css home/home_owner.css)
Rails.application.config.assets.precompile += %w(login/devise.css style_guide/style_guide.css)
Rails.application.config.assets.precompile += %w(application/booker.css application/owner.css)
