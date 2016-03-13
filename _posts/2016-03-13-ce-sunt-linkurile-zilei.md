---
layout: post
comments: true
date:   2016-03-13 13:11
categories: proddit linkurile-zilei programare
title: Ce sunt linkurile zilei
---

Linkurile zilei sunt pentru cei care s-au obisnuit să găsească ceva pe proddit pe care să dea click. În mod evident, doar eu mai pot posta acum. N-ar trebui să fie o problemă asta considerând că majoritatea postărilor veneau tot de la mine pe vechiul proddit.

Ca să-mi fac viaţa mai uşoară am făcut pe odroid-ul (Ubuntu 14.04) menţionat în [postarea despre jekyll][1] o mini-aplicaţie pe _[node.js][2]_, pe care rulează în browser un _form html_ ca mai jos (ca bookmarkleturile pe vechiul proddit). Acolo pot edita titlul, url-ul, categoriile şi un comentariu. După _submit_, nişte funcţii _javascript_ creează sau completează un fişier în format _markdown_. La urmă e chemat un script care face un _push_ pe github la noua postare. Imaginile şi postările youtube sunt integrate ca imagini. 

### [![pic](/images/formproddit.jpg)](/images/formproddit.jpg)

Un job _crontab_ citeşte dimineaţa din [feed-ul RSS proddit][3] şi postează pe [twitter][3]. De pe twitter se sincronizează postările pe [facebook][5].

Cam atât! O duminică faină.

[1]:	http://proddit.com/2016/03/02/ce-e-un-jekyll/
[2]:	https://nodejs.org/en/
[3]:	https://proddit.com/feed
[4]:	https://twitter.com/proddit
[5]:	https://www.facebook.com/proddit
