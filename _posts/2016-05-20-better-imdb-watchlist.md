---
layout: post
title:  Improved IMDB watchlist for iOS
image: /images/better-watchlist-cover.png
time: 2
---
IMDB is not the sexiest product around, but it's extremely useful and has virtually no real alternatives. With a database so rich it's a priceless resource (and it's free). One of the features I use the most is IMDB's watchlist. Pretty standard stuff, kind of like Instapaper for movies. I prefer saving movies inside the app instead of in Instapaper or a Reminders list. It's super convenient to see more info with a single tap, including rich previews with posters.

<figure>

  <img class="2x responsive-vertical-image" src="/images/better-watchlist-1.png" alt="A screenshot of IMDB's currrent watchlis on iOS">

  <figcaption>The current version of IMDB's watchlist on iOS 😐</figcaption>

</figure>

Unfortunately, IMDB's watchlist experience is not too great. The web version is… dated and, while iOS looks pretty native and current, it's actually a bonanza of non-native components and weird choices like:

- non-standard search component
- tiny share button with a squished icon
- an extremely awkward title
- "New message/note" button which is actually an "Edit" button. On top of that, it opens a completely different view, something I've never seen elsewhere.
- full-width sorting bar which is actually one huge button (with a fake visual button and a counter)
- full-width "Add to List" button
- puzzling "Mark as watched" buttons which trigger a delete menu 🙄
- "Play trailer" shortcut buttons which look similar to the native list view chevrons

Now that's a lot, isn't it? It's not that hard to make it better, all we need is the HIG and some basic components used right. Here's what I did in a few evenings.

<video width="100%" height="auto" controls="controls">
<source src="/video/better-watchlist.mp4" type="video/mp4">
<source src="/video/better-watchlist.webm" type="video/webm">
Your browser does not support the video tag.
</video>

<div class="framer-wrapper">

  <p class="tooltip"></p>

  <iframe data-anijs="if: mouseover, do: $addClass darkroom, to: body; if: mouseout, do: $removeClass darkroom, to: body" class="framer" height="832" src='http://share.framerjs.com/n2eppqximdcp/'></iframe>
</div>


It's nothing special, just:

- a standard navbar with a title, "Back" and "Edit" buttons and an additional "Sort" button (a rarely used layout found in Notes)
- a standard search bar
- a native bottom bar with a "Share" button and an "Add" button
- a native couple of swipe actions to mark movies as watched or delete them

I've also included a small part of the Shared watchlist feature I'm working on. As you might expect, it allows family members to access and edit a single watchlist. It's coming soon.

In conclusion, designing with 100% standard components is a super mindful and straightforward process. Although it's not the ultimate solution to every problem, I wish we had more native apps nowadays, like in the early days of the App Store.
