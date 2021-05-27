require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    # Definir página do site
    config.app_host = 'http://localhost:5000'
end

# Definir tempo máximo padrão para esperar o elemento aparecer
Capybara.default_max_wait_time = 5