require 'lucid_client'

module LucidShopify

  extend LucidClient::Env

end

require 'lucid_shopify/engine'
require 'lucid_shopify/middleware/base'

middleware = File.dirname( __FILE__ ) + '/lucid_shopify/middleware/*.rb'

Dir.glob( middleware ).each do |middleware|
  require middleware
end

require 'lucid_shopify/session'
require 'lucid_shopify/services/authenticate'
require 'lucid_shopify/policies/valid_webhook'

### Exceptions

require 'lucid_shopify/exceptions/invalid_token'

### API Interfaces

require 'lucid_shopify/api/paginated_resource'
require 'lucid_shopify/api/shop_api'
require 'lucid_shopify/api/collection_api'
require 'lucid_shopify/api/product_api'
require 'lucid_shopify/api/collect_api'
require 'lucid_shopify/api/customer_api'
require 'lucid_shopify/api/order_api'
require 'lucid_shopify/api/webhook_api'

### Billing API

require 'lucid_shopify/billing'

### Testing

require 'lucid_shopify/testing'
