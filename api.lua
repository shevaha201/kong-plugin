local endpoints = require "kong.api.endpoints"


local HTTP_NOT_FOUND = 404


local kong = kong
local credentials_schema = kong.db.oauth2_credentials.schema
local tokens_schema = kong.db.oauth2_tokens.schema
local consumers_schema   = kong.db.consumers.schema


return {
  ["/oauth2_access_tokens/"] = {
    schema = tokens_schema,
    methods = {
      GET = endpoints.get_collection_endpoint(tokens_schema),
      POST = endpoints.post_collection_endpoint(tokens_schema),
    },
  }
}
