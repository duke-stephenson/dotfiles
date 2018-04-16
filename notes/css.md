# CSS things i always forget

### media queries
- @media only screen and (max-width: 600px)  {...}  
  Add styles if width is less than or equal to 600px  

- min-width  
  Add styles if width is greater than or equal to

- @media only screen and (max-width: 600px) and (min-width: 400px)  {...}  
  Add styles if the 400px < WIDTH < 600px  

### Fontsize
- Learn all the font sizes  
  em - Size relative to parent. If parent is 16px and child is 2em. Child will calculate to 32px  
  rem - Size relative to root (html). Will ignore all parents with explicit font size  

- Can/should use em units for main spacing properties of object  
  https://css-tricks.com/building-resizeable-components-relative-css-units/
  padding/margin/width/height/etc will then scale with the font-size  

- Limit paragraph line length relative to width. Prevent random long lines!!  
  max-width: 28.125em; /* limit line length */  
