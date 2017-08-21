---
layout: post
title:  Better progress indicators for Instapaper and Pocket
date:   2016-02-19
image: /images/progress-tracking-hero.jpg
time: 2.5
---
I’ve always been a big fan of read it later services. Instapaper was one of the most used apps on my original iPhone. Later, I switched to Readability and finally settled on Pocket for a few years. Recently, I switched back to Instapaper and I’m quite pleased with the product. Through the years, a few things keep bugging me about read it later apps, one of them being dealing with reading progress.


## Instapaper has a head start
Instapaper seems to be on par with Pocket in terms of general capabilities, but the tools actually focused on improving the reading experience are much better. To this day, Pocket doesn’t visualize reading progress. It’s puzzling that such a simple feature is missing, especially having in mind that the service actually saves the progress so it can open on the correct page next time. Instapaper does a much better job, representing the read progress with text: “X out of Y min remaining”. I can’t say it’s a poor implementation, it does work for most people. It’s really slow to scan through though.

## Concept 1
My original concept is actually the one I like better. It uses a progress bar a bit thicker than the list separators. The paradigm is extremely well known and doesn’t require any additional vertical space.

![Concept 1 features full width lines going through each list item that has been opened once](/images/progress-tracking-concept1.png){: .2x }

Keeping in mind Instapaper’s stark aesthetics, I used an optically corrected version of the grey used for the original progress indicator. Pocket, on the other hand, is much more colorful and can adapt aquamarine indicators without them grabbing too much attention. Picking the color was a tough choice: after messing around with Pocket for a few minutes, I figured out it’s the only one of their four brand colors that doesn’t have a place in the system. Magenta is the general highlight color, teal is used for labels and other small components and yellow is for notification buttons.

The two disadvantages I’m aware of are:
- some people might have a hard time figuring out the connection between progress indicators and list items. Is it attached to the top or to the bottom? I’ve experienced similar frustrations with long lists with no visual breaks.
- it might be a tad too bold. But clarity should always be king, so not too much of a problem there.

## Concept 2
The second concept is, in my opinion, far less scalable and only  a marginal improvement compared to the current implementation. I came up with it just to challenged my original concept. It features a small round indicator sitting inline wth the existing text. It might look hard to read on screenshots, but it’s pretty generously sized on actual devices.

![Concept 2 relies on round indicators sitting next to the existing text indicators](/images/progress-tracking-concept2.png){: .2x }

No interactive prototypes this time: both concepts are kind of static and I’m trying to complete my bachelor thesis in as little time as possible.