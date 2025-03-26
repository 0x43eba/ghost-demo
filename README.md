## Barebones Ghost Demo

Super barebones setup for Ghost. This will create a deployment, running the default Casper theme. To get an idea of how the CMS works,
it's best to play around with Casper. It has all the features enabled. It also includes a theme, "Sample", which will let you mess around
with how the CSS works. The sample theme is just a blank HTML and CSS setup, so you can use it as a blank canvas to test things.

Here's a [link to the Ghost specific Handlebars flavor](https://ghost.org/docs/themes/helpers/) -- be advised, it's different than the bog-standard you may be used to.

#### Getting started

I set this up to be bootstrapped with [Just](https://github.com/casey/just). You can install that with homebrew, or cargo. For brew its:

```bash
brew install just
```

Then to run the deployment:

```bash
just run
```

And to take down the deployment:

```bash
just cleanup
```
