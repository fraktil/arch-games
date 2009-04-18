/* MAINATINER: Bernard CURENT_EDITOR: Bernard */

#include "SDL.h" // required because of main function
#include "application_server.h"
#include <ode/ode.h>

#include "log.h"
#include "globals.h"

using namespace std;

int main(int argc, char* argv[])
{

	TIN

	ApplicationServer app(argc, argv);

	gAppServer = &app;
	gApp = &app;
	
	dInitODE ();
	app.init();

	app.run();

	app.clean();
	dCloseODE ();


	gAppServer = 0;
	gApp = 0;
	
	return 0;
}
