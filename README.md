# Quantity Queries mixins [![Build Status](https://travis-ci.org/danielguillan/quantity-queries.svg?branch=master)](https://travis-ci.org/danielguillan/quantity-queries)

Simple quantity queries mixins for Sass. Use quantity as a condition to style your items. Learn more about quantity queries in this [A List Apart article](http://alistapart.com/article/quantity-queries-for-css). See the mixins in action in this [CodePen Demo](http://codepen.io/danielguillan/pen/GgBOxm)

## Install

```sh
npm install --save-dev quantity-queries
```

## Usage

Import it into your main stylesheet:

```scss
	@import 'quantity-queries';
```

### at-least()

Target the items inside elements that contain `$count` items or more:

```scss
@include at-least($count) { ... }
```

### at-most()

Target the items inside elements that contain `$count` items or less:

```scss
@include at-most($count) { ... }
```

### between()

Target the items inside elements that contain a range between `$first` and `$last` items:

```scss
@include between($first, $last) { ... }
```

### exactly()

Target the items inside elements that contain exactly `$count` items:

```scss
@include exactly($count) { ... }
```

### even()

Target the items inside elements that contain an even number of items:

```scss
@include even() { ... }
```

### odd()

Target the items inside elements that contain an odd number of items:

```scss
@include odd() { ... }
```

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

	// Add a shadow to `li` items when there are exactly 8 items
	@include exactly(8) {
		box-shadow: 0 1px 3px #000;
	}

// Add a red outline to `li` items when there are is an even number of them
	@include even() {
		outline: solid 2px red;
	}

// Add a blue outline to `li` items when there is an odd number of number
	@include even() {
		outline: solid 2px blue;
	}
}
```

### Custom selector

The quantity query mixins assume you want to use the current last simple selector for all the items by default (`li` in the above example). If you need a different selector or want the quantity query to be selector agnostic pass the desired selector to the mixin.

```scss

	nav div {
		@include at-least(4, '*') { ... }; // selector agnostic (universal selector)
		@include between(4, 8, 'span') { ... }; // use span instead of div
	}
```

## Demo on [CodePen](http://codepen.io/danielguillan/pen/GgBOxm)

## Other implementations

- [LESS Quantity Queries](https://github.com/adjohnson916/quantity-queries.less) by Anders D. Johnson
- [PostCSS Quantity Queries](https://github.com/pascalduez/postcss-quantity-queries) by Pascal Duez
