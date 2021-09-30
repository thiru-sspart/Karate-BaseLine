function () {
var env = karate.env;
if(!env) {
env = 'dev';
}
var config = {
baseUrl : 'https://reqres.in/api'
}
  if (env == 'dev') {
  config.baseUrl = 'https://reqres.in/api';
  }
  else if (env == 'pie') { //Pre-production environment settings
  config.baseUrl = 'https://reqres.in/api';
  }
 karate.log(config.baseUrl);
 return config;
}