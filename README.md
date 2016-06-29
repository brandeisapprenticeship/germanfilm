# German Film Platform

This platform was originally designed by [Amy Sheinhait](https://github.com/ashein2) and [Bess Alshvang](https://github.com/elal22) for use in a college-level film-based German language learning class. It was updated by [Zak Kolar](https://github.com/zakkolar) with several fixes including layout tweaks, user specified changes, translation capabilities, and other miscellaneous changes.

## Customization

### Settings

The platform uses the [Rails Settings Cached](https://github.com/huacnlee/rails-settings-cached) gem to manage site-wide settings. The settings and default values can be set/changed in `config/app.yml`. The settings can also be accessed/changed from within the app, including through web forms. As of this writing, the only setting that can be changed by end users is the number of assignments factored into students' grades. For more details on the gem, see the official documentation.

**Site title:** set `defaults.site_title` in `config/app.yml`

**Footer:** set `defaults.footer_message` in `config/app.yml` (HTML is allowed)

**Assignments factored into grades:** set `defaults.max_assignments` in `config/app.yml` to change the default

(note: this value can be changed via the `gradebook` view by admins)

### Colors

The platform uses Bootstrap-Sass. All of the customized source files are in `app/assets/stylesheets`. Some of the original Bootstrap variables are customized, in two separate files. The relevant files are loaded in this order:

1. `custom_variable_bases.scss`
2. `variables.scss`
3. `custom_variable_overrides.scss`
4. `custom.scss`

`custom_variable_bases.scss` is used for variables that affect other variables (e.g. `$brand-primary`, which is used in places such as `$btn-primary-bg`). Variables that are set in `custom_variable_bases.scss` are commented out in `variables.scss`.

To quickly change the overall appearance of the site, change `$theme-base` in `custom_variable_bases.scss`. All of the other colors on the site (aside from contextual helpers) are variants of this base color, so changing it will give the site a distinct look without having to tweak many colors.

### Time zone

To change the timezone, set `config.time_zone` in `config/application.rb`.

### Translations

The platform uses the included I18n gem for translations. To translate the platform to another language, copy `config/locales/en.yml` to `config/locales/[language code].yml` and edit the file to include the proper translations. You will also need a translation file for the Devise gem. Devise translations can be found here: https://github.com/plataformatec/devise/wiki/I18n. Download the appropriate file to `config/locales/devise.[language code].yml`.

Once the translation files are in place, change `config.i18n.default_locale` in `config/application.rb` to the appropriate language code.