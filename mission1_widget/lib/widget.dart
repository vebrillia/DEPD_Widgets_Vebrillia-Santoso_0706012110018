import 'package:flutter/material.dart';

class WidgetPage extends StatefulWidget {
  const WidgetPage({super.key});

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  bool love = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // text mission 1
        title: Text(
          "Mission 1",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.pink[100],
      ),
      // banner utama
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: [Colors.pink.shade100, Colors.white],
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(4),
                    width: double.infinity,
                    height: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'images/blackpink.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )),

              // 4 gambar kecil di 1 row
              Flexible(
                  flex: 1,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/jisoo.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/jennie.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/lisa.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: AspectRatio(
                            aspectRatio: 1.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/rose.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),

              // judul
              Flexible(
                flex: 0,
                child: Text(
                  "Black Pink",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              // paragraph
              Expanded(
                  child: SingleChildScrollView(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                        "Blackpink (Korean: 블랙핑크; RR: Beullaekpingkeu, stylized in all caps or as BLɅϽKPIИK) is a South Korean girl group formed by YG Entertainment, consisting of members Jisoo, Jennie, Rosé, and Lisa. Dubbed the biggest girl group in the world, they are regarded as the most successful Korean girl group internationally and one of the leaders of the Korean Wave. They are stylistically associated with the girl crush concept in K-pop—exploring themes of self-confidence and female empowerment.Blackpink debuted in August 2016 with their single album Square One, which featured Whistle and Boombayah, their first number-one entries on South Korea's Gaon Digital Chart and the US Billboard World Digital Songs chart, respectively. It was followed by the single album Square Two in November, whose song Playing with Fire was the first by a Korean girl group to enter the Billboard Canadian Hot 100. The group expanded their global reach with Ddu-Du Ddu-Du (2018), which was the first song by a Korean female group to enter the UK Singles Chart and receive a certification in the United States. Its music video was the first by a Korean group to surpass one and two billion views on YouTube, and remains the most-viewed by a Korean group to date. Blackpink's 2018 song Kiss and Make Up was the first by a Korean group to receive a certification in the UK and a platinum certification in Australia. Their music videos for Kill This Love (2019) and How You Like That (2020) each set records for the most-viewed music video within the first 24 hours of release, with the latter breaking five Guinness World Records.Blackpink is the highest-charting female Korean act on the US Billboard Hot 100, peaking at number 13 with Ice Cream (2020), and on the US Billboard 200, peaking at number one with Born Pink (2022). Blackpink's studio albums The Album (2020) and Born Pink each broke the record for the best-selling female album of all time in South Korea, becoming the first to surpass one million and two million copies sold, respectively. Born Pink was the first album by a girl group to reach number one on the Billboard 200 since Danity Kane in 2008 and set two Guinness World Records as the first album by a Korean girl group to top the Billboard 200 as well as the UK Albums Chart. The album's lead single Pink Venom (2022) was the first song by a Korean group to reach number one on Australia's ARIA Singles Chart and the first by a girl group to reach number one on the Billboard Global 200.  Blackpink have broken numerous records throughout their career; their Born Pink World Tour (2022–23) became the highest grossing concert tour by a female group. They have the most-subscribed and most-viewed music artist channel on YouTube, and are the most-followed and most-streamed girl group on Spotify. Their other accolades include New Artist of the Year at the Golden Disc Awards and Seoul Music Awards, Female Group of the Year at the MAMA Awards and Circle Chart Music Awards, and Group of the Year at the MTV Video Music Awards, making them the first girl group to win the award in the 21st century. Blackpink was also the first female Korean group to receive a nomination for a Brit Award and the first girl group to enter Forbes' 30 Under 30 Asia, and was named Time's 2022 Entertainer of the Year. The group has been acknowledged as one of the most powerful celebrities in South Korea by Forbes Korea (ranking within the top three in 2019–23), and by former South Korean President Moon Jae-in as a global K-pop phenomenon helping spread K-pop worldwide")
                  ],
                ),
              ))
            ],
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                love = !love;
              });
            },
            child: Icon(
              Icons.favorite,
              color: love ? Colors.red : Colors.grey,
            ),
            backgroundColor: Colors.white,
            shape: CircleBorder(),
          ),
        ),
      ]),
    );
  }
}
