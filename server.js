const ronin     = require( 'ronin-server' )
const mocks     = require( 'ronin-mocks' )
 
async function main() {
  const server = await ronin.server()

  server.use( '/api/', mocks.server( server.Router(), false, true ) )
  server.start()

  console.log( "ronin server listening on http://localhost:8000/api/" )
}

main()