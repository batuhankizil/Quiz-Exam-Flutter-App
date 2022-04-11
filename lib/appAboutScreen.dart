import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class appAboutScreen extends StatefulWidget {
  const appAboutScreen({Key? key}) : super(key: key);

  @override
  State<appAboutScreen> createState() => _appAboutScreenState();
}

class _appAboutScreenState extends State<appAboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edulive Hakkında'),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(left: 10)),
            Container(child: Text('Gizlilik bilgileri bölümü hakkında', style: TextStyle(color: HexColor("5E5E5E"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Yeni gizlilik bilgileri bölümü bir uygulamanın tüm Anonim platformlarındaki gizlilik prosedürlerini anlamanıza yardımcı olur. Her uygulamanın ürün sayfasında, uygulama tarafından toplanabilecek bazı veri türleri hakkında bilgi edinebilir ve bu verilerin sizinle ilişkilendirilip ilişkilendirilmediğini veya sizi izlemek için kullanılıp kullanılmadığını öğrenebilirsiniz. \n\n Uygulama Gizliliği bölümünde, uygulamanın toplayabileceği konum, kişi bilgileri, sağlık bilgileri gibi farklı veri türleri ve geliştiricinin veya üçüncü taraf iş ortaklarının bu verileri kullanabileceği reklam ya da analiz gibi çeşitli yollar açıklanmaktadır.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
            Container(child: Text('Sizinle İlişkilendirilen Veriler', style: TextStyle(color: HexColor("5E5E5E"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Sizinle ilişkilendirilmiş olarak listelenen veriler, bunların kimliğinizle ilişkilendirilecek bir şekilde toplandığını gösterir. Örneğin, söz konusu veriler hesabınızla, aygıtınızla veya telefon numaranız gibi bilgilerinizle ilişkilendirilebilir. Verilerin toplandığını ancak sizinle ilişkilendirilmediğini beyan edebilmesi için geliştiricinin, verileri toplamadan önce kullanıcı kimliği benzeri doğrudan kimlik tanıtıcıların kaldırılması gibi gizlilik korumalarını kullanması ve topladıktan sonra verilerin kimliğinizle yeniden ilişkilendirilmesi gibi uygulamalardan kaçınması gerekir.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
            Container(child: Text('Sizi İzlemek İçin Kullanılan Veriler', style: TextStyle(color: HexColor("5E5E5E"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Sizi izlemek için kullanılan veriler, uygulamada yer alan ve başka şirketlerin uygulamalarından, web sitelerinden veya çevrimdışı mülklerinden toplanan verilerle ilişkilendirilerek reklam sunmak amacıyla kullanılan ya da bir veri simsarıyla paylaşılan verilerdir.'),margin: EdgeInsets.all(10),),
            Container(child: Text('Veri kullanımı ve gizlilik prosedürleri hakkında ek bilgiler', style: TextStyle(color: HexColor("5E5E5E"),fontSize: 20,fontWeight: FontWeight.bold)),margin: EdgeInsets.all(10),),
            Container(child: Text('Toplanan veri türleriyle ve gizlilik bilgileri bölümünde görüntülenen farklı kullanım alanlarıyla ilgili açıklamaların yer aldığı listeyi inceleyebilirsiniz. \n Uygulamanın, farklı veri toplama prosedürlerine uyan birden fazla kullanım senaryosu varsa gizlilik bilgileri bölümünde tüm prosedürler ve bu prosedürlerde verilerin nasıl kullanıldığı sunulmalıdır. Örneğin, uygulamanın ücretli ve ücretsiz sürümlerinde farklı veri toplama prosedürleri kullanılıyorsa her iki durumda toplanan veri türlerinin tamamı belirtilmelidir. Ayrıca uygulamanın yalnızca çocuklara yönelik sürümüyle yetişkin sürümü arasında farklılıklar, değişik bölgelerde veri toplanmasıyla ilgili farklılıklar ve uygulamayı kullanım şeklinize bağlı başka farklılıklar olabilir. Uygulama geliştiricisinin gizlilik politikasında, veri toplama prosedürlerinin çeşitli durumlarda nasıl farklılaşabileceği hakkında daha ayrıntılı bilgi bulunabilir. \n Geliştirici, uygulamanın içinde sizden bilgi istiyorsa gizlilik bilgileri bölümünde bu verileri de açıklamalıdır. Verinin nadiren toplandığı ve veri toplama işleminin uygulamanın birincil işlevinin parçası olmadığı, hangi verilerin toplandığının kullanıcı deneyimi sırasında net bir şekilde anlaşıldığı, hesap bilgilerinizin veya adınızın belirgin biçimde göründüğü ve bilgileri paylaşmayı net olarak seçtiğiniz sınırlı durumlarda geliştirici, toplanan veri türünü açıklamamayı tercih edebilir. Ayrıca uygulamaların, uygulama içi satın alma işlemlerinde kullanılan ödeme bilgileri veya Uygulama Analizi gibi yalnızca Anonim tarafından toplanan bilgileri beyan etmesi gerekmez. Uygulamaların, düzenlemeye tabi finansal servisleri kolaylaştırdıkları ve veri toplama faaliyetinin belirli koşulları karşıladığı veya etik inceleme kurulu tarafından incelenmiş bir sağlık araştırması gibi veri toplama faaliyetinin bilgilendirilmiş onay gerektirdiği durumlarda da toplanan verileri beyan etmeleri gerekmez.', style: TextStyle(color: HexColor("5E5E5E")),),margin: EdgeInsets.all(10),),
          ],
        ),

      ),
    );
  }
}
