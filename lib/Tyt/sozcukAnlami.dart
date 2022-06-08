import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class sozcukAnlami extends StatefulWidget {
  const sozcukAnlami({Key? key}) : super(key: key);

  @override
  State<sozcukAnlami> createState() => _sozcukAnlamiState();
}

class _sozcukAnlamiState extends State<sozcukAnlami> {

  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sözcük Anlamı'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Colors.green.shade800],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: db.collection('sozcukAnlami').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView(
              children: snapshot.data!.docs.map((doc) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(doc['title1'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context1']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title2'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context2']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title3'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context3']),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['title4'],style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(doc['context4']),


                    ],
                  ),
                );
              }).toList(),
            );
          }
        },
      ),

      /*body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(left: 10)),
            Container(child: Text('Sözcükte Anlam (Sözcük Anlamı)', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Sözcükte anlam konusunu ele almadan önce “Sözcük nedir?” sorusunun cevabını bilmeliyiz. Çeşitli harflerin bir araya gelmesiyle anlamlı bir birim oluşturan yapı birimine sözcük ya da kelime denilmektedir. \n\n Sözcüklerin oluşması ve günümüzdeki kullanım şekillerine ulaşması, uzun yıllar süren bir süreçten sonra meydana gelmiştir. Her dilde kelimeler, seslerin düzenli bir sistemle bir araya gelmesiyle oluşmuştur. \n\n Ancak kelimeler kullanıldıkları cümleye göre farklılık gösterebilmektedir. \n\n Bugün hava soğuk olacakmış. (Gerçek anlam) \n Yeni sınıfında çok soğuk karşılandı. (Mecaz anlam)', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
            Container(child: Text('Anlam Bakımından Sözcükler', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Kelimelerin bir araya gelmesiyle cümleler, cümlelerin bir araya gelmesiyle paragraflar ve paragrafların bir araya gelmesiyle metinler oluşmaktadır. Dikkat edildiğinde metinlerin temelini oluşturan unsurların sözcükler olduğu görülebilir. \n\n Bu nedenle sözcüklerim hangi anlamda kullanıldıklarını bilmek son derece önem teşkil eder. Sözcükler bağlama göre, yani kullanıldıklarını cümleye göre farklı anlamlar kazanabilmektedir.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
            Container(child: Text('Gerçek Anlam', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Bir sözcüğün tek başına kullanıldığında tanımlanabilen anlamı, gerçek ya da temel anlam olarak adlandırılır. Kelimelerin sözlük anlamı da gerçek anlamdır. Gerçek anlam genellikle sözcüğün akla gelen ilk anlamı da olmaktadır. \n\n ⇒ Uyanır uyanmaz perdeyi açıp pencereden dışa baktım. \n\n Perde” kelimesini duyduğumuzda aklımıza ilk olarak “pencerelerin önüne takılıp ışığın girmesini engellemeye yarayan örtü” gelir. Bu cümlede “perde” sözcüğü aklımıza ilk gelen bu anlamıyla kullanıldığından gerçek anlam taşımaktadır.'),margin: EdgeInsets.all(10),),
            Container(child: Text('Yan Anlam', style: TextStyle(color: HexColor("32a852"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Yan anlamda kullanılan sözcükler gerçek anlamdan yola çıkılarak bir benzerlik sonrasında oluşmuştur. Yani bir varlığın ismi, şekil olarak ya da işlevsel olarak benzerlik kurulabilen başka bir varlıktan alınmıştır. Burada dikkat edilmesi gereken husus, sözcüğün gerçek anlamdan tam olarak kopmamış olmasıdır.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
          ],
        ),

      ),*/
    );
  }
}
