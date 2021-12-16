curl \
    -s http://api.mainnet-beta.solana.com  \
    -X POST \
    -H "Content-Type: application/json" \
    -d "{\"jsonrpc\": \"2.0\",\"id\":1,\"method\":\"getBlock\",\"params\":[$1, {\"encoding\": \"json\",\"transactionDetails\":\"full\",\"rewards\":false}]}" \
    | jq ".result.transactions | length"
