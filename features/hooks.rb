# frozen_string_literal: true

require 'report_builder'
require 'date'

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  case ENV['PLATFORM']
  when 'android'
      @screen = DroidScreens.new
  when 'ios'
      @screen = IosScreens.new
  end
end

# After do
#   screenshot = driver.screenshot_as(:base64)
#   embed(screenshot, 'image/png', 'Screenshot')

#   driver.quit_driver
# end

at_exit do
  @infos = {
    'device' => DEVICE.upcase,
    'environment' => 'Dev',
    'Data do Teste' => Time.now.to_s
  }

  ReportBuilder.configure do |config|
    config.input_path = 'log/report.json'
    config.report_path = if DEVICE.eql?('android')
                           "log/android/#{DEVICE}_report"
                         else
                           "log/ios/#{DEVICE}_report"
                         end
    config.report_types = [:html]
    config.report_title = 'PicPay Mobile POC'
    config.additional_info = @infos
    config.color = 'green'
  end
  ReportBuilder.build_report
end