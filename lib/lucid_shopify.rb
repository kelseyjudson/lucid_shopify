require 'lucid_client'

module LucidShopify

  extend LucidClient::Env

end

require 'lucid_shopify/logging'

middleware = File.dirname( __FILE__ ) + '/lucid_shopify/middleware/*.rb'

Dir.glob( middleware ).each do |middleware|
  require middleware
end

require 'lucid_shopify/session'
require 'lucid_shopify/invalid_token_error'
require 'lucid_shopify/services/authenticate'
require 'lucid_shopify/policies/valid_webhook'

require 'lucid_shopify/api/collection_api'
require 'lucid_shopify/api/product_api'