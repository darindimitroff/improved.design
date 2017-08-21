---
layout: post
title:  The need for an “Online” system indicator
date:   February 29, 2016
image: /images/internet-indicator-hero.png
time: 3.5
---

Going offline for a while feels amazing when it’s us who pick when it happens. On the other hand, going offline unexpectedly because of a network problem is frustrating. It happens all the time: poor home/office connections, during flights, in areas with poor wireless connectivity, among others.

One of the most frustrating things about spontaneously lost connections is that we realize what’s happened much later: when the application we’re using stops working properly. Some of those moments might actually feel pretty sad. Your favorite song stopping right before the best part. A “Typing” indicator in Messenger that stays up for too long. An important upload that gets stuck at 98% until the dreaded error message appears, disrupting our flow with a jumping icon in the dock. We’ve all been there.

While a 24/7/365 networking stack without any problems along the way is an impossible task, announcing the disruption of internet connectivity to the user could be done a bit more gracefully.

## Dropbox already does it
Relying on the Wifi menu bar item works in some cases. However, there are a lot of times when the device stays connected to the router and the problem is somewhere further away from the user. In those cases, the Wifi (or Ethernet, Bluetooth, USB) icons don’t have anything to do with the problem, so they preserve their active state.

When it comes to desktop platforms, OS X to be specific, there are myriad of apps that already implement this concept. If you are using Dropbox, Google Drive or Droplr, for example, you already have a recognizable icon that is grayed out when you’re offline. Using those as indicators for a system status like this is, to say the least, not semantic.

I’m sure the concept feels obvious and most of you have considered it at some point, consciously or subconsciously. So many products nowadays have their own Online indicators, yet the system that serves as their environment deals with the problem quite primitively.

![The internet indicator icon shows the classic network icon Apple' uses: lines of light circling around the Earth. Here it's shown it it's on and off states.](/images/internet-indicator-icon.png){: .2x }

## Keeping it consistent with the system
I don’t consider myself a specialist in visual design, so I didn’t put too much sweat into the icon. Designing monochrome glyphs in a 16px x 16px frame is challenging. I’m not a huge fan of Apple’s classic symbol for… Internet stuff (?), but I decided to stick with it. I tried to keep it legible with some additional pixel fitting, but it’s still a bit fuzzier than Apple’s own icons.

## Adding some functionality
A menu bar item without a menu would feel weird. More importantly, the menu bar menus are a great way to add useful controls without wasting even a single additional pixel. They serve both as indicators and buttons.

![An isolated view of the menu.](/images/internet-indicator-menu.png){: .2x }

**The more you know**: while working on this concept, I realized Apple uses an ellipsis (...) after menu options that lead to external menus. It's super old school, but I love it. Try looking for this pattern in software altogether, it's easy to go by.

The menu’s structure is based on OS X’s battery menu. Clicking on the icon reveals a small list of information and options:

- **internet connection status** (already stated by the icon)
- **connection method**
- **a list of all apps accessing the internet**. Feels like this might be helpful the same way we have lists of apps that use a lot of battery or mobile data on iOS. The apps are sorted by the amount of data they are using.
- a button to quickly **switch to tethering** when the primary connection drops
- a shortcut to the **network settings**

The system could also use notifications to announce when it goes online or offline. The main goal is to signal the user immediately, before they are exposed to frustrating and award experiences when their start malfunctioning.

## iOS
A similar system could work on iOS, but I’m not sure it needs it. The system already displays a spinner in the status bar when an app uses the connection. Another thing is that we don’t stare at the screens of our mobile devices all the time while we’re using them. A lot of apps also use data in the background or in sleep mode. This is why Apple’s own data statistics in Settings feel more convenient.
