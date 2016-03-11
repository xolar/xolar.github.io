---
layout: post
comments: true
date:   2016-03-02 20:52
categories: proddit github-pages jekyll
title: Ce e un jekyll
---
În traducere liberă, de pe [situl lor][1], jekyll este un generator _blog-aware_ de site static. Dintr-o structură de directoare dichisite cu tot ce înseamnă un site, html-uri (gen template), imagini, css-uri etc. convertorul jekyll îţi creează un site static. 

De ce însă un site static? Un avantaj e că e mai rapid ca unul dinamic, sau cel mai corect ar fi să spun că consumă mai puţine resurse decât unul dinamic. 
Cred că cel mai mare avantaj pe care îl văd eu e simplitatea. Îţi editezi postările în markdown, html sau [textile][11] sau în alte formate folosind tot felul de extensii. Urmează convertirea. De fapt pasul ăsta e cel pe care îl face un site dinamic de fiecare dată. În cazul ăsta trebuie făcut doar după schimbări.
De siguranţă în comparaţie cu WordPress să nici nu pomenesc. 

[![WP](/images/wpvuln.jpg)][8]

17 pagini de vulnerabilităţi WordPress. Holy shit.

[GitHub][2], pentru cine n-a auzit încă de el, e cel mai cunoscut repository [Git][3]. Pe GitHub există şi codul reddit, la fel şi [proddit][4], alături de alte milioane de proiecte publice sau nu. Pe GitHub Pages îţi poţi genera însă şi dintr-un proiect GitHub un site _jekyll_. Hostingul e gratuit, rapid. Îţi permite folosirea propriului domeniu. Păi pentru ce sa nu-l încercăm? 

Cum îţi creezi un site din-ăsta într-o zi?! Îţi faci un cont pe GitHub apoi urmezi nişte [instrucţiuni][6] de pe GitHub. Întâi cauţi şi copiezi de pe undeva un template gratuit jekyll, cum ar fi de [aici][5] şi te apuci de editat situl până te prinzi ce uşor e totul. Poţi teoretic edita fişierele direct pe GitHub. Dacă eşti un _hecăr_ cu un linux în reţea, cum ar fi un rPi sau un [odroid C1][7] cu Ubuntu pe care îl foloseşti cu Kodi de obicei, îţi tragi jekyll pe cutie, dai un clone la repository-ul pe care tocmai ţi l-ai făcut, setezi jekyll în câţiva paşi simpli (te ajută google unde te blochezi), şi cu 

```shell
jekyll serve -w    
```
îţi testezi situl pe _http://cutie:4000_ şi îl purici până îţi trece ruşinea că o să-l pui să-l vadă toată lumea. 

Ciornă din _.bash_history_ (am urmat în mare comenzile de pe [GitHub Pages][6]): 


```shell
git clone https://github.com/xolar/xolar.github.io
echo "foobar" > index.html
git add --all
git commit -m "nambar oan"
git push -u origin master

sudo apt-get install ruby2.0

gem install bundler
``` 
Ruby e un limbaj de programare iar jekyll e un _gem_ (aplicaţie, librărie) ruby, iar _bundler_ e un fel de manager de _gem-uri_ pentru un anumit proiect. De Ruby poate altădată, fiind prima oară când am dat nas în nas cu el. 

```shell
bundle exec jekyll build --safe
sudo apt-get install ruby-dev
ruby -v
```

_/usr/bin/ruby_ ponta către versiunea 1.x, şi pentru jekyll trebuie musai minim 2 _sigh_

```shell
sudo apt-get install ruby-switch
update-alternatives --config ruby
sudo update-alternatives --config ruby
update-alternatives --query ruby
```
Doar aşa a mers:

```shell
sudo ln -sf /usr/bin/ruby2.0 /usr/bin/ruby
sudo ln -sf /usr/lib/ruby/2.0.0/ /usr/bin/gem
sudo apt-get install ruby2.0-dev
ln -sf /usr/include/ruby-2.0.0 /usr/lib/ruby/include
sudo ln -sf /usr/include/ruby-2.0.0 /usr/lib/ruby/include

bundle exec jekyll build --safe

bundle install github-pages

sudo apt-get install zlib1g
sudo apt-get install zlib1g-dev
sudo gem install github-pages
``` 
_gem-ul_ github-pages îl instalezi ca să fii sigur că eşti pe aceeaşi pagină cu versiunea de pe GitHub. Cam aşa:

```shell
xolar@bigsmall:~/xolar.github.io$ github-pages health-check
Checking domain proddit.com...
Everything looks a-okay! :)
```

Comentariile sunt asigurate de [disqus.com][10]. Am dat de el tot pe un site jekyll. E simplu de folosit şi compatibil cu jekyll. [În câţiva paşi simpli][9], se face un cont la ei, se adaugă ici-colo nişte linii de _\<script\>_ pe care ţi le dau ei, se adaptează template-urile să ştie disqus care link de la tine se potriveşte cu ce fir de discuţie de la ei şi voilà, ai comentarii pe blog. Dezavantajul e că depinzi de ei, avantajul e că e simplu şi gratuit. 

Dacă ai întrebări, lasă un comentariu, chiar şi anonim. 

[1]:    http://jekyllrb.com
[2]:	http://github.com
[3]:	https://en.wikipedia.org/wiki/Git_%28software%29
[4]:	https://github.com/xolar
[5]:	http://jekyllthemes.io/
[6]:	https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/
[7]:	http://www.hardkernel.com/main/products/prdt_info.php?g_code=G143703355573
[8]:	http://www.securityfocus.com/
[9]:	https://help.disqus.com/customer/portal/articles/472138-jekyll-installation-instructions
[10]:	https://disqus.com
[11]:	http://txstyle.org/
