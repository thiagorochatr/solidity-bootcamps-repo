// This example uses Brazil indexes

// Arguments can be provided when a request is initated on-chain and used in the request source code as shown below
const brazilIndexId = args[0]

const brazilIndexRequest = Functions.makeHttpRequest({
  url: `https://brasilapi.com.br/api/taxas/v1/${brazilIndexId}`,
})

// First, execute all the API requests are executed concurrently, then wait for the responses
const [brazilIndexResponse] = await Promise.all([
  brazilIndexRequest
])

var result
if (!brazilIndexResponse.error) {
  console.log(brazilIndexResponse)
  result = brazilIndexResponse.data.valor
}

return Functions.encodeUint256(Math.round(result * 100))
