# RPS Challenge

[Link to original README.md](/README.md)


## Issues encountered

### Web app only renders correctly in Safari

_a.k.a. why it's often better to manually type a line of code instead of copying and pasting that line from the web_

#### `”` vs. `"`

Look closely at those two characters. I didn't see the difference at first but my browsers weren't so easily fooled.

In the end it was the [W3C Markup Validation Service](https://validator.w3.org) which allowed me to identify and resolve the issue.

I was writing [my CSS stylesheet](/public/css/styles.css) and could not remember how to link to it in my HTML. I looked up the line, copy & pasted the `type=”text/css”` part I was missing.

`<link rel="stylesheet" type=”text/css” href="/css/style.css" />`

It turns out that Safari is more forgiving because it rendered my HTML/CSS perfectly. Chrome and Firefox, not so much.

I even tried uploading my app to Heroku, in case there was something odd happening locally - but same thing. Arguably, it was Safari that rendered incorrectly: my incorrect code should not have resulted in a correct rendering. Firefox and Chrome did their jobs.

## Links

- Some sites I looked at when I was centering an element: [CSS-Tricks](https://css-tricks.com/centering-css-complete-guide/), [Tipue](http://www.tipue.com/blog/center-a-div/)

- Rock, paper, scissors hand images modified from [this image](https://openclipart.org/detail/63805/rock-scissors-paper) from Openclipart contributor _mazeo_
