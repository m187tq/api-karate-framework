function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'stating';
  }
  var config = {
    env: env,
	myVarName: 'someValue',
	username: 'admin1',
	password: 'welcome',
	_url: 'http://localhost:9191',
	apiUrl: 'http://localhost:9191'
		
  }
  if (env == 'dev') {
    // customise
    // e.g. config.foo = 'bar';
	  config.username = 'author';
	  config.password = 'authorpassword';
  } else if (env == 'e2e') {
	  config.username = 'user';
	  config.password = 'userpassword';
  } else if (env == 'staging') {
	  // Initialise the configuration for staging
	  config.username = 'stagingadmin1';
	  config.password = 'stagingwelcome';
	  //configuration._url= 'http://staging.localhost:9898';
	  config._url= 'http://localhost:9191';
  } else if (env == 'preprod') {
	  // Initialise the configuration for preproduction
	  config.username = 'preprodadmin1';
	  config.password = 'preprodwelcome';
	  config._url= 'http://preprod.localhost:9191';
  } else if (env == 'prod') {
	  // Initialise the configuration for production
	  config.username = 'prodadmin1';
	  config.password = 'prodwelcome';
	  config._url= 'http://localhost:9191';
  } 
  
  return config;
}