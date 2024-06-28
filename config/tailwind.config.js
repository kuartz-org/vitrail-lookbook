const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  presets: [
    require('../lib/assets/vitrail_preset.js')
  ],
  content: [
    './lib/assets/stylesheets/vitrail/*.css',
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './test/components/previews/**/*.{rb,erb,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
