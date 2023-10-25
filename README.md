Starfield (with an Oddball)
=========================
For this assignment you will make a animation of fireworks. This common animation is called a "starfield" since it can also be used to simulate movement through a field of stars. You may find slides 35 - 52 on <a href="https://docs.google.com/presentation/d/1Eldw10Y6tP7Ru6pjaCcZPhm5vxjnKjVrWLB8qT5IiF0/edit?usp=sharing">OOP--Inheritance & Encapsulation</a> presentation helpful.
 
Program requirements:
---------------------
Your program must use at least two classes to model the particles. A `Particle` super class and an `Oddball` sub class. All the particles must be stored in a single array of the super class type. Make sure you do not unnunnecessarily duplicate inherited variables and functions in the `Oddball` sub class. Your `Oddball` sub class need only contain a constructor and `void move()` and/or `void show()` so that the `Oddball` moves and/or looks different.


Suggested steps to completing this assignment
-----------------------------------
1. Fork [this repository](https://github.com/APCSLowell/Starfield)  
2. First, finish the `Particle` class. It will need the following members:
  * 5 member variables: X and Y positions, Color, Angle and Speed. (Hint: use doubles for X, Y, Speed and Angle)
  * `Particle()`, the class constructor
  * `void move()`, Takes the cos of the angle times the speed and adds it to the X coordinate. Does the same to Y with the sin of the angle.
  * `void show()`, draws the particle in the correct color
3. Now finish the program's `setup()` and `draw()`
4. Add one `Particle` variable, and make sure you can see it move
5. Add an array of type `Particle` and loop through it to move and show all the Particles.
9. Create an OddballParticle class that `extends` the Particle class.
12. Change the first element in the array to a `OddballParticle` instead of a `Particle`
13. Run your program. Make sure you can see the Oddball.
15. Submit the url of your working GitHub webpage to google classroom
Extensions: Have a fun and be creative. If you have extra time you may want to modify your program and add extra features and other types and arrangements of particles. Look at student work from the links below for other variations.

Samples of Student Work
-----------------------
[Jasmine](https://jbaao.github.io/Starfield/)   
[Jimmy](https://jiliu11.github.io/Starfield/)   
[Andrea](https://andrearobinowitz3.github.io/Starfield/)   
[Harry](https://harrywong3.github.io/Starfield/)   
[Jonathan](https://jong6.github.io/Starfield/)   
[Robin](https://robin-brown.github.io/Starfield/)   
[Patrick](https://patrickhu926.github.io/Starfield/)   
[Ethan](https://ethanlliu.github.io/Starfield/)   
[Katelyn](https://jizhang6.github.io/Starfield/)   
[Megan](https://megan-jn.github.io/Starfield/)   
[Duan](https://duan25.github.io/Starfield/)   
[Trinity](https://trinitywu.github.io/Starfield/)   
[Zhenyu](https://zhenyuyu1.github.io/Starfield/)   
[Katja](https://kajackson4.github.io/Starfield/)   
[Curis](https://curtislee603.github.io/Starfield/)   
[Marvin](https://machen15.github.io/Starfield/)   
[Elton](https://apcompsci-projects.github.io/Starfield/)   
[William](https://apcsweguan4.github.io/Starfield/)   
[Eustache](https://eustachewestphal.github.io/Starfield/)   
[Claire](https://clairerite.github.io/Starfield/)   
[Quillen](https://qugee.github.io/Starfield/)   
[Hieu](https://hieucodes.github.io/Starfield/)   
[Devin](https://devh2.github.io/Starfield/)   
[Kathy](https://kathyl1.github.io/Starfield/)   
[Damian](https://dalapuz.github.io/Starfield/)   
[Winston](https://wijeffries.github.io/Starfield/)   
[Jason](https://jasontov.github.io/Starfield/)
[William](https://3gui.github.io/Starfield/)   
[Justin](https://leejus168.github.io/Starfield/)   
[Aiden](https://hotaco.github.io/Starfield/)   
[Ken](https://keshfer.github.io/Starfield/)   
[Lilian](https://lilacs415.github.io/Starfield/)   
[Justine](https://justineorgel.github.io/Starfield/)   
[Dylan](https://sinfinite01.github.io/Starfield/)   
[Rameses](https://notcompetent.github.io/Starfield/)   
[Eddie](https://edd1153.github.io/Starfield/)   
[Rodger](https://coder123456.github.io/Starfield/)   
[Xinjian](https://xinjiannn.github.io/Starfield/)   
[Madeline](https://mhl343.github.io/Starfield/)   
[Jasmine](https://jasmine-c-16.github.io/Starfield/)   
[Ling](https://ling1729.github.io/Starfield/)   
[Jaqueline](https://jacqsmei.github.io/Starfield/)   
[Marlon](https://marlonsm.github.io/Starfield/)   
[Claire](https://clrafferty.github.io/Starfield/)   
[Phuoc](https://megagotnothing.github.io/Starfield/)    
[Sam](https://samxie23.github.io/Starfield/)   
[Kimia](https://kimiasattary.github.io/Starfield/)   
[Joaquin](https://jowarren137.github.io/Starfield/)   
[Johnny](https://jowong30.github.io/Starfield/)   
[Clarence](https://clarencechung.github.io/Starfield/)   
[Claire](https://cmbeaudin.github.io/Starfield/)   
[Rahul](https://rabulsara02.github.io/Starfield/)   
[Edison](https://edchen5.github.io/Starfield/)   
[Gabriel](https://gazhu1.github.io/Starfield/)   
[Anna](https://annaorgel.github.io/Starfield/)   
[Kang](https://kangryu.github.io/Starfield/)   
[Cheryl](https://cherhchen.github.io/Starfield/)   
[Chris](https://chlee40.github.io/Starfield/)   
[Hazel](https://hadrake8.github.io/Starfield/)   
[Max](https://maklivans.github.io/Starfield/)   
[Fiona](https://fiyim.github.io/Starfield/)   
[Noah](https://bizaark.github.io/Starfield/)   
[Melanie](https://metam2.github.io/Starfield/)   
[Qi](https://qiyang2.github.io/Starfield/)   
[Tarsa](https://starfield.its-mustard.me/)   
[Kai](https://kajjchang.github.io/Starfield/)   
[Luna](https://lunaisabel.github.io/Starfield/)   
[Tomas](https://todeluco.github.io/Starfield/)   
[Reily](https://reilyfairchild.github.io/Starfield/)   
[Marvin](https://malee31.github.io/StarfieldProcessing/)   
[Kelly](https://kellyye22.github.io/Starfield/)   
[Andy](https://andy-wen1.github.io/Starfield/)   
[Matt](https://madyer1.github.io/Starfield/)   
[Teresa](https://telee1.github.io/Starfield/)   
[Andrew](https://a431.github.io/Starfield/)   
[Kaitlyn](https://therealkaitlyn.github.io/Starfield/)   
[Ayaka](https://aychou.github.io/Starfield/)   
[Rafael](https://rafaelcenzano.github.io/Starfield/)   
[Francesca](https://frprivalova.github.io/Starfield/)   
[Theo](https://akir6939.github.io/Starfield/)   
[Robert](https://frestho.github.io/Starfield/)   
[Antonio](https://anpacheco2.github.io/Starfield/)   
[Cara](https://cakuk.github.io/Starfield/)   
[Ashley](https://ashleylai1.github.io/Starfield/)    
[Maanav](https://gandhigang.github.io/Starfield/)   
[Antonio](https://andzibmis.github.io/Starfield/)   
[Jonathan](https://jonrfu.github.io/Starfield/)   
[Maanav](https://gandhigang.github.io/Starfield/)   
[Michael](https://wasabi-jpg.github.io/Starfield/)   
[Anthony](https://anwen2.github.io/Starfield/)   
[Vicky](https://vickyguan3.github.io/Starfield/)   
[Marisa](https://saeriam.github.io/Starfield/)   
[Fred](https://fredxhua.github.io/Starfield/)   
[Briana](https://brli6.github.io/Starfield/)   
[Justin](https://ju5t1nw.github.io/Starfield/)   
[Mia](https://chenmia.github.io/Starfield/)   
[Jalen](https://jalenng.github.io/Starfield/)   
[Ethan](https://ethan-ap-cs.github.io/Starfield/)   
[Andy](https://anli28.github.io/Starfield/)   
[Albert](https://albertgiang.github.io/Starfield/)   
[Annie](https://anli32.github.io/Starfield/)   
[Jessica](https://jessical26.github.io/Starfield/)   
[Susan](https://susanm87.github.io/Starfield/)   
[Ian](https://iatang21.github.io/Starfield/)   
[David](https://daamaya.github.io/Starfield/)   
[Jessie](https://jechen30.github.io/Starfield/)   
[Marc](https://alltheusernamesdontworkexceptmine.github.io/Starfield/)   
[Amy](https://aimysun.github.io/Starfield/)   
[Racine](https://ruixinsun.github.io/Starfield/)   
[Kam](https://katam8.github.io/Starfield/)   
[Ethan](https://ethantruong.github.io/Starfield/)   
[Peter](https://peterwu1205.github.io/Starfield/)   
[Andy](https://andyyao1.github.io/Starfield/)   
[Jason](https://everyusernameitrywentwrong-jason-ye.github.io/Starfield/)   
[Alexis](https://alexisapcs.github.io/Starfield/)   
[Diego](https://diegoleong.github.io/Starfield/)   
[Lawrence](https://lawrencelowell.github.io/Starfield/)   
[Willis](https://willisli.github.io/Starfield/)   
[Brandon](https://btlsandwich.github.io/Starfield/)   
[Devin](https://dely4.github.io/Starfield/)   
[Alex](https://alngo1.github.io/Starfield/)   
[Wesley](https://wesleynhan.github.io/Starfield/)   
[Richard](https://riprivalov.github.io/Starfield/)   
[Rowan](https://rowanmckereghan.github.io/Starfield/)   
[Esther](https://estherchung83.github.io/Starfield/)   
[Calvin](https://callmecalvin808.github.io/Starfield/)   
[Audrey](https://chubbibunniomnomnom.github.io/Starfield/)   
[Juliana](https://solojuliana.github.io/Starfield/)   
[Mampu](https://koooolk.github.io/Starfield/)   
[Michael](https://psyduckjar.github.io/Starfield/)   
[Emma](https://emmab3.github.io/Starfield/)   
[Brendan](https://brchao.github.io/Starfield/)   
[Michelle](https://michellet1682.github.io/Starfield/)   
[Lolita](https://major-crimes.github.io/Starfield/)   
[Gee](https://trtran8.github.io/Starfield/)   
[Nathan](https://nathanw1510.github.io/Starfield/)   
[Jayde](https://jaydewong.github.io/Starfield/)   
[Joshua](https://jowong1.github.io/Starfield/)   
[Mari](https://mariwoodworth.github.io/Starfield/)   
[Angelica](https://anlam4.github.io/Starfield/)   
[Cappillen](https://apcscap.github.io/Starfield/)   
[Jennifer](https://jp4099.github.io/Starfield/)   
[Brendan](https://brleunga.github.io/Starfield/)   
[Lucian](https://lucianli.github.io/Starfield/)   
[Wen](https://wizardowolfini.github.io/Starfield/)   
[Yaoquan](https://yachen16.github.io/Starfield/)   
[Andrew](https://abootatoo.github.io/Starfield/)   
[Alex](https://norwegianwoods.github.io/Starfield/)   
[Freesia](https://freesiaf.github.io/Starfield/)   
[Dylan](https://dyhuynh.github.io/Starfield/)   
[Victor](https://victorchaan.github.io/Starfield/)   
[Jing](https://jili53.github.io/Starfield/)   
[Wilson](https://wlama.github.io/Starfield/)   
[Ryan](https://someguy13.github.io/Starfield/)   
[Natalie](https://nabunimovitz.github.io/Starfield/)   
[Sherissa](https://sherissago.github.io/Starfield/)   
[Bryce](https://brmao123.github.io/Starfield/)   
[Melinda](https://melindali255.github.io/Starfield/)  
[Raymond](https://mild1y.github.io/Starfield/)   
[Emma](https://emblenkinsop.github.io/Starfield/)   
[Joe](https://joehuang1108.github.io/Starfield/)   
[Jennifer](https://noougat.github.io/Starfield/)   
[Ravi](https://ravik0.github.io/Starfield/)   
[Elizabeth](https://elkirwan.github.io/Starfield/)   
[James](https://james168ma.github.io/Starfield/)   
[Chase](https://chaseabm.github.io/Starfield/)   
[Vincent](https://ss963213.github.io/Starfield/)   
[Hiroki](https://hirokimasudathaya.github.io/Starfield/)   
[Andrew](https://ansimasfusd.github.io/Starfield/)   
[Christopher](https://chrisc641.github.io/Starfield/)   
[Wilson](https://strawhatwilson.github.io/Starfield/)   
[Ashton](https://riseofthesaber.github.io/Starfield/)   
[Cynthia](https://cylee1.github.io/Starfield/)   
[Lalith](https://darkefox.github.io/Starfield/)   
[Gordon](https://milkteadailo.github.io/Starfield/)   
[Lily](https://oulilyapjava.github.io/Starfield/)   
[Alex](https://parkore9920.github.io/Starfield/)   
[Jeffrey](https://jechen27.github.io/Starfield/)   
[Alber](https://albertma222.github.io/Starfield/)   
[Ryan](https://rylee12.github.io/Starfield/)   
[Kelvin](https://chan34kelvin.github.io/Starfield/)   
[Maryann](https://mariann-lowellapcs.github.io/Starfield/)   
[Jeffrey](https://codingjeff.github.io/Starfield/)   
[Michelle](https://misyel.github.io/Starfield/)   
[Benjamin](https://belee3.github.io/Starfield/)   
[Ben](https://belee7.github.io/Starfield/)   
[Kelly](https://kellykelp.github.io/Starfield/)   
[Linus](https://linusng15.github.io/Starfield/)   
[Karlee](https://changkarlee.github.io/Starfield/)   
[Trevor](https://tlouie16.github.io/Starfield/)   
[Justin](https://jolucky.github.io/Starfield/)   
[Karina](https://kaanders17.github.io/Starfield/)   
[Bruno](https://bruno-415.github.io/Starfield/)   
[Damian](https://dabogdon.github.io/Starfield/)   
[Paolo](https://paolo415.github.io/Starfield/)   
[William](https://wicao1.github.io/Starfield/)   
[Alvin](https://alchan6.github.io/Starfield/)   
[Christina](https://christina88chan.github.io/Starfield/)   
[Haden](https://hachan-beep.github.io/Starfield/)   
[Joanne](https://joannechenn.github.io/Starfield/)   
[Irisa](https://irisac415.github.io/Starfield/)   
[Christopher](https://chgee.github.io/Starfield/)   
[Wing](https://wilai3.github.io/Starfield/)   
[Caitlyn](https://calam1818.github.io/Starfield/)   
[Breanna](https://brlau6.github.io/Starfield/)   
[Matthew](https://malee8.github.io/Starfield/)   
[Ye](https://yejinl12.github.io/Starfield/)   
[Van](https://vanthebot.github.io/Starfield/)   
[Edward](https://edpilotte.github.io/Starfield/)   
[Aiden](https://aidenshiu.github.io/Starfield/)   
[Andrew](https://antan2.github.io/Starfield/)   
[Jeffrey](https://jethidacoder.github.io/Starfield/)   
[Eric](https://desolaterakan.github.io/Starfield/)   
[Dylan](https://dy-alt.github.io/Starfield/)   
[Mira](https://mira16-v.github.io/Starfield/)   
[Austin](https://auwong1.github.io/Starfield/)   
[Jason](https://jawong32.github.io/Starfield)   
[Ivana](https://ivxu24.github.io/Starfield/)   
[Gary](https://gary055.github.io/Starfield/)   
[Emily](https://emyip.github.io/Starfield/)   
[Akemi](https://akemi1222.github.io/Starfield/)   
[William](https://williamsgithubaccount.github.io/Starfield/)   
[Stephen](https://stevenmeap.github.io/Starfield/)   
[Daniel](https://wood09.github.io/Starfield/)   
[Andrew](https://guppies23456.github.io/Starfield/)   
[Luke](https://luked808.github.io/Starfield/)   
[Liam](https://ligiraldo.github.io/Starfield/)   
[Hayden](https://hakwok.github.io/Starfield/)   
[Jacob](https://jalambert.github.io/Starfield/)   
[Noella](https://noellalee1.github.io/Starfield/)   
[Caleb](https://caleung3.github.io/Starfield/)   
[Gabriel](https://galeung24.github.io/Starfield/)   
[Eric](https://erliao137.github.io/Starfield/)   
[Joyce](https://joliu8.github.io/Starfield/)   
[Vivian](https://vivianmak.github.io/Starfield/)   
[Lexian](https://lexinguyen.github.io/Starfield/)   
[Rafael](https://iamrafaelllll.github.io/Starfield/)   
[Nathaniel](https://nathantjong.github.io/Starfield/)   
[Nicolas](https://nireiss.github.io/Starfield/)   
[Brian](https://brsen.github.io/Starfield/)   
[Stella](https://stellasit0.github.io/Starfield/)   
[Wendy](https://lafmj.github.io/Starfield/)   
[Joseph](https://josephteng.github.io/Starfield/)   
[Joshua](https://jovegher.github.io/Starfield/)   
[Brianna](https://brwong8.github.io/Starfield/)   
[Justin](https://justin-pyth.github.io/Starfield/)   
[Antonio](https://antonio-yap1.github.io/Starfield/)   
[Caden](https://cayeung1.github.io/Starfield/)   
[TommyJun](https://toyu3.github.io/Starfield/)   
[David](https://davidzhang3.github.io/Starfield/)   
[Darren](https://darrenzhao1.github.io/Starfield/)   
[Huishan](https://huishancai.github.io/Starfield/)   
[Brennan](https://brennan-c.github.io/Starfield/)   
[Jennifer](https://jennifer0525.github.io/Starfield/)   
[Deion](https://deionchaudhary.github.io/Starfield/)   
[Aaron](https://aaronnchen.github.io/Starfield/)   
[Jackie](https://jachen16.github.io/Starfield/)   
[Christina](https://chchung1.github.io/Starfield/)   
[Joselino](https://joselinodt.github.io/Starfield/)   
[Nathan](https://naguan1.github.io/Starfield/)   
[Tushig](https://tushigitgel.github.io/Starfield/)   
[Kyle](https://kylam1.github.io/Starfield/)   
[Noelle](https://noellelam.github.io/Starfield/)   
[Audrey](https://audreylau8.github.io/Starfield/)   
[William](https://williamlaw2005.github.io/Starfield/)   
[Jenna](https://jenna1910.github.io/Starfield/)   
[Ryan](https://chknwngs999.github.io/Starfield/)   
[Nathan](https://naleung1.github.io/Starfield/)   
[Ivy](https://ivyylin.github.io/Starfield/)   
[Gabriel](https://gabriel-low-06.github.io/Starfield/)   
[Joyce](https://joycema212.github.io/Starfield/)   
[Pyry](https://pyrym24.github.io/Starfield/)   
[Mika](https://mikanguyenn.github.io/Starfield/)   
[Sophia](https://sophiapeckner.github.io/Starfield/)   
[Ethan](https://etqiu.github.io/Starfield/)   
[Emely](https://emsarcenobravo.github.io/Starfield/)   
[Nate](https://nsirival.github.io/Starfield/)   
[Koen](https://koendwong.github.io/Starfield/)   
[Annie](https://anxu9.github.io/Starfield/)   
[Jason](https://jasonzhong3.github.io/Starfield/)   
[Ivan](https://ivzhu1.github.io/Starfield/)   
[Tobias](https://tobyzuercher.github.io/Starfield/)   
[Willa](https://willaandrade.github.io/Starfield/)  
[James](https://jamesbackstrom43.github.io/Starfield/)  
[Kathleen](https://kathb3.github.io/Starfield/)  
[Juan](https://jucalvohuerta.github.io/Starfield/)  
[Toby](https://tobyjchan.github.io/Starfield/)  
[Ryan](https://rchen0902.github.io/Starfield/)  
[Ryan](https://rychick.github.io/Starfield/)  
[Evangeline](https://evchien.github.io/Starfield/)  
[Miriam](https://mifreedman.github.io/Starfield/)  
[Ethan](https://periodicethanox.github.io/Starfield/)  
[Loren](https://l0rengigi123.github.io/Starfield/)  
[Sally](https://sahong3.github.io/Starfield/)  
[Tennyson](https://tehuang1.github.io/Starfield/)  
[Allynaraizel](https://allynaj.github.io/Starfield/)  
[Alvin](https://allau1.github.io/Starfield/)  
[Sonia](https://sonia-who.github.io/Starfield/)  
[AndreiRock](https://anliterato.github.io/Starfield/)  
[Maxwell](https://maxapcs.github.io/Starfield/)  
[Humphrey](https://humphreyylu.github.io/Starfield/)  
[Hannah](https://hannahlucas987.github.io/Starfield/)  
[Piero](https://piero-lujan-pedreschi.github.io/Starfield/)  
[Fiona](https://f-iona.github.io/Starfield/)  
[Isaac](https://isaacmai.github.io/Starfield/)  
[Karla](https://karla0311.github.io/Starfield/)  
[Saw](https://sawyn01.github.io/Starfield/)  
[Aiden](https://aip24.github.io/Starfield/)  
[Theo](https://jssuperior.github.io/Starfield/)  
[Tara](https://tara-tiong.github.io/Starfield/)  
[Maya](https://mawang4.github.io/Starfield/)  
[Nicholas](https://quantalope.github.io/Starfield/)  
[Samson](https://xusamson8.github.io/Starfield/)  
[Patrick](https://patyao.github.io/Starfield/)  
[Diego](https://diegoyuhuang.github.io/Starfield/)  
[Luca](https://luca321222.github.io/Starfield/?authuser=0)  
[Cuiyin](https://anna-c2.github.io/Starfield/?authuser=0)  
[Laura](https://lachen2.github.io/Starfield/?authuser=0)  
[Noel](https://nochen1.github.io/Starfield/?authuser=0)  
[Yiyuan](https://2005benchen.github.io/Starfield/?authuser=0)  
[Artiom](https://lilrussian.github.io/Starfield/?authuser=0)  
[Samantha](https://sagee1.github.io/Starfield/?authuser=0)  
[Charlotte](https://ssrendiptiy.github.io/Starfield/?authuser=0)  
[Dylan](https://dylanh8.github.io/Starfield/?authuser=0)  
[Joanna](https://2sekai.github.io/Starfield/?authuser=0)  
[Andy](https://kxnzite.github.io/Starfield/?authuser=0)  
[Victor](https://vi-l.github.io/Starfield/?authuser=0)  
[Ivan](https://ivli1.github.io/Starfield/?authuser=0)  
[Kaijun](https://kawaiikai.github.io/Starfield/?authuser=0)  
[Michelle](https://michelle4570.github.io/Starfield/?authuser=0)  
[Kyle](https://kyle-v420.github.io/Starfield/?authuser=0)  
[Daniel](https://danielmarkarov.github.io/Starfield/?authuser=0)  
[Jerry](https://j3rrrry.github.io/Starfield/?authuser=0)  
[Rock](https://baoquangu.github.io/Starfield/?authuser=0)  
[Gage](https://gschopen.github.io/Starfield/?authuser=0)  
[Angela](https://angieela.github.io/Starfield/?authuser=0)  
[Ivona](https://ivonasutilovic1.github.io/Starfield/?authuser=0)  
[Sandy](https://satam2.github.io/Starfield/?authuser=0)  
[Johnathan](https://jotran6.github.io/Starfield/?authuser=0)  
[KaloonRidge](https://ridgewalkerschool.github.io/Starfield/?authuser=0)  
[Robin](https://robin-win.github.io/Starfield/?authuser=0)  
[Kayla](https://kawong2.github.io/Starfield/?authuser=0)  
[Justin](https://daqk1.github.io/Starfield/?authuser=0)  
[Leanna](https://lewu7.github.io/Starfield/?authuser=0)  
[Philix](https://philix.github.io/Starfield/?authuser=0)  
[Audrey](https://audreyyann.github.io/Starfield/?authuser=0)  
[Emily](https://emyang1.github.io/Starfield/?authuser=0)  
[Haoheng](https://haoxd123.github.io/Starfield/?authuser=0)  
[Gabriel](https://gabrielzub.github.io/Starfield/?authuser=0)  
[Alejandro](https://alejandrofpv.github.io/Starfield/?authuser=0)  
[Angela](https://angelachen690.github.io/Starfield/?authuser=0)  
[Kelvin](https://shibainuinuinu.github.io/Starfield/?authuser=0)  
[Lily](https://lantom101.github.io/Starfield/?authuser=0)  
[Aaron](https://hilla99.github.io/Starfield/?authuser=0)  
[Terrance](https://tehoang-apcsa.github.io/Starfield/?authuser=0)  
[Jessica](https://jessicah7.github.io/Starfield/?authuser=0)  
[Grace](https://huang-g.github.io/Starfield/?authuser=0)  
[Daniil](https://hugistaken.github.io/Starfield/?authuser=0)  
[Matthew](https://matthewlau217.github.io/Starfield/?authuser=0)  
[Leanna](https://lele452005.github.io/Starfield/?authuser=0)  
[Andre](https://anlee16.github.io/Starfield/?authuser=0)  
[Calvin](https://cow-van.github.io/Starfield/?authuser=0)  
[Aaron](https://aaronluii.github.io/Starfield/?authuser=0)  
[Justin](https://mintmilktea.github.io/Starfield/?authuser=0)  
[Kyla](https://kylama.github.io/Starfield/?authuser=0)  
[Calvin](https://camei3.github.io/Starfield/?authuser=0)  
[Yuxi](https://dandelioncreek.github.io/Starfield/?authuser=0)  
[Aaron](https://aatan21.github.io/Starfield/?authuser=0)  
[Hao](https://haot2005.github.io/Starfield/?authuser=0)  
[Katie](https://kawang4.github.io/Starfield/?authuser=0)  
[Benjamin](https://benwill151.github.io/Starfield/?authuser=0)  
[Matthew](https://matttwongg.github.io/Starfield/?authuser=0)  
[Wanyan](https://cheesicake.github.io/Starfield/?authuser=0)  
[Kaitlyn](https://kaitlynzhou.github.io/Starfield/?authuser=0)  
[Austin](https://aublaylock.github.io/Starfield/?authuser=0)  
[Evan](https://evanchen-e.github.io/Starfield/?authuser=0)  
[Xiaoyi](https://jceychen.github.io/Starfield/?authuser=0)  
[Damien](https://dachowmien.github.io/Starfield/?authuser=0)  
[Marie-Fleur](https://marie-fleur.github.io/Starfield/?authuser=0)  
[Richard](https://richardfongg.github.io/Starfield/?authuser=0)  
[Supath](https://supathgurung.github.io/Starfield/?authuser=0)  
[Amy](https://amyhuang4.github.io/Starfield/?authuser=0)  
[Lisa](https://llisahuang.github.io/Starfield/?authuser=0)  
[Liheng](https://likuang2.github.io/Starfield/?authuser=0)  
[Garvin](https://garvinkwong.github.io/Starfield/?authuser=0)  
[Ethan](https://ethan893.github.io/Starfield/?authuser=0)  
[Ekaterina](https://eklevinton.github.io/Starfield/?authuser=0)  
[Alice](https://alliang1.github.io/Starfield/?authuser=0)  
[Raymond](https://raymondlui1.github.io/Starfield/?authuser=0)  
[Jocelyn](https://joce7yn.github.io/Starfield/?authuser=0)  
[Davyn](https://pandasharkkk.github.io/Starfield/?authuser=0)  
[Francisco](https://frponce.github.io/Starfield/?authuser=0)  
[Roan](https://rwrftr.github.io/Starfield/?authuser=0)  
[Jenny](https://planttofu.github.io/Starfield/?authuser=0)  
[Justin](https://github.com/Jaguar-p5/Starfield?authuser=0)  
[Jason](https://jasonshue.github.io/Starfield/?authuser=0)  
[Amiya](https://pinksweetmango.github.io/Starfield/?authuser=0)  
[Ngoc](https://ngtrann.github.io/Starfield/?authuser=0)  
[Niko](https://nitsurutome.github.io/Starfield/?authuser=0)  
[Naomi](https://naotungnach.github.io/Starfield/?authuser=0)  
[Caspar](https://crispycube.github.io/Starfield/?authuser=0)  
[Charlene](https://broccolihater.github.io/Starfield/?authuser=0)  
[Stanley](https://stanleyxu1.github.io/Starfield/?authuser=0)  
[Ella](https://ellayam.github.io/Starfield/?authuser=0)  
[Noah](https://noahyang667.github.io/Starfield/?authuser=0)  
[Yasmine](https://github.com/APCSLowell/Starfield/compare/master...Yasminejy:Starfield:patch-3?authuser=0)  
[Ruibin](https://bennotben1224.github.io/Ben-Yu---Starfield/?authuser=0)  
[Wingyan](https://wingyanyu0.github.io/Starfield/?authuser=0)  
[Joseph](https://joyuen27.github.io/Starfield/?authuser=0)  

