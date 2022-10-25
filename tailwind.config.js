const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        "Noir": "#1c1717",
        "Bleu": "#151f43",
        "Blanc": "#ebeff0",
        "Jaune": "#8f6d10"
       },
       fontSize: {
        "base": "1rem",
        "lg": "1.125rem",
        "xl": "1.625rem"
       },
       fontFamily: {
        "piazzolla": "Piazzolla",
        "poppins": "Poppins",
        "montserrat": "Montserrat"
       },
       borderRadius: {
        "none": "0",
        "xs": "0.3125rem",
        "sm": "0.9375rem",
        "default": "1.46875rem",
        "lg": "2.125rem"
       },
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
  ],
};
