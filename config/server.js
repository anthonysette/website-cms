module.exports = ({ env }) => ({
  host: env('HOST', 'https://strapi.anthonysette.com'),
  port: env.int('PORT', 8080),
  app: {
    keys: env.array('APP_KEYS'),
  },
});
