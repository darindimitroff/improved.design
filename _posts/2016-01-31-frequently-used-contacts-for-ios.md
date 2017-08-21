---
layout: post
title:  Frequently used contacts for iOS
date:   January 31, 2016
image: /images/frequent-contacts-hero.png
time: 3.5
---
No other generation has had the chance to communicate with so many people through such a wide variety of channels than ours. Yet, majority of online interactions are formed by a small group of repeating actions. In most cases, we communicate with a single individual through a single channel. Send an iMessage to mom and dad, email a coworker, reach a group a friends through Messenger. It’s probably what you end up doing every time you pull up the share sheet. Yet, there’s no quick way to do it.

![OS X's Recents Menu](/images/mac-recents.png){: .2x }

## Taking inspiration from the Mac
The latest versions of OS X have solved this problem quite elegantly. There’s a “Recents” section in the Share menu. It’s not exactly what I have in mind, but it’s a great little interaction: fits perfectly inside the generic share menu, is extremely intuitive and, best of all, can adapt to your social patterns. Unfortunately, not too many OS X apps have share sheet extensions, so I don’t find myself using the native share sheet too often.

## Frequent “Contact+Channel” pairs
What’s great about the Mac’s “Recents” section is that it adopts the concept of a “Contact+Channel” pair. Not only does it remember the person, but the way you reached them. How could we make it better?
Instead of listing the most recent interactions, it makes much more sense to maintain a list of the most common ones throughout a longer period of time.

![AirDrop compared with the ohter section of iOS' share sheet](/images/wasted-space.png){: .2x }

## 126pt of wasted space
But where would this menu fit and how would it work? After going  through the architecture of iOS’ share sheet, I thought about the 126pt of vertical space the AirDrop menu is wasting. It has at least a few problems.

- it takes as much space as more than four other actions (even more on larger devices)
- it doesn’t preserve space when there are no available AirDrop contacts
- does it really take 32 words spread through four lines of text just to explain what AirDrop does? No other share sheet item has such a large area to introduce itself.

I get it, Apple has been trying to promote it’s latest communication protocol throughout its platforms. Sadly, it’s fair to say AirDrop didn’t quite catch on. It almost never works for a lot of people, myself included. It’s a quick and clean way to send stuff when it works, but it has another problem. Are we really sharing the most when the other person is in the same room? I’m not backed by data, but I’d say we aren’t.

With all these concerns, I feel it’s safe to assume AirDrop could be downgraded to a regular action in the upper section of the drawer.

<video width="100%" height="auto" controls="controls" poster="/video/poster_2.1.png">
<source src="http://www.improved.design.s3.amazonaws.com/video/improved_video_2.1.webm" type="video/webm">
<source src="http://www.improved.design.s3.amazonaws.com/video/improved_video_2.1.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>
<div class="framer-wrapper">

  <p class="tooltip">Go through the prototype by clicking on any of the three contacts and tap anywhere to dismiss. There's a video if you're on mobile.↓</p>

  <iframe data-anijs="if: mouseover, do: $addClass darkroom, to: body; if: mouseout, do: $removeClass darkroom, to: body" style="width: 100%;
      height: 800px;" class="framer" src='http://share.framerjs.com/p0pi4t8rc1qe/'></iframe>
</div>

## Putting it together
It’s quite an obvious implementation. The main goal is to make it feel familiar. The concept should not disrupt the existing sharing flow, but act as a shortcut which sends the user directly to the last stage of a share interaction. The person and method are pre-defined, so the last step is to add an optional piece of text. I experimented with one-tap sharing prototypes, but those are too dangerous. Good interfaces don’t rely on single-tap interactions for actions that can’t be undone. Sending a message to the wrong recipient could have extreme consequences, so the regular sheet for the app should always be included.

## SDK requirements
I’m not too familiar with the iOS SDK, but I presume it might not contain an API that allows social apps to share a list of their most frequently used contacts. In my prototype, the share sheet includes a Messenger contact, which might not work. Anyway, even Messages, Mail and Twitter would be a nice start.
