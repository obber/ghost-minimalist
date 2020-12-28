# Ghost Minimalist

A minimalist blog theme for the [Ghost](https://ghost.org/) publishing platform.

[View A Live Site](https://kanadachi.com)

## Download

- [Version 2.1.3](http://kanadachi-themes.objects-us-east-1.dream.io/ghost-minimalist-2.1.3.zip) (Latest).

See the [Changelog](CHANGELOG.md) for the latest features.

## Integrations

This theme supports certain integrations like Disqus using variables that you define in the `Site Header` code block so you don't have to modify the theme files:

```
<script>
  setThemeConfig({
    DISQUS_ID: 'systembuilder',
  });
</script>
```

## Forms

If you want to use a form, this theme provides basic CSS for `<input>`, `<textarea>`, and `<button>` tags. It's up to you to include the HTML/javascript code to make the form work. Here's a simple example using [Formspree](https://formspree.io/).

HTML:

```html
<!-- The FORM_ID below within the "action" attribute should be replaced -->
<form
  action="https://formspree.io/f/FORM_ID"
  method="POST"
>
  <label for="_replyto">Your email:</label>
  <input required type="text" name="_replyto">

  <label for="message">Your message:</label>
  <textarea required name="message"></textarea>

  <button type="submit">
    <!-- This is an SVG icon. It'll be sized at 24px/24px within the button. -->
    <svg class="svg-icon" viewBox="0 0 20 20">
      <path d="M17.218,2.268L2.477,8.388C2.13,8.535,2.164,9.05,2.542,9.134L9.33,10.67l1.535,6.787c0.083,0.377,0.602,0.415,0.745,0.065l6.123-14.74C17.866,2.46,17.539,2.134,17.218,2.268 M3.92,8.641l11.772-4.89L9.535,9.909L3.92,8.641z M11.358,16.078l-1.268-5.613l6.157-6.157L11.358,16.078z"></path>
    </svg>
    Send
  </button>
</form>
```

Which ends up looking like this:

<img alt="Form screenshot" width="100%" height="auto" style="max-width: 607px;">

## Developer notes

If you want to load the theme directly from this repository, you'll first need to run `npm run css:build` or `yarn css:build` for the theme to work correctly.
