const withImages = require('next-images');

module.exports = withImages({
  images: {
    domains: [process.env.BACKEND_HOST],
  },
  async rewrites() {
    return [
      {
        source: '/about',
        destination: `${process.env.BACKEND_URL}/about/`,
      },
      {
        source: '/projects',
        destination: `${process.env.BACKEND_URL}/projects/`,
      },
      {
        source: '/technologies',
        destination: `${process.env.BACKEND_URL}/technologies/`,
      },
      {
        source: '/contact',
        destination: `${process.env.BACKEND_URL}/contact/`,
      },
    ];
  },
  async headers() {
    return [
      {
        // matching all API routes
        //source: "/:path*",
        headers: [
          { key: "Access-Control-Allow-Credentials", value: "true" },
          { key: "Access-Control-Allow-Origin", value: "*" },
          { key: "Access-Control-Allow-Methods", value: "GET,POST,OPTIONS" },
          { key: "Access-Control-Allow-Headers", value: "X-CSRF-Token, X-Requested-With, Accept, Accept-Version, Content-Length, Content-MD5, Content-Type, Date, X-Api-Version" },
        ]
      }
    ]
  },
  publicRuntimeConfig: {
    // Will be available on both server and client
    backendUrl: process.env.BACKEND_URL,
  }
});

