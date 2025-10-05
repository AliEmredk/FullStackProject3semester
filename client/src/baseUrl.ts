const isProduction = import.meta.env.PROD;

const prod = "https://fullstackapplib.fly.dev";
const dev = "http://localhost:5000";

export const finalUrl = isProduction ? prod : dev;