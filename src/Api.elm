module Api exposing (base64EncodedKey)

import Http

clientId : String
clientId =
    "655b4b6da7b84a009b5f2849beaec16a"


clientSecret : String
clientSecret =
    "6807a8b240e9444b87cfd3b4841b07eb"


base64EncodedKey : String
base64EncodedKey =
    "NjU1YjRiNmRhN2I4NGEwMDliNWYyODQ5YmVhZWMxNmE6NjgwN2E4YjI0MGU5NDQ0Yjg3Y2ZkM2I0ODQxYjA3ZWI="


token : String
token =
    "BQAtdtVuHVoPfxax5eOjMCd47_7i4Ow6WiTxYw8dEkzXTnPwg-WLNqQjmmo6-hTnPYrkI1WhnJtTYfgAStY"


-- IF TOKEN EXPIRED RUN THE FOLLOWING

-- curl -X "POST" -H "Authorization: Basic NjU1YjRiNmRhN2I4NGEwMDliNWYyODQ5YmVhZWMxNmE6NjgwN2E4YjI0MGU5NDQ0Yjg3Y2ZkM2I0ODQxYjA3ZWI=" -d grant_type=client_credentials https://accounts.spotify.com/api/token
