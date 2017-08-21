---
layout: post
title:  Better symbols for Sketch
subtitle: Taking “Exclude text value” one step further
date:   January 14, 2016
image: /images/sketch_symbols_hero.png
time: 5
---
Since I started designing in the browser, I haven’t used Sketch for UI work too often. Coming back for a project that required using it was a frustrating experience due to the manual way everything is supposed to be done.

Switching from a 2-column to 4-column layout, for example, is tedious, and symbols, while useful, can’t be compared with classes and the way SASS works. Making things more tolerable requires a fair dose of plugins and most of them just don’t work as reliably as native features do.

Symbols are one of the most well designed features in Sketch. I believe they are capable of much more than they do now, so I spent a few hours coming up with ideas. I’m just thinking and prototyping publicly.

## Emulating the cascade
The cascade (as in CSS) gets its fair amount of hate these days, but it’s an essential part of the way we design in most environments.

Every code-based design metaphor includes something that fits in the broad definition of a cascade. That’s not the same with graphical UI design tools like Sketch. Symbols are completely sandboxed and can’t interact with each other in any way while nesting them provides mostly an organizational benefit. Designing in SASS or even plain CSS is so much faster, more consistent and logical. Iterating is a breeze without breaking the whole system and similar styles can have different relationships that make basic human sense.

I find this GIF much more representative regarding Sketch's symbols compared to CSS.

![familyguy](/images/familyguy.gif)

With symbols in Sketch, we get something different. A non-negligible number of beginners get angry with them and never use them anymore because of that first couple dozen times when changing one instance messed up the entire project. It’s never the user’s fault when this kind of things happen and, even now, working with symbols feels a bit awkward to me. I can’t entirely drop the paranoia that I’m going to change hundreds of instances and than undo will start working in an unexpected way. To me, the symbols UI is prone to such problems as it might be too invisible.

## “Exclude Text Value from Symbol”
This smart tiny feature made me smile when it was announced a few versions ago. It’s one of those humble decisions that solve a major problem in an elegant, almost transparent way. I’m sure it can go further.

Why limit the exclusion metaphor to text values only? It works for components that include text, but there are a bunch of other scenarios that could work the same way. My idea uses the standard symbol color coding to indicate which properties are affected by the symbol. By default, every property-value combination attached to the symbol gets highlighted in purple.

Apart from that, all properties affected by the symbol could be excluded on a per-layer basis. All you have to do is ‘CMD+Click’ on the label. It turns black, which means this property is no longer attached to the symbol for the specific layer. For example, you can experiment with different colors, font sizes or levels of opacity without detaching the layer from its symbol. To go back to the original symbol style, just ‘CMD+Click’ again and the labels goes back to purple, restoring the original symbol value for the field.

<video width="100%" height="auto" controls="controls" poster="/video/poster_1.1.png">
<source src="http://www.improved.design.s3.amazonaws.com/video/improved_video_1.1.webm" type="video/webm">
<source src="http://www.improved.design.s3.amazonaws.com/video/improved_video_1.1.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div class="framer-wrapper">

  <p class="tooltip">Click on labels like Width, Height and Opacity to individually attach and detach properties from the symbol. ↓</p>

  <iframe data-anijs="if: mouseover, do: $addClass darkroom, to: body; if: mouseout, do: $removeClass darkroom, to: body" style="max-width: 428px;
      height: 1260px;" class="framer" src='http://share.framerjs.com/parfnn3rl0l4/'></iframe>
</div>

## Editing symbol vs branching
Sadly, I’m not backed by data, but I’m not sure how many users iterate on symbol instances with the goal to edit the symbol project-wide. Most of the the times it’s just experimenting or fitting to a specific purpose which required deviation from the default symbol style. Meanwhile, editing the whole symbol is such an easy and silent thing to do. No wonder it takes months to develop a good enough confidence working with symbols.

A good example of making symbols safer is [Webflow](http://www.webflow.com), where the user is required to double click to edit a symbol (regular objects require a single click). It’s an elegant reminder about the scale of the following events.
My idea is a moderate iteration. It doesn’t affect the existing behavior: directly editing still affects all symbol instances project-wide.

A more extreme (and probably better) way to do it is to add an ‘Edit’ button next to the symbol name. Essentially, it would serve as the transparent safety cover on top of the big red button. Requiring one more interaction just to make sure you’re aware about what you are doing. Or maybe use a lock interaction like this one?
<video width="100%" height="auto" controls="controls" poster="/video/poster_1.1.png">
<source src="http://www.improved.design.s3.amazonaws.com/video/improved_video_1.2.webm" type="video/webm">
<source src="http://www.improved.design.s3.amazonaws.com/video/improved_video_1.2.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div class="framer-wrapper">

  <p class="tooltip">Click on the padlock to trigger symbol editing on and off. ↓</p>

  <iframe data-anijs="if: mouseover, do: $addClass darkroom, to: body; if: mouseout, do: $removeClass darkroom, to: body" style="max-width: 428px;
      height: 1260px;" class="framer" src='http://share.framerjs.com/2cf9faj10u48/'></iframe>
</div>

I also did some experiments with a concept featuring a master/slave connection between a “master symbol” and all its iterations, but it is a poor idea. No one should have to go back searching for the original version to make changes. An “Edit” button on the symbols organization pane might be better, but it deviates from the easy way to edit properties in the inspector: something Sketch never does.
