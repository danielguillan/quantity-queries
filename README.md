# Quantity Queries mixins

Simple item quantity queries mixins for Sass.

[![Build Status](https://travis-ci.org/danielguillan/quantity-queries.svg?branch=master)](https://travis-ci.org/danielguillan/quantity-queries)

## Install

There are 3 ways of installing the Quantity Queries mixins:

### Download

Download [_quantity-queries.scss](/stylesheets/_quantity-queries.scss) and place it in your Sass directory.

### Bower

Run the following command:

	bower install --save-dev quantity-queries

### Compass extension

1. `gem install quantity-queries`
2. Add `require 'quantity-queries'` to your `config.rb`

## Usage

Import it into your main stylesheet:

	@import 'quantity-queries';

### at-least

Target the items inside elements that contain N items or more:

	@include at-least($count) { ... }


### at-most

Target the items inside elements that contain N items or less:

	@include nope($count) { ... }


### between

Target the items inside elements that contain between X and Y items:

	@include between($at-least, $at-most) { ... }

### Example

Sass input:

```scss
ul > li {

	// Color the `li` items red when there are 6 items or more
	@include at-least(6) {
		color: red;
	}

	// Color the `li` items blue when there are 4 items or less
	@include at-most(4) {
		color: blue;
	}

	// Add a green background to `li` items when there are between 5 and 8 items
	@include between(5, 8) {
		background-color: green;
	}
}
```

### Custom selector

The quantity query mixins assume you want to use the current simple selector for
all your items by default. `li` in the previous example. If you need a diffrent
selector or want it to be selector agnostic (a.k.a. the universal selector: `*`)
you just need to pass it in the mixin:

```scss

	nav div {
		@include at-leat(4, '*'); // selector agnostic
		@include between(4, 8, 'span'); // use span instead of div
	}
