# This file is used by Rack-based servers to start the application.

# require_relative "config/environment"

# run Rails.application
# Rails.application.load_server

require "rack"
require_relative "app"
require_relative "simple_middleware"

use Rack::Runtime # リクエストを受けとってからレスポンスを返すまでの時間をレスポンスヘッダーに追加
use SimpleMiddleware
run App.new
